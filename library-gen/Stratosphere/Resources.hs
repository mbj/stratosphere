{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

-- | See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resources-section-structure.html
--
-- The required Resources section declare the AWS resources that you want as
-- part of your stack, such as an Amazon EC2 instance or an Amazon S3 bucket.
-- You must declare each resource separately; however, you can specify multiple
-- resources of the same type. If you declare multiple resources, separate them
-- with commas.

module Stratosphere.Resources
     ( module X
     , Resource (..)
     , resource
     , resName
     , properties
     , deletionPolicy
     , resCreationPolicy
     , resUpdatePolicy
     , dependsOn
     , ResourceProperties (..)
     , DeletionPolicy (..)
     , Resources (..)
     ) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types
import Data.Maybe (catMaybes)
import qualified Data.Text as T
import GHC.Exts (IsList(..))
import GHC.Generics (Generic)

import Stratosphere.Resources.AccessKey as X
import Stratosphere.Resources.ApiGatewayAccount as X
import Stratosphere.Resources.ApiGatewayDeployment as X
import Stratosphere.Resources.ApiGatewayMethod as X
import Stratosphere.Resources.ApiGatewayModel as X
import Stratosphere.Resources.ApiGatewayResource as X
import Stratosphere.Resources.ApiGatewayRestApi as X
import Stratosphere.Resources.ApiGatewayStage as X
import Stratosphere.Resources.ApiGatewayUsagePlan as X
import Stratosphere.Resources.AutoScalingGroup as X
import Stratosphere.Resources.Bucket as X
import Stratosphere.Resources.CacheCluster as X
import Stratosphere.Resources.CacheSubnetGroup as X
import Stratosphere.Resources.DBInstance as X
import Stratosphere.Resources.DBParameterGroup as X
import Stratosphere.Resources.DBSecurityGroup as X
import Stratosphere.Resources.DBSecurityGroupIngress as X
import Stratosphere.Resources.DBSubnetGroup as X
import Stratosphere.Resources.DeliveryStream as X
import Stratosphere.Resources.DynamoDBTable as X
import Stratosphere.Resources.EC2Instance as X
import Stratosphere.Resources.EIP as X
import Stratosphere.Resources.EIPAssociation as X
import Stratosphere.Resources.EventsRule as X
import Stratosphere.Resources.Group as X
import Stratosphere.Resources.IAMRole as X
import Stratosphere.Resources.InstanceProfile as X
import Stratosphere.Resources.InternetGateway as X
import Stratosphere.Resources.KinesisStream as X
import Stratosphere.Resources.LambdaAlias as X
import Stratosphere.Resources.LambdaFunction as X
import Stratosphere.Resources.LambdaPermission as X
import Stratosphere.Resources.LambdaVersion as X
import Stratosphere.Resources.LaunchConfiguration as X
import Stratosphere.Resources.LifecycleHook as X
import Stratosphere.Resources.LoadBalancer as X
import Stratosphere.Resources.LogGroup as X
import Stratosphere.Resources.LogStream as X
import Stratosphere.Resources.ManagedPolicy as X
import Stratosphere.Resources.NatGateway as X
import Stratosphere.Resources.Policy as X
import Stratosphere.Resources.RecordSet as X
import Stratosphere.Resources.RecordSetGroup as X
import Stratosphere.Resources.Route as X
import Stratosphere.Resources.RouteTable as X
import Stratosphere.Resources.S3BucketPolicy as X
import Stratosphere.Resources.SNSSubscription as X
import Stratosphere.Resources.SNSTopic as X
import Stratosphere.Resources.SNSTopicPolicy as X
import Stratosphere.Resources.SQSQueue as X
import Stratosphere.Resources.SQSQueuePolicy as X
import Stratosphere.Resources.ScalingPolicy as X
import Stratosphere.Resources.ScheduledAction as X
import Stratosphere.Resources.SecurityGroup as X
import Stratosphere.Resources.SecurityGroupEgress as X
import Stratosphere.Resources.SecurityGroupIngress as X
import Stratosphere.Resources.Stack as X
import Stratosphere.Resources.Subnet as X
import Stratosphere.Resources.SubnetRouteTableAssociation as X
import Stratosphere.Resources.Trail as X
import Stratosphere.Resources.User as X
import Stratosphere.Resources.UserToGroupAddition as X
import Stratosphere.Resources.VPC as X
import Stratosphere.Resources.VPCEndpoint as X
import Stratosphere.Resources.VPCGatewayAttachment as X
import Stratosphere.Resources.Volume as X
import Stratosphere.Resources.VolumeAttachment as X

import Stratosphere.ResourceProperties.APIGatewayDeploymentStageDescription as X
import Stratosphere.ResourceProperties.APIGatewayDeploymentStageDescriptionMethodSetting as X
import Stratosphere.ResourceProperties.AccessLoggingPolicy as X
import Stratosphere.ResourceProperties.AliasTarget as X
import Stratosphere.ResourceProperties.ApiGatewayIntegration as X
import Stratosphere.ResourceProperties.ApiGatewayIntegrationResponse as X
import Stratosphere.ResourceProperties.ApiGatewayMethodResponse as X
import Stratosphere.ResourceProperties.ApiGatewayRestApiS3Location as X
import Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting as X
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage as X
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanQuotaSettings as X
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings as X
import Stratosphere.ResourceProperties.AppCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.AutoScalingBlockDeviceMapping as X
import Stratosphere.ResourceProperties.AutoScalingEBSBlockDevice as X
import Stratosphere.ResourceProperties.AutoScalingMetricsCollection as X
import Stratosphere.ResourceProperties.AutoScalingNotificationConfigurations as X
import Stratosphere.ResourceProperties.AutoScalingTags as X
import Stratosphere.ResourceProperties.ConnectionDrainingPolicy as X
import Stratosphere.ResourceProperties.ConnectionSettings as X
import Stratosphere.ResourceProperties.DynamoDBAttributeDefinition as X
import Stratosphere.ResourceProperties.DynamoDBGlobalSecondaryIndex as X
import Stratosphere.ResourceProperties.DynamoDBKeySchema as X
import Stratosphere.ResourceProperties.DynamoDBLocalSecondaryIndex as X
import Stratosphere.ResourceProperties.DynamoDBProjectionObject as X
import Stratosphere.ResourceProperties.DynamoDBProvisionedThroughput as X
import Stratosphere.ResourceProperties.DynamoDBStreamSpecification as X
import Stratosphere.ResourceProperties.EBSBlockDevice as X
import Stratosphere.ResourceProperties.EC2BlockDeviceMapping as X
import Stratosphere.ResourceProperties.EC2MountPoint as X
import Stratosphere.ResourceProperties.EC2SsmAssociationParameters as X
import Stratosphere.ResourceProperties.EC2SsmAssociations as X
import Stratosphere.ResourceProperties.ELBPolicy as X
import Stratosphere.ResourceProperties.HealthCheck as X
import Stratosphere.ResourceProperties.IAMPolicies as X
import Stratosphere.ResourceProperties.KinesisFirehoseBufferingHints as X
import Stratosphere.ResourceProperties.KinesisFirehoseCloudWatchLoggingOptions as X
import Stratosphere.ResourceProperties.KinesisFirehoseElasticsearchDestinationConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseElasticsearchRetryOptions as X
import Stratosphere.ResourceProperties.KinesisFirehoseRedshiftCopyCommand as X
import Stratosphere.ResourceProperties.KinesisFirehoseRedshiftDestinationConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseS3DestinationConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseS3EncryptionConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseS3KMSEncryptionConfig as X
import Stratosphere.ResourceProperties.LBCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.LambdaFunctionCode as X
import Stratosphere.ResourceProperties.LambdaFunctionVPCConfig as X
import Stratosphere.ResourceProperties.ListenerProperty as X
import Stratosphere.ResourceProperties.NameValuePair as X
import Stratosphere.ResourceProperties.NetworkInterface as X
import Stratosphere.ResourceProperties.PrivateIpAddressSpecification as X
import Stratosphere.ResourceProperties.RDSSecurityGroupRule as X
import Stratosphere.ResourceProperties.RecordSetGeoLocation as X
import Stratosphere.ResourceProperties.ResourceTag as X
import Stratosphere.ResourceProperties.S3CorsConfiguration as X
import Stratosphere.ResourceProperties.S3CorsConfigurationRule as X
import Stratosphere.ResourceProperties.S3LifecycleConfiguration as X
import Stratosphere.ResourceProperties.S3LifecycleRule as X
import Stratosphere.ResourceProperties.S3LifecycleRuleNoncurrentVersionTransition as X
import Stratosphere.ResourceProperties.S3LifecycleRuleTransition as X
import Stratosphere.ResourceProperties.S3LoggingConfiguration as X
import Stratosphere.ResourceProperties.S3NotificationConfiguration as X
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilter as X
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilterS3Key as X
import Stratosphere.ResourceProperties.S3NotificationConfigurationConfigFilterS3KeyRules as X
import Stratosphere.ResourceProperties.S3NotificationConfigurationLambdaConfiguration as X
import Stratosphere.ResourceProperties.S3NotificationConfigurationQueueConfiguration as X
import Stratosphere.ResourceProperties.S3NotificationConfigurationTopicConfiguration as X
import Stratosphere.ResourceProperties.S3ReplicationConfiguration as X
import Stratosphere.ResourceProperties.S3ReplicationConfigurationRule as X
import Stratosphere.ResourceProperties.S3ReplicationConfigurationRulesDestination as X
import Stratosphere.ResourceProperties.S3VersioningConfiguration as X
import Stratosphere.ResourceProperties.S3WebsiteConfiguration as X
import Stratosphere.ResourceProperties.S3WebsiteRedirectAllRequestsTo as X
import Stratosphere.ResourceProperties.S3WebsiteRedirectRule as X
import Stratosphere.ResourceProperties.S3WebsiteRoutingRuleCondition as X
import Stratosphere.ResourceProperties.S3WebsiteRoutingRules as X
import Stratosphere.ResourceProperties.SNSTopicSubscription as X
import Stratosphere.ResourceProperties.SQSRedrivePolicy as X
import Stratosphere.ResourceProperties.SecurityGroupEgressRule as X
import Stratosphere.ResourceProperties.SecurityGroupIngressRule as X
import Stratosphere.ResourceProperties.StepAdjustments as X
import Stratosphere.ResourceProperties.UserLoginProfile as X

import Stratosphere.ResourceAttributes.AutoScalingReplacingUpdate as X
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdate as X
import Stratosphere.ResourceAttributes.AutoScalingScheduledAction as X
import Stratosphere.ResourceAttributes.CreationPolicy as X
import Stratosphere.ResourceAttributes.ResourceSignal as X
import Stratosphere.ResourceAttributes.UpdatePolicy as X

import Stratosphere.Helpers
import Stratosphere.Values

data ResourceProperties
  = AccessKeyProperties AccessKey
  | ApiGatewayAccountProperties ApiGatewayAccount
  | ApiGatewayDeploymentProperties ApiGatewayDeployment
  | ApiGatewayMethodProperties ApiGatewayMethod
  | ApiGatewayModelProperties ApiGatewayModel
  | ApiGatewayResourceProperties ApiGatewayResource
  | ApiGatewayRestApiProperties ApiGatewayRestApi
  | ApiGatewayStageProperties ApiGatewayStage
  | ApiGatewayUsagePlanProperties ApiGatewayUsagePlan
  | AutoScalingGroupProperties AutoScalingGroup
  | BucketProperties Bucket
  | CacheClusterProperties CacheCluster
  | CacheSubnetGroupProperties CacheSubnetGroup
  | DBInstanceProperties DBInstance
  | DBParameterGroupProperties DBParameterGroup
  | DBSecurityGroupProperties DBSecurityGroup
  | DBSecurityGroupIngressProperties DBSecurityGroupIngress
  | DBSubnetGroupProperties DBSubnetGroup
  | DeliveryStreamProperties DeliveryStream
  | DynamoDBTableProperties DynamoDBTable
  | EC2InstanceProperties EC2Instance
  | EIPProperties EIP
  | EIPAssociationProperties EIPAssociation
  | EventsRuleProperties EventsRule
  | GroupProperties Group
  | IAMRoleProperties IAMRole
  | InstanceProfileProperties InstanceProfile
  | InternetGatewayProperties InternetGateway
  | KinesisStreamProperties KinesisStream
  | LambdaAliasProperties LambdaAlias
  | LambdaFunctionProperties LambdaFunction
  | LambdaPermissionProperties LambdaPermission
  | LambdaVersionProperties LambdaVersion
  | LaunchConfigurationProperties LaunchConfiguration
  | LifecycleHookProperties LifecycleHook
  | LoadBalancerProperties LoadBalancer
  | LogGroupProperties LogGroup
  | LogStreamProperties LogStream
  | ManagedPolicyProperties ManagedPolicy
  | NatGatewayProperties NatGateway
  | PolicyProperties Policy
  | RecordSetProperties RecordSet
  | RecordSetGroupProperties RecordSetGroup
  | RouteProperties Route
  | RouteTableProperties RouteTable
  | S3BucketPolicyProperties S3BucketPolicy
  | SNSSubscriptionProperties SNSSubscription
  | SNSTopicProperties SNSTopic
  | SNSTopicPolicyProperties SNSTopicPolicy
  | SQSQueueProperties SQSQueue
  | SQSQueuePolicyProperties SQSQueuePolicy
  | ScalingPolicyProperties ScalingPolicy
  | ScheduledActionProperties ScheduledAction
  | SecurityGroupProperties SecurityGroup
  | SecurityGroupEgressProperties SecurityGroupEgress
  | SecurityGroupIngressProperties SecurityGroupIngress
  | StackProperties Stack
  | SubnetProperties Subnet
  | SubnetRouteTableAssociationProperties SubnetRouteTableAssociation
  | TrailProperties Trail
  | UserProperties User
  | UserToGroupAdditionProperties UserToGroupAddition
  | VPCProperties VPC
  | VPCEndpointProperties VPCEndpoint
  | VPCGatewayAttachmentProperties VPCGatewayAttachment
  | VolumeProperties Volume
  | VolumeAttachmentProperties VolumeAttachment

  deriving (Show)

data DeletionPolicy
  = Delete
  | Retain
  | Snapshot
  deriving (Show, Generic)

instance ToJSON DeletionPolicy where
instance FromJSON DeletionPolicy where

data Resource =
  Resource
  { resourceResName :: T.Text
  , resourceProperties :: ResourceProperties
  , resourceDeletionPolicy :: Maybe DeletionPolicy
  , resourceResCreationPolicy :: Maybe CreationPolicy
  , resourceResUpdatePolicy :: Maybe UpdatePolicy
  , resourceDependsOn :: Maybe [T.Text]
  } deriving (Show)

instance ToRef Resource b where
  toRef r = Ref (resourceResName r)

-- | Convenient constructor for 'Resource' with required arguments.
resource
  :: T.Text -- ^ Logical name
  -> ResourceProperties
  -> Resource
resource rn rp =
  Resource
  { resourceResName = rn
  , resourceProperties = rp
  , resourceDeletionPolicy = Nothing
  , resourceResCreationPolicy = Nothing
  , resourceResUpdatePolicy = Nothing
  , resourceDependsOn = Nothing
  }

$(makeFields ''Resource)

resourceToJSON :: Resource -> Value
resourceToJSON (Resource _ props dp cp up deps) =
    object $ resourcePropertiesJSON props ++ catMaybes
    [ maybeField "DeletionPolicy" dp
    , maybeField "CreationPolicy" cp
    , maybeField "UpdatePolicy" up
    , maybeField "DependsOn" deps
    ]

resourcePropertiesJSON :: ResourceProperties -> [Pair]
resourcePropertiesJSON (AccessKeyProperties x) =
  [ "Type" .= ("AWS::IAM::AccessKey" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayAccountProperties x) =
  [ "Type" .= ("Api::Gateway::Account" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayDeploymentProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Deployment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayMethodProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Method" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayModelProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Model" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayResourceProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Resource" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayRestApiProperties x) =
  [ "Type" .= ("AWS::ApiGateway::RestApi" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayStageProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Stage" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayUsagePlanProperties x) =
  [ "Type" .= ("AWS::ApiGateway::UsagePlan" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (AutoScalingGroupProperties x) =
  [ "Type" .= ("AWS::AutoScaling::AutoScalingGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (BucketProperties x) =
  [ "Type" .= ("AWS::S3::Bucket" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CacheClusterProperties x) =
  [ "Type" .= ("AWS::ElastiCache::CacheCluster" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CacheSubnetGroupProperties x) =
  [ "Type" .= ("AWS::ElastiCache::SubnetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBInstanceProperties x) =
  [ "Type" .= ("AWS::RDS::DBInstance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBParameterGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBParameterGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBSecurityGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBSecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBSecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::RDS::DBSecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBSubnetGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBSubnetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DeliveryStreamProperties x) =
  [ "Type" .= ("AWS::KinesisFirehose::DeliveryStream" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DynamoDBTableProperties x) =
  [ "Type" .= ("AWS::DynamoDB::Table" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2InstanceProperties x) =
  [ "Type" .= ("AWS::EC2::Instance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EIPProperties x) =
  [ "Type" .= ("AWS::EC2::EIP" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EIPAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::EIPAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EventsRuleProperties x) =
  [ "Type" .= ("AWS::Events::Rule" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (GroupProperties x) =
  [ "Type" .= ("AWS::IAM::Group" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMRoleProperties x) =
  [ "Type" .= ("AWS::IAM::Role" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (InstanceProfileProperties x) =
  [ "Type" .= ("AWS::IAM::InstanceProfile" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (InternetGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::InternetGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (KinesisStreamProperties x) =
  [ "Type" .= ("AWS::Kinesis::Stream" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaAliasProperties x) =
  [ "Type" .= ("AWS::Lambda::Alias" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaFunctionProperties x) =
  [ "Type" .= ("AWS::Lambda::Function" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaPermissionProperties x) =
  [ "Type" .= ("AWS::Lambda::Permission" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaVersionProperties x) =
  [ "Type" .= ("AWS::Lambda::Version" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LaunchConfigurationProperties x) =
  [ "Type" .= ("AWS::AutoScaling::LaunchConfiguration" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LifecycleHookProperties x) =
  [ "Type" .= ("AWS::AutoScaling::LifecycleHook" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LoadBalancerProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancing::LoadBalancer" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogGroupProperties x) =
  [ "Type" .= ("AWS::Logs::LogGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogStreamProperties x) =
  [ "Type" .= ("AWS::Logs::LogStream" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ManagedPolicyProperties x) =
  [ "Type" .= ("AWS::IAM::ManagedPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (NatGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::NatGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (PolicyProperties x) =
  [ "Type" .= ("AWS::IAM::Policy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RecordSetProperties x) =
  [ "Type" .= ("AWS::Route53::RecordSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RecordSetGroupProperties x) =
  [ "Type" .= ("AWS::Route53::RecordSetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RouteProperties x) =
  [ "Type" .= ("AWS::EC2::Route" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RouteTableProperties x) =
  [ "Type" .= ("AWS::EC2::RouteTable" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (S3BucketPolicyProperties x) =
  [ "Type" .= ("AWS::S3::BucketPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SNSSubscriptionProperties x) =
  [ "Type" .= ("AWS::SNS::Subscription" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SNSTopicProperties x) =
  [ "Type" .= ("AWS::SNS::Topic" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SNSTopicPolicyProperties x) =
  [ "Type" .= ("AWS::SNS::TopicPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SQSQueueProperties x) =
  [ "Type" .= ("AWS::SQS::Queue" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SQSQueuePolicyProperties x) =
  [ "Type" .= ("AWS::SQS::QueuePolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ScalingPolicyProperties x) =
  [ "Type" .= ("AWS::AutoScaling::ScalingPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ScheduledActionProperties x) =
  [ "Type" .= ("AWS::AutoScaling::ScheduledAction" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SecurityGroupProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SecurityGroupEgressProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroupEgress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (StackProperties x) =
  [ "Type" .= ("AWS::CloudFormation::Stack" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SubnetProperties x) =
  [ "Type" .= ("AWS::EC2::Subnet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SubnetRouteTableAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::SubnetRouteTableAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (TrailProperties x) =
  [ "Type" .= ("AWS::CloudTrail::Trail" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (UserProperties x) =
  [ "Type" .= ("AWS::IAM::User" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (UserToGroupAdditionProperties x) =
  [ "Type" .= ("AWS::IAM::UserToGroupAddition" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VPCProperties x) =
  [ "Type" .= ("AWS::EC2::VPC" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VPCEndpointProperties x) =
  [ "Type" .= ("AWS::EC2::VPCEndpoint" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VPCGatewayAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VPCGatewayAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VolumeProperties x) =
  [ "Type" .= ("AWS::EC2::Volume" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VolumeAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VolumeAttachment" :: String), "Properties" .= toJSON x]


resourceFromJSON :: T.Text -> Object -> Parser Resource
resourceFromJSON n o =
    do type' <- o .: "Type" :: Parser String
       props <- case type' of
         "AWS::IAM::AccessKey" -> AccessKeyProperties <$> (o .: "Properties")
         "Api::Gateway::Account" -> ApiGatewayAccountProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Deployment" -> ApiGatewayDeploymentProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Method" -> ApiGatewayMethodProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Model" -> ApiGatewayModelProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Resource" -> ApiGatewayResourceProperties <$> (o .: "Properties")
         "AWS::ApiGateway::RestApi" -> ApiGatewayRestApiProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Stage" -> ApiGatewayStageProperties <$> (o .: "Properties")
         "AWS::ApiGateway::UsagePlan" -> ApiGatewayUsagePlanProperties <$> (o .: "Properties")
         "AWS::AutoScaling::AutoScalingGroup" -> AutoScalingGroupProperties <$> (o .: "Properties")
         "AWS::S3::Bucket" -> BucketProperties <$> (o .: "Properties")
         "AWS::ElastiCache::CacheCluster" -> CacheClusterProperties <$> (o .: "Properties")
         "AWS::ElastiCache::SubnetGroup" -> CacheSubnetGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBInstance" -> DBInstanceProperties <$> (o .: "Properties")
         "AWS::RDS::DBParameterGroup" -> DBParameterGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBSecurityGroup" -> DBSecurityGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBSecurityGroupIngress" -> DBSecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::RDS::DBSubnetGroup" -> DBSubnetGroupProperties <$> (o .: "Properties")
         "AWS::KinesisFirehose::DeliveryStream" -> DeliveryStreamProperties <$> (o .: "Properties")
         "AWS::DynamoDB::Table" -> DynamoDBTableProperties <$> (o .: "Properties")
         "AWS::EC2::Instance" -> EC2InstanceProperties <$> (o .: "Properties")
         "AWS::EC2::EIP" -> EIPProperties <$> (o .: "Properties")
         "AWS::EC2::EIPAssociation" -> EIPAssociationProperties <$> (o .: "Properties")
         "AWS::Events::Rule" -> EventsRuleProperties <$> (o .: "Properties")
         "AWS::IAM::Group" -> GroupProperties <$> (o .: "Properties")
         "AWS::IAM::Role" -> IAMRoleProperties <$> (o .: "Properties")
         "AWS::IAM::InstanceProfile" -> InstanceProfileProperties <$> (o .: "Properties")
         "AWS::EC2::InternetGateway" -> InternetGatewayProperties <$> (o .: "Properties")
         "AWS::Kinesis::Stream" -> KinesisStreamProperties <$> (o .: "Properties")
         "AWS::Lambda::Alias" -> LambdaAliasProperties <$> (o .: "Properties")
         "AWS::Lambda::Function" -> LambdaFunctionProperties <$> (o .: "Properties")
         "AWS::Lambda::Permission" -> LambdaPermissionProperties <$> (o .: "Properties")
         "AWS::Lambda::Version" -> LambdaVersionProperties <$> (o .: "Properties")
         "AWS::AutoScaling::LaunchConfiguration" -> LaunchConfigurationProperties <$> (o .: "Properties")
         "AWS::AutoScaling::LifecycleHook" -> LifecycleHookProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancing::LoadBalancer" -> LoadBalancerProperties <$> (o .: "Properties")
         "AWS::Logs::LogGroup" -> LogGroupProperties <$> (o .: "Properties")
         "AWS::Logs::LogStream" -> LogStreamProperties <$> (o .: "Properties")
         "AWS::IAM::ManagedPolicy" -> ManagedPolicyProperties <$> (o .: "Properties")
         "AWS::EC2::NatGateway" -> NatGatewayProperties <$> (o .: "Properties")
         "AWS::IAM::Policy" -> PolicyProperties <$> (o .: "Properties")
         "AWS::Route53::RecordSet" -> RecordSetProperties <$> (o .: "Properties")
         "AWS::Route53::RecordSetGroup" -> RecordSetGroupProperties <$> (o .: "Properties")
         "AWS::EC2::Route" -> RouteProperties <$> (o .: "Properties")
         "AWS::EC2::RouteTable" -> RouteTableProperties <$> (o .: "Properties")
         "AWS::S3::BucketPolicy" -> S3BucketPolicyProperties <$> (o .: "Properties")
         "AWS::SNS::Subscription" -> SNSSubscriptionProperties <$> (o .: "Properties")
         "AWS::SNS::Topic" -> SNSTopicProperties <$> (o .: "Properties")
         "AWS::SNS::TopicPolicy" -> SNSTopicPolicyProperties <$> (o .: "Properties")
         "AWS::SQS::Queue" -> SQSQueueProperties <$> (o .: "Properties")
         "AWS::SQS::QueuePolicy" -> SQSQueuePolicyProperties <$> (o .: "Properties")
         "AWS::AutoScaling::ScalingPolicy" -> ScalingPolicyProperties <$> (o .: "Properties")
         "AWS::AutoScaling::ScheduledAction" -> ScheduledActionProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroup" -> SecurityGroupProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroupEgress" -> SecurityGroupEgressProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroupIngress" -> SecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::CloudFormation::Stack" -> StackProperties <$> (o .: "Properties")
         "AWS::EC2::Subnet" -> SubnetProperties <$> (o .: "Properties")
         "AWS::EC2::SubnetRouteTableAssociation" -> SubnetRouteTableAssociationProperties <$> (o .: "Properties")
         "AWS::CloudTrail::Trail" -> TrailProperties <$> (o .: "Properties")
         "AWS::IAM::User" -> UserProperties <$> (o .: "Properties")
         "AWS::IAM::UserToGroupAddition" -> UserToGroupAdditionProperties <$> (o .: "Properties")
         "AWS::EC2::VPC" -> VPCProperties <$> (o .: "Properties")
         "AWS::EC2::VPCEndpoint" -> VPCEndpointProperties <$> (o .: "Properties")
         "AWS::EC2::VPCGatewayAttachment" -> VPCGatewayAttachmentProperties <$> (o .: "Properties")
         "AWS::EC2::Volume" -> VolumeProperties <$> (o .: "Properties")
         "AWS::EC2::VolumeAttachment" -> VolumeAttachmentProperties <$> (o .: "Properties")

         _ -> fail $ "Unknown resource type: " ++ type'
       dp <- o .:? "DeletionPolicy"
       cp <- o .:? "CreationPolicy"
       up <- o .:? "UpdatePolicy"
       deps <- o .:? "DependsOn"
       return $ Resource n props dp cp up deps

-- | Wrapper around a list of 'Resources's to we can modify the aeson
-- instances.
newtype Resources = Resources { unResources :: [Resource] }
                  deriving (Show, Monoid)

instance IsList Resources where
  type Item Resources = Resource
  fromList = Resources
  toList = unResources

instance NamedItem Resource where
  itemName = resourceResName
  nameToJSON = resourceToJSON
  nameParseJSON = resourceFromJSON

instance ToJSON Resources where
  toJSON = namedItemToJSON . unResources

instance FromJSON Resources where
  parseJSON v = Resources <$> namedItemFromJSON v
