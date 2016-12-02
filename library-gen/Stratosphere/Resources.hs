{-# LANGUAGE CPP #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

#if MIN_VERSION_GLASGOW_HASKELL(8,0,1,0)
{-# OPTIONS_GHC -fmax-pmcheck-iterations=10000000 #-}
#endif

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

import Stratosphere.Resources.ApiGatewayAccount as X
import Stratosphere.Resources.ApiGatewayApiKey as X
import Stratosphere.Resources.ApiGatewayAuthorizer as X
import Stratosphere.Resources.ApiGatewayBasePathMapping as X
import Stratosphere.Resources.ApiGatewayClientCertificate as X
import Stratosphere.Resources.ApiGatewayDeployment as X
import Stratosphere.Resources.ApiGatewayMethod as X
import Stratosphere.Resources.ApiGatewayModel as X
import Stratosphere.Resources.ApiGatewayResource as X
import Stratosphere.Resources.ApiGatewayRestApi as X
import Stratosphere.Resources.ApiGatewayStage as X
import Stratosphere.Resources.ApiGatewayUsagePlan as X
import Stratosphere.Resources.ApplicationAutoScalingScalableTarget as X
import Stratosphere.Resources.ApplicationAutoScalingScalingPolicy as X
import Stratosphere.Resources.AutoScalingAutoScalingGroup as X
import Stratosphere.Resources.AutoScalingLaunchConfiguration as X
import Stratosphere.Resources.AutoScalingLifecycleHook as X
import Stratosphere.Resources.AutoScalingScalingPolicy as X
import Stratosphere.Resources.AutoScalingScheduledAction as X
import Stratosphere.Resources.CertificateManagerCertificate as X
import Stratosphere.Resources.CloudFormationCustomResource as X
import Stratosphere.Resources.CloudFormationStack as X
import Stratosphere.Resources.CloudFormationWaitCondition as X
import Stratosphere.Resources.CloudFormationWaitConditionHandle as X
import Stratosphere.Resources.CloudFrontDistribution as X
import Stratosphere.Resources.CloudTrailTrail as X
import Stratosphere.Resources.CloudWatchAlarm as X
import Stratosphere.Resources.CodeCommitRepository as X
import Stratosphere.Resources.CodeDeployApplication as X
import Stratosphere.Resources.CodeDeployDeploymentConfig as X
import Stratosphere.Resources.CodeDeployDeploymentGroup as X
import Stratosphere.Resources.CodePipelineCustomActionType as X
import Stratosphere.Resources.CodePipelinePipeline as X
import Stratosphere.Resources.ConfigConfigRule as X
import Stratosphere.Resources.ConfigConfigurationRecorder as X
import Stratosphere.Resources.ConfigDeliveryChannel as X
import Stratosphere.Resources.DataPipelinePipeline as X
import Stratosphere.Resources.DirectoryServiceMicrosoftAD as X
import Stratosphere.Resources.DirectoryServiceSimpleAD as X
import Stratosphere.Resources.DynamoDBTable as X
import Stratosphere.Resources.EC2CustomerGateway as X
import Stratosphere.Resources.EC2DHCPOptions as X
import Stratosphere.Resources.EC2EIP as X
import Stratosphere.Resources.EC2EIPAssociation as X
import Stratosphere.Resources.EC2FlowLog as X
import Stratosphere.Resources.EC2Host as X
import Stratosphere.Resources.EC2Instance as X
import Stratosphere.Resources.EC2InternetGateway as X
import Stratosphere.Resources.EC2NatGateway as X
import Stratosphere.Resources.EC2NetworkAcl as X
import Stratosphere.Resources.EC2NetworkAclEntry as X
import Stratosphere.Resources.EC2NetworkInterface as X
import Stratosphere.Resources.EC2NetworkInterfaceAttachment as X
import Stratosphere.Resources.EC2PlacementGroup as X
import Stratosphere.Resources.EC2Route as X
import Stratosphere.Resources.EC2RouteTable as X
import Stratosphere.Resources.EC2SecurityGroup as X
import Stratosphere.Resources.EC2SecurityGroupEgress as X
import Stratosphere.Resources.EC2SecurityGroupIngress as X
import Stratosphere.Resources.EC2SpotFleet as X
import Stratosphere.Resources.EC2Subnet as X
import Stratosphere.Resources.EC2SubnetNetworkAclAssociation as X
import Stratosphere.Resources.EC2SubnetRouteTableAssociation as X
import Stratosphere.Resources.EC2VPC as X
import Stratosphere.Resources.EC2VPCDHCPOptionsAssociation as X
import Stratosphere.Resources.EC2VPCEndpoint as X
import Stratosphere.Resources.EC2VPCGatewayAttachment as X
import Stratosphere.Resources.EC2VPCPeeringConnection as X
import Stratosphere.Resources.EC2VPNConnection as X
import Stratosphere.Resources.EC2VPNConnectionRoute as X
import Stratosphere.Resources.EC2VPNGateway as X
import Stratosphere.Resources.EC2VPNGatewayRoutePropagation as X
import Stratosphere.Resources.EC2Volume as X
import Stratosphere.Resources.EC2VolumeAttachment as X
import Stratosphere.Resources.ECRRepository as X
import Stratosphere.Resources.ECSCluster as X
import Stratosphere.Resources.ECSService as X
import Stratosphere.Resources.ECSTaskDefinition as X
import Stratosphere.Resources.EFSFileSystem as X
import Stratosphere.Resources.EFSMountTarget as X
import Stratosphere.Resources.EMRCluster as X
import Stratosphere.Resources.EMRInstanceGroupConfig as X
import Stratosphere.Resources.EMRStep as X
import Stratosphere.Resources.ElastiCacheCacheCluster as X
import Stratosphere.Resources.ElastiCacheParameterGroup as X
import Stratosphere.Resources.ElastiCacheReplicationGroup as X
import Stratosphere.Resources.ElastiCacheSecurityGroup as X
import Stratosphere.Resources.ElastiCacheSecurityGroupIngress as X
import Stratosphere.Resources.ElastiCacheSubnetGroup as X
import Stratosphere.Resources.ElasticBeanstalkApplication as X
import Stratosphere.Resources.ElasticBeanstalkApplicationVersion as X
import Stratosphere.Resources.ElasticBeanstalkConfigurationTemplate as X
import Stratosphere.Resources.ElasticBeanstalkEnvironment as X
import Stratosphere.Resources.ElasticLoadBalancingLoadBalancer as X
import Stratosphere.Resources.ElasticLoadBalancingV2Listener as X
import Stratosphere.Resources.ElasticLoadBalancingV2ListenerRule as X
import Stratosphere.Resources.ElasticLoadBalancingV2LoadBalancer as X
import Stratosphere.Resources.ElasticLoadBalancingV2TargetGroup as X
import Stratosphere.Resources.ElasticsearchDomain as X
import Stratosphere.Resources.EventsRule as X
import Stratosphere.Resources.GameLiftAlias as X
import Stratosphere.Resources.GameLiftBuild as X
import Stratosphere.Resources.GameLiftFleet as X
import Stratosphere.Resources.IAMAccessKey as X
import Stratosphere.Resources.IAMGroup as X
import Stratosphere.Resources.IAMInstanceProfile as X
import Stratosphere.Resources.IAMManagedPolicy as X
import Stratosphere.Resources.IAMPolicy as X
import Stratosphere.Resources.IAMRole as X
import Stratosphere.Resources.IAMUser as X
import Stratosphere.Resources.IAMUserToGroupAddition as X
import Stratosphere.Resources.IoTCertificate as X
import Stratosphere.Resources.IoTPolicy as X
import Stratosphere.Resources.IoTPolicyPrincipalAttachment as X
import Stratosphere.Resources.IoTThing as X
import Stratosphere.Resources.IoTThingPrincipalAttachment as X
import Stratosphere.Resources.IoTTopicRule as X
import Stratosphere.Resources.KMSAlias as X
import Stratosphere.Resources.KMSKey as X
import Stratosphere.Resources.KinesisStream as X
import Stratosphere.Resources.KinesisFirehoseDeliveryStream as X
import Stratosphere.Resources.LambdaAlias as X
import Stratosphere.Resources.LambdaEventSourceMapping as X
import Stratosphere.Resources.LambdaFunction as X
import Stratosphere.Resources.LambdaPermission as X
import Stratosphere.Resources.LambdaVersion as X
import Stratosphere.Resources.LogsDestination as X
import Stratosphere.Resources.LogsLogGroup as X
import Stratosphere.Resources.LogsLogStream as X
import Stratosphere.Resources.LogsMetricFilter as X
import Stratosphere.Resources.LogsSubscriptionFilter as X
import Stratosphere.Resources.OpsWorksApp as X
import Stratosphere.Resources.OpsWorksElasticLoadBalancerAttachment as X
import Stratosphere.Resources.OpsWorksInstance as X
import Stratosphere.Resources.OpsWorksLayer as X
import Stratosphere.Resources.OpsWorksStack as X
import Stratosphere.Resources.OpsWorksUserProfile as X
import Stratosphere.Resources.OpsWorksVolume as X
import Stratosphere.Resources.RDSDBCluster as X
import Stratosphere.Resources.RDSDBClusterParameterGroup as X
import Stratosphere.Resources.RDSDBInstance as X
import Stratosphere.Resources.RDSDBParameterGroup as X
import Stratosphere.Resources.RDSDBSecurityGroup as X
import Stratosphere.Resources.RDSDBSecurityGroupIngress as X
import Stratosphere.Resources.RDSDBSubnetGroup as X
import Stratosphere.Resources.RDSEventSubscription as X
import Stratosphere.Resources.RDSOptionGroup as X
import Stratosphere.Resources.RedshiftCluster as X
import Stratosphere.Resources.RedshiftClusterParameterGroup as X
import Stratosphere.Resources.RedshiftClusterSecurityGroup as X
import Stratosphere.Resources.RedshiftClusterSecurityGroupIngress as X
import Stratosphere.Resources.RedshiftClusterSubnetGroup as X
import Stratosphere.Resources.Route53HealthCheck as X
import Stratosphere.Resources.Route53HostedZone as X
import Stratosphere.Resources.Route53RecordSet as X
import Stratosphere.Resources.Route53RecordSetGroup as X
import Stratosphere.Resources.S3Bucket as X
import Stratosphere.Resources.S3BucketPolicy as X
import Stratosphere.Resources.SDBDomain as X
import Stratosphere.Resources.SNSSubscription as X
import Stratosphere.Resources.SNSTopic as X
import Stratosphere.Resources.SNSTopicPolicy as X
import Stratosphere.Resources.SQSQueue as X
import Stratosphere.Resources.SQSQueuePolicy as X
import Stratosphere.Resources.SSMDocument as X
import Stratosphere.Resources.WAFByteMatchSet as X
import Stratosphere.Resources.WAFIPSet as X
import Stratosphere.Resources.WAFRule as X
import Stratosphere.Resources.WAFSizeConstraintSet as X
import Stratosphere.Resources.WAFSqlInjectionMatchSet as X
import Stratosphere.Resources.WAFWebACL as X
import Stratosphere.Resources.WAFXssMatchSet as X
import Stratosphere.Resources.WorkSpacesWorkspace as X
import Stratosphere.ResourceProperties.ApiGatewayApiKeyStageKey as X
import Stratosphere.ResourceProperties.ApiGatewayDeploymentMethodSetting as X
import Stratosphere.ResourceProperties.ApiGatewayDeploymentStageDescription as X
import Stratosphere.ResourceProperties.ApiGatewayMethodIntegration as X
import Stratosphere.ResourceProperties.ApiGatewayMethodIntegrationResponse as X
import Stratosphere.ResourceProperties.ApiGatewayMethodMethodResponse as X
import Stratosphere.ResourceProperties.ApiGatewayRestApiS3Location as X
import Stratosphere.ResourceProperties.ApiGatewayStageMethodSetting as X
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanApiStage as X
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanQuotaSettings as X
import Stratosphere.ResourceProperties.ApiGatewayUsagePlanThrottleSettings as X
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyStepAdjustment as X
import Stratosphere.ResourceProperties.ApplicationAutoScalingScalingPolicyStepScalingPolicyConfiguration as X
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupMetricsCollection as X
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupNotificationConfigurations as X
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupTagProperty as X
import Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDevice as X
import Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDeviceMapping as X
import Stratosphere.ResourceProperties.AutoScalingScalingPolicyStepAdjustment as X
import Stratosphere.ResourceProperties.CertificateManagerCertificateDomainValidationOption as X
import Stratosphere.ResourceProperties.CloudFrontDistributionCacheBehavior as X
import Stratosphere.ResourceProperties.CloudFrontDistributionCookies as X
import Stratosphere.ResourceProperties.CloudFrontDistributionCustomErrorResponse as X
import Stratosphere.ResourceProperties.CloudFrontDistributionCustomOriginConfig as X
import Stratosphere.ResourceProperties.CloudFrontDistributionDefaultCacheBehavior as X
import Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig as X
import Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues as X
import Stratosphere.ResourceProperties.CloudFrontDistributionGeoRestriction as X
import Stratosphere.ResourceProperties.CloudFrontDistributionLogging as X
import Stratosphere.ResourceProperties.CloudFrontDistributionOrigin as X
import Stratosphere.ResourceProperties.CloudFrontDistributionOriginCustomHeader as X
import Stratosphere.ResourceProperties.CloudFrontDistributionRestrictions as X
import Stratosphere.ResourceProperties.CloudFrontDistributionS3OriginConfig as X
import Stratosphere.ResourceProperties.CloudFrontDistributionViewerCertificate as X
import Stratosphere.ResourceProperties.CloudWatchAlarmDimension as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentConfigMinimumHealthyHosts as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeployment as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupEc2TagFilter as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupGitHubLocation as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupOnPremisesInstanceTagFilter as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupRevision as X
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupS3Location as X
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeArtifactDetails as X
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeConfigurationProperties as X
import Stratosphere.ResourceProperties.CodePipelineCustomActionTypeSettings as X
import Stratosphere.ResourceProperties.CodePipelinePipelineActionDeclaration as X
import Stratosphere.ResourceProperties.CodePipelinePipelineActionTypeId as X
import Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStore as X
import Stratosphere.ResourceProperties.CodePipelinePipelineBlockerDeclaration as X
import Stratosphere.ResourceProperties.CodePipelinePipelineEncryptionKey as X
import Stratosphere.ResourceProperties.CodePipelinePipelineInputArtifact as X
import Stratosphere.ResourceProperties.CodePipelinePipelineOutputArtifact as X
import Stratosphere.ResourceProperties.CodePipelinePipelineStageDeclaration as X
import Stratosphere.ResourceProperties.CodePipelinePipelineStageTransition as X
import Stratosphere.ResourceProperties.ConfigConfigRuleScope as X
import Stratosphere.ResourceProperties.ConfigConfigRuleSource as X
import Stratosphere.ResourceProperties.ConfigConfigRuleSourceDetail as X
import Stratosphere.ResourceProperties.ConfigConfigurationRecorderRecordingGroup as X
import Stratosphere.ResourceProperties.ConfigDeliveryChannelConfigSnapshotDeliveryProperties as X
import Stratosphere.ResourceProperties.DataPipelinePipelineField as X
import Stratosphere.ResourceProperties.DataPipelinePipelineParameterAttribute as X
import Stratosphere.ResourceProperties.DataPipelinePipelineParameterObject as X
import Stratosphere.ResourceProperties.DataPipelinePipelineParameterValue as X
import Stratosphere.ResourceProperties.DataPipelinePipelinePipelineObject as X
import Stratosphere.ResourceProperties.DataPipelinePipelinePipelineTag as X
import Stratosphere.ResourceProperties.DirectoryServiceMicrosoftADVpcSettings as X
import Stratosphere.ResourceProperties.DirectoryServiceSimpleADVpcSettings as X
import Stratosphere.ResourceProperties.DynamoDBTableAttributeDefinition as X
import Stratosphere.ResourceProperties.DynamoDBTableGlobalSecondaryIndex as X
import Stratosphere.ResourceProperties.DynamoDBTableKeySchema as X
import Stratosphere.ResourceProperties.DynamoDBTableLocalSecondaryIndex as X
import Stratosphere.ResourceProperties.DynamoDBTableProjection as X
import Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput as X
import Stratosphere.ResourceProperties.DynamoDBTableStreamSpecification as X
import Stratosphere.ResourceProperties.EC2DHCPOptionsTag as X
import Stratosphere.ResourceProperties.EC2InstanceAssociationParameter as X
import Stratosphere.ResourceProperties.EC2InstanceBlockDeviceMapping as X
import Stratosphere.ResourceProperties.EC2InstanceEbs as X
import Stratosphere.ResourceProperties.EC2InstanceNetworkInterface as X
import Stratosphere.ResourceProperties.EC2InstanceNoDevice as X
import Stratosphere.ResourceProperties.EC2InstancePrivateIpAddressSpecification as X
import Stratosphere.ResourceProperties.EC2InstanceSsmAssociation as X
import Stratosphere.ResourceProperties.EC2InstanceVolume as X
import Stratosphere.ResourceProperties.EC2NetworkAclEntryIcmp as X
import Stratosphere.ResourceProperties.EC2NetworkAclEntryPortRange as X
import Stratosphere.ResourceProperties.EC2NetworkInterfacePrivateIpAddressSpecification as X
import Stratosphere.ResourceProperties.EC2SecurityGroupRule as X
import Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetRequestConfigData as X
import Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration as X
import Stratosphere.ResourceProperties.ECSServiceLoadBalancer as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionContainerDefinition as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionHostEntry as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionHostVolumeProperties as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionKeyValuePair as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionLogConfiguration as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionMountPoint as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionPortMapping as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionUlimit as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionVolume as X
import Stratosphere.ResourceProperties.ECSTaskDefinitionVolumeFrom as X
import Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag as X
import Stratosphere.ResourceProperties.EMRClusterApplication as X
import Stratosphere.ResourceProperties.EMRClusterBootstrapActionConfig as X
import Stratosphere.ResourceProperties.EMRClusterConfiguration as X
import Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig as X
import Stratosphere.ResourceProperties.EMRClusterEbsConfiguration as X
import Stratosphere.ResourceProperties.EMRClusterInstanceGroupConfig as X
import Stratosphere.ResourceProperties.EMRClusterJobFlowInstancesConfig as X
import Stratosphere.ResourceProperties.EMRClusterPlacementType as X
import Stratosphere.ResourceProperties.EMRClusterScriptBootstrapActionConfig as X
import Stratosphere.ResourceProperties.EMRClusterVolumeSpecification as X
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigConfiguration as X
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsBlockDeviceConfig as X
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsConfiguration as X
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigVolumeSpecification as X
import Stratosphere.ResourceProperties.EMRStepHadoopJarStepConfig as X
import Stratosphere.ResourceProperties.EMRStepKeyValue as X
import Stratosphere.ResourceProperties.ElastiCacheReplicationGroupNodeGroupConfiguration as X
import Stratosphere.ResourceProperties.ElasticBeanstalkApplicationVersionSourceBundle as X
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateConfigurationOptionSetting as X
import Stratosphere.ResourceProperties.ElasticBeanstalkConfigurationTemplateSourceConfiguration as X
import Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentOptionSettings as X
import Stratosphere.ResourceProperties.ElasticBeanstalkEnvironmentTier as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAccessLoggingPolicy as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionSettings as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerHealthCheck as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerListeners as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerPolicies as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAction as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificate as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAction as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRuleCondition as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2TargetGroupMatcher as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2TargetGroupTargetDescription as X
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2TargetGroupTargetGroupAttribute as X
import Stratosphere.ResourceProperties.ElasticsearchDomainEBSOptions as X
import Stratosphere.ResourceProperties.ElasticsearchDomainElasticsearchClusterConfig as X
import Stratosphere.ResourceProperties.ElasticsearchDomainSnapshotOptions as X
import Stratosphere.ResourceProperties.EventsRuleTarget as X
import Stratosphere.ResourceProperties.GameLiftAliasRoutingStrategy as X
import Stratosphere.ResourceProperties.GameLiftBuildS3Location as X
import Stratosphere.ResourceProperties.GameLiftFleetIpPermission as X
import Stratosphere.ResourceProperties.IAMGroupPolicy as X
import Stratosphere.ResourceProperties.IAMRolePolicy as X
import Stratosphere.ResourceProperties.IAMUserLoginProfile as X
import Stratosphere.ResourceProperties.IAMUserPolicy as X
import Stratosphere.ResourceProperties.IoTThingAttributePayload as X
import Stratosphere.ResourceProperties.IoTTopicRuleAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchAlarmAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleCloudwatchMetricAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleDynamoDBAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleElasticsearchAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleFirehoseAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleKinesisAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleLambdaAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleRepublishAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleS3Action as X
import Stratosphere.ResourceProperties.IoTTopicRuleSnsAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleSqsAction as X
import Stratosphere.ResourceProperties.IoTTopicRuleTopicRulePayload as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCopyCommand as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchBufferingHints as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchDestinationConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamElasticsearchRetryOptions as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamEncryptionConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamKMSEncryptionConfig as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRedshiftDestinationConfiguration as X
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration as X
import Stratosphere.ResourceProperties.LambdaFunctionCode as X
import Stratosphere.ResourceProperties.LambdaFunctionEnvironment as X
import Stratosphere.ResourceProperties.LambdaFunctionVpcConfig as X
import Stratosphere.ResourceProperties.LogsMetricFilterMetricTransformation as X
import Stratosphere.ResourceProperties.OpsWorksAppDataSource as X
import Stratosphere.ResourceProperties.OpsWorksAppEnvironmentVariable as X
import Stratosphere.ResourceProperties.OpsWorksAppSource as X
import Stratosphere.ResourceProperties.OpsWorksAppSslConfiguration as X
import Stratosphere.ResourceProperties.OpsWorksInstanceBlockDeviceMapping as X
import Stratosphere.ResourceProperties.OpsWorksInstanceEbsBlockDevice as X
import Stratosphere.ResourceProperties.OpsWorksInstanceTimeBasedAutoScaling as X
import Stratosphere.ResourceProperties.OpsWorksLayerAutoScalingThresholds as X
import Stratosphere.ResourceProperties.OpsWorksLayerLifecycleEventConfiguration as X
import Stratosphere.ResourceProperties.OpsWorksLayerLoadBasedAutoScaling as X
import Stratosphere.ResourceProperties.OpsWorksLayerRecipes as X
import Stratosphere.ResourceProperties.OpsWorksLayerShutdownEventConfiguration as X
import Stratosphere.ResourceProperties.OpsWorksLayerVolumeConfiguration as X
import Stratosphere.ResourceProperties.OpsWorksStackChefConfiguration as X
import Stratosphere.ResourceProperties.OpsWorksStackElasticIp as X
import Stratosphere.ResourceProperties.OpsWorksStackRdsDbInstance as X
import Stratosphere.ResourceProperties.OpsWorksStackSource as X
import Stratosphere.ResourceProperties.OpsWorksStackStackConfigurationManager as X
import Stratosphere.ResourceProperties.RDSDBSecurityGroupIngressProperty as X
import Stratosphere.ResourceProperties.RDSOptionGroupOptionConfiguration as X
import Stratosphere.ResourceProperties.RDSOptionGroupOptionSetting as X
import Stratosphere.ResourceProperties.RedshiftClusterParameterGroupParameter as X
import Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckConfig as X
import Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckTag as X
import Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneConfig as X
import Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneTag as X
import Stratosphere.ResourceProperties.Route53HostedZoneVPC as X
import Stratosphere.ResourceProperties.Route53RecordSetAliasTarget as X
import Stratosphere.ResourceProperties.Route53RecordSetGeoLocation as X
import Stratosphere.ResourceProperties.Route53RecordSetGroupAliasTarget as X
import Stratosphere.ResourceProperties.Route53RecordSetGroupGeoLocation as X
import Stratosphere.ResourceProperties.Route53RecordSetGroupRecordSet as X
import Stratosphere.ResourceProperties.S3BucketCorsConfiguration as X
import Stratosphere.ResourceProperties.S3BucketCorsRule as X
import Stratosphere.ResourceProperties.S3BucketFilterRule as X
import Stratosphere.ResourceProperties.S3BucketLambdaConfiguration as X
import Stratosphere.ResourceProperties.S3BucketLifecycleConfiguration as X
import Stratosphere.ResourceProperties.S3BucketLoggingConfiguration as X
import Stratosphere.ResourceProperties.S3BucketNoncurrentVersionTransition as X
import Stratosphere.ResourceProperties.S3BucketNotificationConfiguration as X
import Stratosphere.ResourceProperties.S3BucketNotificationFilter as X
import Stratosphere.ResourceProperties.S3BucketQueueConfiguration as X
import Stratosphere.ResourceProperties.S3BucketRedirectAllRequestsTo as X
import Stratosphere.ResourceProperties.S3BucketRedirectRule as X
import Stratosphere.ResourceProperties.S3BucketReplicationConfiguration as X
import Stratosphere.ResourceProperties.S3BucketReplicationDestination as X
import Stratosphere.ResourceProperties.S3BucketReplicationRule as X
import Stratosphere.ResourceProperties.S3BucketRoutingRule as X
import Stratosphere.ResourceProperties.S3BucketRoutingRuleCondition as X
import Stratosphere.ResourceProperties.S3BucketRule as X
import Stratosphere.ResourceProperties.S3BucketS3KeyFilter as X
import Stratosphere.ResourceProperties.S3BucketTopicConfiguration as X
import Stratosphere.ResourceProperties.S3BucketTransition as X
import Stratosphere.ResourceProperties.S3BucketVersioningConfiguration as X
import Stratosphere.ResourceProperties.S3BucketWebsiteConfiguration as X
import Stratosphere.ResourceProperties.SNSTopicSubscription as X
import Stratosphere.ResourceProperties.WAFByteMatchSetByteMatchTuple as X
import Stratosphere.ResourceProperties.WAFByteMatchSetFieldToMatch as X
import Stratosphere.ResourceProperties.WAFIPSetIPSetDescriptor as X
import Stratosphere.ResourceProperties.WAFRulePredicate as X
import Stratosphere.ResourceProperties.WAFSizeConstraintSetFieldToMatch as X
import Stratosphere.ResourceProperties.WAFSizeConstraintSetSizeConstraint as X
import Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetFieldToMatch as X
import Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetSqlInjectionMatchTuple as X
import Stratosphere.ResourceProperties.WAFWebACLActivatedRule as X
import Stratosphere.ResourceProperties.WAFWebACLWafAction as X
import Stratosphere.ResourceProperties.WAFXssMatchSetFieldToMatch as X
import Stratosphere.ResourceProperties.WAFXssMatchSetXssMatchTuple as X
import Stratosphere.ResourceProperties.RepositoryTrigger as X
import Stratosphere.ResourceProperties.Tag as X

import Stratosphere.ResourceAttributes.AutoScalingReplacingUpdatePolicy as X
import Stratosphere.ResourceAttributes.AutoScalingRollingUpdatePolicy as X
import Stratosphere.ResourceAttributes.AutoScalingScheduledActionPolicy as X
import Stratosphere.ResourceAttributes.CreationPolicy as X
import Stratosphere.ResourceAttributes.ResourceSignal as X
import Stratosphere.ResourceAttributes.UpdatePolicy as X
import Stratosphere.Helpers
import Stratosphere.Values

data ResourceProperties
  = ApiGatewayAccountProperties ApiGatewayAccount
  | ApiGatewayApiKeyProperties ApiGatewayApiKey
  | ApiGatewayAuthorizerProperties ApiGatewayAuthorizer
  | ApiGatewayBasePathMappingProperties ApiGatewayBasePathMapping
  | ApiGatewayClientCertificateProperties ApiGatewayClientCertificate
  | ApiGatewayDeploymentProperties ApiGatewayDeployment
  | ApiGatewayMethodProperties ApiGatewayMethod
  | ApiGatewayModelProperties ApiGatewayModel
  | ApiGatewayResourceProperties ApiGatewayResource
  | ApiGatewayRestApiProperties ApiGatewayRestApi
  | ApiGatewayStageProperties ApiGatewayStage
  | ApiGatewayUsagePlanProperties ApiGatewayUsagePlan
  | ApplicationAutoScalingScalableTargetProperties ApplicationAutoScalingScalableTarget
  | ApplicationAutoScalingScalingPolicyProperties ApplicationAutoScalingScalingPolicy
  | AutoScalingAutoScalingGroupProperties AutoScalingAutoScalingGroup
  | AutoScalingLaunchConfigurationProperties AutoScalingLaunchConfiguration
  | AutoScalingLifecycleHookProperties AutoScalingLifecycleHook
  | AutoScalingScalingPolicyProperties AutoScalingScalingPolicy
  | AutoScalingScheduledActionProperties AutoScalingScheduledAction
  | CertificateManagerCertificateProperties CertificateManagerCertificate
  | CloudFormationCustomResourceProperties CloudFormationCustomResource
  | CloudFormationStackProperties CloudFormationStack
  | CloudFormationWaitConditionProperties CloudFormationWaitCondition
  | CloudFormationWaitConditionHandleProperties CloudFormationWaitConditionHandle
  | CloudFrontDistributionProperties CloudFrontDistribution
  | CloudTrailTrailProperties CloudTrailTrail
  | CloudWatchAlarmProperties CloudWatchAlarm
  | CodeCommitRepositoryProperties CodeCommitRepository
  | CodeDeployApplicationProperties CodeDeployApplication
  | CodeDeployDeploymentConfigProperties CodeDeployDeploymentConfig
  | CodeDeployDeploymentGroupProperties CodeDeployDeploymentGroup
  | CodePipelineCustomActionTypeProperties CodePipelineCustomActionType
  | CodePipelinePipelineProperties CodePipelinePipeline
  | ConfigConfigRuleProperties ConfigConfigRule
  | ConfigConfigurationRecorderProperties ConfigConfigurationRecorder
  | ConfigDeliveryChannelProperties ConfigDeliveryChannel
  | DataPipelinePipelineProperties DataPipelinePipeline
  | DirectoryServiceMicrosoftADProperties DirectoryServiceMicrosoftAD
  | DirectoryServiceSimpleADProperties DirectoryServiceSimpleAD
  | DynamoDBTableProperties DynamoDBTable
  | EC2CustomerGatewayProperties EC2CustomerGateway
  | EC2DHCPOptionsProperties EC2DHCPOptions
  | EC2EIPProperties EC2EIP
  | EC2EIPAssociationProperties EC2EIPAssociation
  | EC2FlowLogProperties EC2FlowLog
  | EC2HostProperties EC2Host
  | EC2InstanceProperties EC2Instance
  | EC2InternetGatewayProperties EC2InternetGateway
  | EC2NatGatewayProperties EC2NatGateway
  | EC2NetworkAclProperties EC2NetworkAcl
  | EC2NetworkAclEntryProperties EC2NetworkAclEntry
  | EC2NetworkInterfaceProperties EC2NetworkInterface
  | EC2NetworkInterfaceAttachmentProperties EC2NetworkInterfaceAttachment
  | EC2PlacementGroupProperties EC2PlacementGroup
  | EC2RouteProperties EC2Route
  | EC2RouteTableProperties EC2RouteTable
  | EC2SecurityGroupProperties EC2SecurityGroup
  | EC2SecurityGroupEgressProperties EC2SecurityGroupEgress
  | EC2SecurityGroupIngressProperties EC2SecurityGroupIngress
  | EC2SpotFleetProperties EC2SpotFleet
  | EC2SubnetProperties EC2Subnet
  | EC2SubnetNetworkAclAssociationProperties EC2SubnetNetworkAclAssociation
  | EC2SubnetRouteTableAssociationProperties EC2SubnetRouteTableAssociation
  | EC2VPCProperties EC2VPC
  | EC2VPCDHCPOptionsAssociationProperties EC2VPCDHCPOptionsAssociation
  | EC2VPCEndpointProperties EC2VPCEndpoint
  | EC2VPCGatewayAttachmentProperties EC2VPCGatewayAttachment
  | EC2VPCPeeringConnectionProperties EC2VPCPeeringConnection
  | EC2VPNConnectionProperties EC2VPNConnection
  | EC2VPNConnectionRouteProperties EC2VPNConnectionRoute
  | EC2VPNGatewayProperties EC2VPNGateway
  | EC2VPNGatewayRoutePropagationProperties EC2VPNGatewayRoutePropagation
  | EC2VolumeProperties EC2Volume
  | EC2VolumeAttachmentProperties EC2VolumeAttachment
  | ECRRepositoryProperties ECRRepository
  | ECSClusterProperties ECSCluster
  | ECSServiceProperties ECSService
  | ECSTaskDefinitionProperties ECSTaskDefinition
  | EFSFileSystemProperties EFSFileSystem
  | EFSMountTargetProperties EFSMountTarget
  | EMRClusterProperties EMRCluster
  | EMRInstanceGroupConfigProperties EMRInstanceGroupConfig
  | EMRStepProperties EMRStep
  | ElastiCacheCacheClusterProperties ElastiCacheCacheCluster
  | ElastiCacheParameterGroupProperties ElastiCacheParameterGroup
  | ElastiCacheReplicationGroupProperties ElastiCacheReplicationGroup
  | ElastiCacheSecurityGroupProperties ElastiCacheSecurityGroup
  | ElastiCacheSecurityGroupIngressProperties ElastiCacheSecurityGroupIngress
  | ElastiCacheSubnetGroupProperties ElastiCacheSubnetGroup
  | ElasticBeanstalkApplicationProperties ElasticBeanstalkApplication
  | ElasticBeanstalkApplicationVersionProperties ElasticBeanstalkApplicationVersion
  | ElasticBeanstalkConfigurationTemplateProperties ElasticBeanstalkConfigurationTemplate
  | ElasticBeanstalkEnvironmentProperties ElasticBeanstalkEnvironment
  | ElasticLoadBalancingLoadBalancerProperties ElasticLoadBalancingLoadBalancer
  | ElasticLoadBalancingV2ListenerProperties ElasticLoadBalancingV2Listener
  | ElasticLoadBalancingV2ListenerRuleProperties ElasticLoadBalancingV2ListenerRule
  | ElasticLoadBalancingV2LoadBalancerProperties ElasticLoadBalancingV2LoadBalancer
  | ElasticLoadBalancingV2TargetGroupProperties ElasticLoadBalancingV2TargetGroup
  | ElasticsearchDomainProperties ElasticsearchDomain
  | EventsRuleProperties EventsRule
  | GameLiftAliasProperties GameLiftAlias
  | GameLiftBuildProperties GameLiftBuild
  | GameLiftFleetProperties GameLiftFleet
  | IAMAccessKeyProperties IAMAccessKey
  | IAMGroupProperties IAMGroup
  | IAMInstanceProfileProperties IAMInstanceProfile
  | IAMManagedPolicyProperties IAMManagedPolicy
  | IAMPolicyProperties IAMPolicy
  | IAMRoleProperties IAMRole
  | IAMUserProperties IAMUser
  | IAMUserToGroupAdditionProperties IAMUserToGroupAddition
  | IoTCertificateProperties IoTCertificate
  | IoTPolicyProperties IoTPolicy
  | IoTPolicyPrincipalAttachmentProperties IoTPolicyPrincipalAttachment
  | IoTThingProperties IoTThing
  | IoTThingPrincipalAttachmentProperties IoTThingPrincipalAttachment
  | IoTTopicRuleProperties IoTTopicRule
  | KMSAliasProperties KMSAlias
  | KMSKeyProperties KMSKey
  | KinesisStreamProperties KinesisStream
  | KinesisFirehoseDeliveryStreamProperties KinesisFirehoseDeliveryStream
  | LambdaAliasProperties LambdaAlias
  | LambdaEventSourceMappingProperties LambdaEventSourceMapping
  | LambdaFunctionProperties LambdaFunction
  | LambdaPermissionProperties LambdaPermission
  | LambdaVersionProperties LambdaVersion
  | LogsDestinationProperties LogsDestination
  | LogsLogGroupProperties LogsLogGroup
  | LogsLogStreamProperties LogsLogStream
  | LogsMetricFilterProperties LogsMetricFilter
  | LogsSubscriptionFilterProperties LogsSubscriptionFilter
  | OpsWorksAppProperties OpsWorksApp
  | OpsWorksElasticLoadBalancerAttachmentProperties OpsWorksElasticLoadBalancerAttachment
  | OpsWorksInstanceProperties OpsWorksInstance
  | OpsWorksLayerProperties OpsWorksLayer
  | OpsWorksStackProperties OpsWorksStack
  | OpsWorksUserProfileProperties OpsWorksUserProfile
  | OpsWorksVolumeProperties OpsWorksVolume
  | RDSDBClusterProperties RDSDBCluster
  | RDSDBClusterParameterGroupProperties RDSDBClusterParameterGroup
  | RDSDBInstanceProperties RDSDBInstance
  | RDSDBParameterGroupProperties RDSDBParameterGroup
  | RDSDBSecurityGroupProperties RDSDBSecurityGroup
  | RDSDBSecurityGroupIngressProperties RDSDBSecurityGroupIngress
  | RDSDBSubnetGroupProperties RDSDBSubnetGroup
  | RDSEventSubscriptionProperties RDSEventSubscription
  | RDSOptionGroupProperties RDSOptionGroup
  | RedshiftClusterProperties RedshiftCluster
  | RedshiftClusterParameterGroupProperties RedshiftClusterParameterGroup
  | RedshiftClusterSecurityGroupProperties RedshiftClusterSecurityGroup
  | RedshiftClusterSecurityGroupIngressProperties RedshiftClusterSecurityGroupIngress
  | RedshiftClusterSubnetGroupProperties RedshiftClusterSubnetGroup
  | Route53HealthCheckProperties Route53HealthCheck
  | Route53HostedZoneProperties Route53HostedZone
  | Route53RecordSetProperties Route53RecordSet
  | Route53RecordSetGroupProperties Route53RecordSetGroup
  | S3BucketProperties S3Bucket
  | S3BucketPolicyProperties S3BucketPolicy
  | SDBDomainProperties SDBDomain
  | SNSSubscriptionProperties SNSSubscription
  | SNSTopicProperties SNSTopic
  | SNSTopicPolicyProperties SNSTopicPolicy
  | SQSQueueProperties SQSQueue
  | SQSQueuePolicyProperties SQSQueuePolicy
  | SSMDocumentProperties SSMDocument
  | WAFByteMatchSetProperties WAFByteMatchSet
  | WAFIPSetProperties WAFIPSet
  | WAFRuleProperties WAFRule
  | WAFSizeConstraintSetProperties WAFSizeConstraintSet
  | WAFSqlInjectionMatchSetProperties WAFSqlInjectionMatchSet
  | WAFWebACLProperties WAFWebACL
  | WAFXssMatchSetProperties WAFXssMatchSet
  | WorkSpacesWorkspaceProperties WorkSpacesWorkspace

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
resourcePropertiesJSON (ApiGatewayAccountProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Account" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayApiKeyProperties x) =
  [ "Type" .= ("AWS::ApiGateway::ApiKey" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayAuthorizerProperties x) =
  [ "Type" .= ("AWS::ApiGateway::Authorizer" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayBasePathMappingProperties x) =
  [ "Type" .= ("AWS::ApiGateway::BasePathMapping" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApiGatewayClientCertificateProperties x) =
  [ "Type" .= ("AWS::ApiGateway::ClientCertificate" :: String), "Properties" .= toJSON x]
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
resourcePropertiesJSON (ApplicationAutoScalingScalableTargetProperties x) =
  [ "Type" .= ("AWS::ApplicationAutoScaling::ScalableTarget" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ApplicationAutoScalingScalingPolicyProperties x) =
  [ "Type" .= ("AWS::ApplicationAutoScaling::ScalingPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (AutoScalingAutoScalingGroupProperties x) =
  [ "Type" .= ("AWS::AutoScaling::AutoScalingGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (AutoScalingLaunchConfigurationProperties x) =
  [ "Type" .= ("AWS::AutoScaling::LaunchConfiguration" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (AutoScalingLifecycleHookProperties x) =
  [ "Type" .= ("AWS::AutoScaling::LifecycleHook" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (AutoScalingScalingPolicyProperties x) =
  [ "Type" .= ("AWS::AutoScaling::ScalingPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (AutoScalingScheduledActionProperties x) =
  [ "Type" .= ("AWS::AutoScaling::ScheduledAction" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CertificateManagerCertificateProperties x) =
  [ "Type" .= ("AWS::CertificateManager::Certificate" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudFormationCustomResourceProperties x) =
  [ "Type" .= ("AWS::CloudFormation::CustomResource" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudFormationStackProperties x) =
  [ "Type" .= ("AWS::CloudFormation::Stack" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudFormationWaitConditionProperties x) =
  [ "Type" .= ("AWS::CloudFormation::WaitCondition" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudFormationWaitConditionHandleProperties x) =
  [ "Type" .= ("AWS::CloudFormation::WaitConditionHandle" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudFrontDistributionProperties x) =
  [ "Type" .= ("AWS::CloudFront::Distribution" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudTrailTrailProperties x) =
  [ "Type" .= ("AWS::CloudTrail::Trail" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CloudWatchAlarmProperties x) =
  [ "Type" .= ("AWS::CloudWatch::Alarm" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CodeCommitRepositoryProperties x) =
  [ "Type" .= ("AWS::CodeCommit::Repository" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CodeDeployApplicationProperties x) =
  [ "Type" .= ("AWS::CodeDeploy::Application" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CodeDeployDeploymentConfigProperties x) =
  [ "Type" .= ("AWS::CodeDeploy::DeploymentConfig" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CodeDeployDeploymentGroupProperties x) =
  [ "Type" .= ("AWS::CodeDeploy::DeploymentGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CodePipelineCustomActionTypeProperties x) =
  [ "Type" .= ("AWS::CodePipeline::CustomActionType" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (CodePipelinePipelineProperties x) =
  [ "Type" .= ("AWS::CodePipeline::Pipeline" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ConfigConfigRuleProperties x) =
  [ "Type" .= ("AWS::Config::ConfigRule" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ConfigConfigurationRecorderProperties x) =
  [ "Type" .= ("AWS::Config::ConfigurationRecorder" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ConfigDeliveryChannelProperties x) =
  [ "Type" .= ("AWS::Config::DeliveryChannel" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DataPipelinePipelineProperties x) =
  [ "Type" .= ("AWS::DataPipeline::Pipeline" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DirectoryServiceMicrosoftADProperties x) =
  [ "Type" .= ("AWS::DirectoryService::MicrosoftAD" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DirectoryServiceSimpleADProperties x) =
  [ "Type" .= ("AWS::DirectoryService::SimpleAD" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DynamoDBTableProperties x) =
  [ "Type" .= ("AWS::DynamoDB::Table" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2CustomerGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::CustomerGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2DHCPOptionsProperties x) =
  [ "Type" .= ("AWS::EC2::DHCPOptions" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2EIPProperties x) =
  [ "Type" .= ("AWS::EC2::EIP" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2EIPAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::EIPAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2FlowLogProperties x) =
  [ "Type" .= ("AWS::EC2::FlowLog" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2HostProperties x) =
  [ "Type" .= ("AWS::EC2::Host" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2InstanceProperties x) =
  [ "Type" .= ("AWS::EC2::Instance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2InternetGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::InternetGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2NatGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::NatGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2NetworkAclProperties x) =
  [ "Type" .= ("AWS::EC2::NetworkAcl" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2NetworkAclEntryProperties x) =
  [ "Type" .= ("AWS::EC2::NetworkAclEntry" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2NetworkInterfaceProperties x) =
  [ "Type" .= ("AWS::EC2::NetworkInterface" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2NetworkInterfaceAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::NetworkInterfaceAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2PlacementGroupProperties x) =
  [ "Type" .= ("AWS::EC2::PlacementGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2RouteProperties x) =
  [ "Type" .= ("AWS::EC2::Route" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2RouteTableProperties x) =
  [ "Type" .= ("AWS::EC2::RouteTable" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SecurityGroupProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SecurityGroupEgressProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroupEgress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SpotFleetProperties x) =
  [ "Type" .= ("AWS::EC2::SpotFleet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SubnetProperties x) =
  [ "Type" .= ("AWS::EC2::Subnet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SubnetNetworkAclAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::SubnetNetworkAclAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2SubnetRouteTableAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::SubnetRouteTableAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPCProperties x) =
  [ "Type" .= ("AWS::EC2::VPC" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPCDHCPOptionsAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::VPCDHCPOptionsAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPCEndpointProperties x) =
  [ "Type" .= ("AWS::EC2::VPCEndpoint" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPCGatewayAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VPCGatewayAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPCPeeringConnectionProperties x) =
  [ "Type" .= ("AWS::EC2::VPCPeeringConnection" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPNConnectionProperties x) =
  [ "Type" .= ("AWS::EC2::VPNConnection" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPNConnectionRouteProperties x) =
  [ "Type" .= ("AWS::EC2::VPNConnectionRoute" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPNGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::VPNGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VPNGatewayRoutePropagationProperties x) =
  [ "Type" .= ("AWS::EC2::VPNGatewayRoutePropagation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VolumeProperties x) =
  [ "Type" .= ("AWS::EC2::Volume" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2VolumeAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VolumeAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ECRRepositoryProperties x) =
  [ "Type" .= ("AWS::ECR::Repository" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ECSClusterProperties x) =
  [ "Type" .= ("AWS::ECS::Cluster" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ECSServiceProperties x) =
  [ "Type" .= ("AWS::ECS::Service" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ECSTaskDefinitionProperties x) =
  [ "Type" .= ("AWS::ECS::TaskDefinition" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EFSFileSystemProperties x) =
  [ "Type" .= ("AWS::EFS::FileSystem" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EFSMountTargetProperties x) =
  [ "Type" .= ("AWS::EFS::MountTarget" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EMRClusterProperties x) =
  [ "Type" .= ("AWS::EMR::Cluster" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EMRInstanceGroupConfigProperties x) =
  [ "Type" .= ("AWS::EMR::InstanceGroupConfig" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EMRStepProperties x) =
  [ "Type" .= ("AWS::EMR::Step" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElastiCacheCacheClusterProperties x) =
  [ "Type" .= ("AWS::ElastiCache::CacheCluster" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElastiCacheParameterGroupProperties x) =
  [ "Type" .= ("AWS::ElastiCache::ParameterGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElastiCacheReplicationGroupProperties x) =
  [ "Type" .= ("AWS::ElastiCache::ReplicationGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElastiCacheSecurityGroupProperties x) =
  [ "Type" .= ("AWS::ElastiCache::SecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElastiCacheSecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::ElastiCache::SecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElastiCacheSubnetGroupProperties x) =
  [ "Type" .= ("AWS::ElastiCache::SubnetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticBeanstalkApplicationProperties x) =
  [ "Type" .= ("AWS::ElasticBeanstalk::Application" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticBeanstalkApplicationVersionProperties x) =
  [ "Type" .= ("AWS::ElasticBeanstalk::ApplicationVersion" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticBeanstalkConfigurationTemplateProperties x) =
  [ "Type" .= ("AWS::ElasticBeanstalk::ConfigurationTemplate" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticBeanstalkEnvironmentProperties x) =
  [ "Type" .= ("AWS::ElasticBeanstalk::Environment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticLoadBalancingLoadBalancerProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancing::LoadBalancer" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticLoadBalancingV2ListenerProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancingV2::Listener" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticLoadBalancingV2ListenerRuleProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancingV2::ListenerRule" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticLoadBalancingV2LoadBalancerProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancingV2::LoadBalancer" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticLoadBalancingV2TargetGroupProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancingV2::TargetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (ElasticsearchDomainProperties x) =
  [ "Type" .= ("AWS::Elasticsearch::Domain" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EventsRuleProperties x) =
  [ "Type" .= ("AWS::Events::Rule" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (GameLiftAliasProperties x) =
  [ "Type" .= ("AWS::GameLift::Alias" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (GameLiftBuildProperties x) =
  [ "Type" .= ("AWS::GameLift::Build" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (GameLiftFleetProperties x) =
  [ "Type" .= ("AWS::GameLift::Fleet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMAccessKeyProperties x) =
  [ "Type" .= ("AWS::IAM::AccessKey" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMGroupProperties x) =
  [ "Type" .= ("AWS::IAM::Group" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMInstanceProfileProperties x) =
  [ "Type" .= ("AWS::IAM::InstanceProfile" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMManagedPolicyProperties x) =
  [ "Type" .= ("AWS::IAM::ManagedPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMPolicyProperties x) =
  [ "Type" .= ("AWS::IAM::Policy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMRoleProperties x) =
  [ "Type" .= ("AWS::IAM::Role" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMUserProperties x) =
  [ "Type" .= ("AWS::IAM::User" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMUserToGroupAdditionProperties x) =
  [ "Type" .= ("AWS::IAM::UserToGroupAddition" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IoTCertificateProperties x) =
  [ "Type" .= ("AWS::IoT::Certificate" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IoTPolicyProperties x) =
  [ "Type" .= ("AWS::IoT::Policy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IoTPolicyPrincipalAttachmentProperties x) =
  [ "Type" .= ("AWS::IoT::PolicyPrincipalAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IoTThingProperties x) =
  [ "Type" .= ("AWS::IoT::Thing" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IoTThingPrincipalAttachmentProperties x) =
  [ "Type" .= ("AWS::IoT::ThingPrincipalAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IoTTopicRuleProperties x) =
  [ "Type" .= ("AWS::IoT::TopicRule" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (KMSAliasProperties x) =
  [ "Type" .= ("AWS::KMS::Alias" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (KMSKeyProperties x) =
  [ "Type" .= ("AWS::KMS::Key" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (KinesisStreamProperties x) =
  [ "Type" .= ("AWS::Kinesis::Stream" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (KinesisFirehoseDeliveryStreamProperties x) =
  [ "Type" .= ("AWS::KinesisFirehose::DeliveryStream" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaAliasProperties x) =
  [ "Type" .= ("AWS::Lambda::Alias" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaEventSourceMappingProperties x) =
  [ "Type" .= ("AWS::Lambda::EventSourceMapping" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaFunctionProperties x) =
  [ "Type" .= ("AWS::Lambda::Function" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaPermissionProperties x) =
  [ "Type" .= ("AWS::Lambda::Permission" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LambdaVersionProperties x) =
  [ "Type" .= ("AWS::Lambda::Version" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogsDestinationProperties x) =
  [ "Type" .= ("AWS::Logs::Destination" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogsLogGroupProperties x) =
  [ "Type" .= ("AWS::Logs::LogGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogsLogStreamProperties x) =
  [ "Type" .= ("AWS::Logs::LogStream" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogsMetricFilterProperties x) =
  [ "Type" .= ("AWS::Logs::MetricFilter" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LogsSubscriptionFilterProperties x) =
  [ "Type" .= ("AWS::Logs::SubscriptionFilter" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksAppProperties x) =
  [ "Type" .= ("AWS::OpsWorks::App" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksElasticLoadBalancerAttachmentProperties x) =
  [ "Type" .= ("AWS::OpsWorks::ElasticLoadBalancerAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksInstanceProperties x) =
  [ "Type" .= ("AWS::OpsWorks::Instance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksLayerProperties x) =
  [ "Type" .= ("AWS::OpsWorks::Layer" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksStackProperties x) =
  [ "Type" .= ("AWS::OpsWorks::Stack" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksUserProfileProperties x) =
  [ "Type" .= ("AWS::OpsWorks::UserProfile" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (OpsWorksVolumeProperties x) =
  [ "Type" .= ("AWS::OpsWorks::Volume" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBClusterProperties x) =
  [ "Type" .= ("AWS::RDS::DBCluster" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBClusterParameterGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBClusterParameterGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBInstanceProperties x) =
  [ "Type" .= ("AWS::RDS::DBInstance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBParameterGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBParameterGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBSecurityGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBSecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBSecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::RDS::DBSecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSDBSubnetGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBSubnetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSEventSubscriptionProperties x) =
  [ "Type" .= ("AWS::RDS::EventSubscription" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RDSOptionGroupProperties x) =
  [ "Type" .= ("AWS::RDS::OptionGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RedshiftClusterProperties x) =
  [ "Type" .= ("AWS::Redshift::Cluster" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RedshiftClusterParameterGroupProperties x) =
  [ "Type" .= ("AWS::Redshift::ClusterParameterGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RedshiftClusterSecurityGroupProperties x) =
  [ "Type" .= ("AWS::Redshift::ClusterSecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RedshiftClusterSecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::Redshift::ClusterSecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RedshiftClusterSubnetGroupProperties x) =
  [ "Type" .= ("AWS::Redshift::ClusterSubnetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (Route53HealthCheckProperties x) =
  [ "Type" .= ("AWS::Route53::HealthCheck" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (Route53HostedZoneProperties x) =
  [ "Type" .= ("AWS::Route53::HostedZone" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (Route53RecordSetProperties x) =
  [ "Type" .= ("AWS::Route53::RecordSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (Route53RecordSetGroupProperties x) =
  [ "Type" .= ("AWS::Route53::RecordSetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (S3BucketProperties x) =
  [ "Type" .= ("AWS::S3::Bucket" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (S3BucketPolicyProperties x) =
  [ "Type" .= ("AWS::S3::BucketPolicy" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SDBDomainProperties x) =
  [ "Type" .= ("AWS::SDB::Domain" :: String), "Properties" .= toJSON x]
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
resourcePropertiesJSON (SSMDocumentProperties x) =
  [ "Type" .= ("AWS::SSM::Document" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFByteMatchSetProperties x) =
  [ "Type" .= ("AWS::WAF::ByteMatchSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFIPSetProperties x) =
  [ "Type" .= ("AWS::WAF::IPSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFRuleProperties x) =
  [ "Type" .= ("AWS::WAF::Rule" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFSizeConstraintSetProperties x) =
  [ "Type" .= ("AWS::WAF::SizeConstraintSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFSqlInjectionMatchSetProperties x) =
  [ "Type" .= ("AWS::WAF::SqlInjectionMatchSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFWebACLProperties x) =
  [ "Type" .= ("AWS::WAF::WebACL" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WAFXssMatchSetProperties x) =
  [ "Type" .= ("AWS::WAF::XssMatchSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (WorkSpacesWorkspaceProperties x) =
  [ "Type" .= ("AWS::WorkSpaces::Workspace" :: String), "Properties" .= toJSON x]


resourceFromJSON :: T.Text -> Object -> Parser Resource
resourceFromJSON n o =
    do type' <- o .: "Type" :: Parser String
       props <- case type' of
         "AWS::ApiGateway::Account" -> ApiGatewayAccountProperties <$> (o .: "Properties")
         "AWS::ApiGateway::ApiKey" -> ApiGatewayApiKeyProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Authorizer" -> ApiGatewayAuthorizerProperties <$> (o .: "Properties")
         "AWS::ApiGateway::BasePathMapping" -> ApiGatewayBasePathMappingProperties <$> (o .: "Properties")
         "AWS::ApiGateway::ClientCertificate" -> ApiGatewayClientCertificateProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Deployment" -> ApiGatewayDeploymentProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Method" -> ApiGatewayMethodProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Model" -> ApiGatewayModelProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Resource" -> ApiGatewayResourceProperties <$> (o .: "Properties")
         "AWS::ApiGateway::RestApi" -> ApiGatewayRestApiProperties <$> (o .: "Properties")
         "AWS::ApiGateway::Stage" -> ApiGatewayStageProperties <$> (o .: "Properties")
         "AWS::ApiGateway::UsagePlan" -> ApiGatewayUsagePlanProperties <$> (o .: "Properties")
         "AWS::ApplicationAutoScaling::ScalableTarget" -> ApplicationAutoScalingScalableTargetProperties <$> (o .: "Properties")
         "AWS::ApplicationAutoScaling::ScalingPolicy" -> ApplicationAutoScalingScalingPolicyProperties <$> (o .: "Properties")
         "AWS::AutoScaling::AutoScalingGroup" -> AutoScalingAutoScalingGroupProperties <$> (o .: "Properties")
         "AWS::AutoScaling::LaunchConfiguration" -> AutoScalingLaunchConfigurationProperties <$> (o .: "Properties")
         "AWS::AutoScaling::LifecycleHook" -> AutoScalingLifecycleHookProperties <$> (o .: "Properties")
         "AWS::AutoScaling::ScalingPolicy" -> AutoScalingScalingPolicyProperties <$> (o .: "Properties")
         "AWS::AutoScaling::ScheduledAction" -> AutoScalingScheduledActionProperties <$> (o .: "Properties")
         "AWS::CertificateManager::Certificate" -> CertificateManagerCertificateProperties <$> (o .: "Properties")
         "AWS::CloudFormation::CustomResource" -> CloudFormationCustomResourceProperties <$> (o .: "Properties")
         "AWS::CloudFormation::Stack" -> CloudFormationStackProperties <$> (o .: "Properties")
         "AWS::CloudFormation::WaitCondition" -> CloudFormationWaitConditionProperties <$> (o .: "Properties")
         "AWS::CloudFormation::WaitConditionHandle" -> CloudFormationWaitConditionHandleProperties <$> (o .: "Properties")
         "AWS::CloudFront::Distribution" -> CloudFrontDistributionProperties <$> (o .: "Properties")
         "AWS::CloudTrail::Trail" -> CloudTrailTrailProperties <$> (o .: "Properties")
         "AWS::CloudWatch::Alarm" -> CloudWatchAlarmProperties <$> (o .: "Properties")
         "AWS::CodeCommit::Repository" -> CodeCommitRepositoryProperties <$> (o .: "Properties")
         "AWS::CodeDeploy::Application" -> CodeDeployApplicationProperties <$> (o .: "Properties")
         "AWS::CodeDeploy::DeploymentConfig" -> CodeDeployDeploymentConfigProperties <$> (o .: "Properties")
         "AWS::CodeDeploy::DeploymentGroup" -> CodeDeployDeploymentGroupProperties <$> (o .: "Properties")
         "AWS::CodePipeline::CustomActionType" -> CodePipelineCustomActionTypeProperties <$> (o .: "Properties")
         "AWS::CodePipeline::Pipeline" -> CodePipelinePipelineProperties <$> (o .: "Properties")
         "AWS::Config::ConfigRule" -> ConfigConfigRuleProperties <$> (o .: "Properties")
         "AWS::Config::ConfigurationRecorder" -> ConfigConfigurationRecorderProperties <$> (o .: "Properties")
         "AWS::Config::DeliveryChannel" -> ConfigDeliveryChannelProperties <$> (o .: "Properties")
         "AWS::DataPipeline::Pipeline" -> DataPipelinePipelineProperties <$> (o .: "Properties")
         "AWS::DirectoryService::MicrosoftAD" -> DirectoryServiceMicrosoftADProperties <$> (o .: "Properties")
         "AWS::DirectoryService::SimpleAD" -> DirectoryServiceSimpleADProperties <$> (o .: "Properties")
         "AWS::DynamoDB::Table" -> DynamoDBTableProperties <$> (o .: "Properties")
         "AWS::EC2::CustomerGateway" -> EC2CustomerGatewayProperties <$> (o .: "Properties")
         "AWS::EC2::DHCPOptions" -> EC2DHCPOptionsProperties <$> (o .: "Properties")
         "AWS::EC2::EIP" -> EC2EIPProperties <$> (o .: "Properties")
         "AWS::EC2::EIPAssociation" -> EC2EIPAssociationProperties <$> (o .: "Properties")
         "AWS::EC2::FlowLog" -> EC2FlowLogProperties <$> (o .: "Properties")
         "AWS::EC2::Host" -> EC2HostProperties <$> (o .: "Properties")
         "AWS::EC2::Instance" -> EC2InstanceProperties <$> (o .: "Properties")
         "AWS::EC2::InternetGateway" -> EC2InternetGatewayProperties <$> (o .: "Properties")
         "AWS::EC2::NatGateway" -> EC2NatGatewayProperties <$> (o .: "Properties")
         "AWS::EC2::NetworkAcl" -> EC2NetworkAclProperties <$> (o .: "Properties")
         "AWS::EC2::NetworkAclEntry" -> EC2NetworkAclEntryProperties <$> (o .: "Properties")
         "AWS::EC2::NetworkInterface" -> EC2NetworkInterfaceProperties <$> (o .: "Properties")
         "AWS::EC2::NetworkInterfaceAttachment" -> EC2NetworkInterfaceAttachmentProperties <$> (o .: "Properties")
         "AWS::EC2::PlacementGroup" -> EC2PlacementGroupProperties <$> (o .: "Properties")
         "AWS::EC2::Route" -> EC2RouteProperties <$> (o .: "Properties")
         "AWS::EC2::RouteTable" -> EC2RouteTableProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroup" -> EC2SecurityGroupProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroupEgress" -> EC2SecurityGroupEgressProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroupIngress" -> EC2SecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::EC2::SpotFleet" -> EC2SpotFleetProperties <$> (o .: "Properties")
         "AWS::EC2::Subnet" -> EC2SubnetProperties <$> (o .: "Properties")
         "AWS::EC2::SubnetNetworkAclAssociation" -> EC2SubnetNetworkAclAssociationProperties <$> (o .: "Properties")
         "AWS::EC2::SubnetRouteTableAssociation" -> EC2SubnetRouteTableAssociationProperties <$> (o .: "Properties")
         "AWS::EC2::VPC" -> EC2VPCProperties <$> (o .: "Properties")
         "AWS::EC2::VPCDHCPOptionsAssociation" -> EC2VPCDHCPOptionsAssociationProperties <$> (o .: "Properties")
         "AWS::EC2::VPCEndpoint" -> EC2VPCEndpointProperties <$> (o .: "Properties")
         "AWS::EC2::VPCGatewayAttachment" -> EC2VPCGatewayAttachmentProperties <$> (o .: "Properties")
         "AWS::EC2::VPCPeeringConnection" -> EC2VPCPeeringConnectionProperties <$> (o .: "Properties")
         "AWS::EC2::VPNConnection" -> EC2VPNConnectionProperties <$> (o .: "Properties")
         "AWS::EC2::VPNConnectionRoute" -> EC2VPNConnectionRouteProperties <$> (o .: "Properties")
         "AWS::EC2::VPNGateway" -> EC2VPNGatewayProperties <$> (o .: "Properties")
         "AWS::EC2::VPNGatewayRoutePropagation" -> EC2VPNGatewayRoutePropagationProperties <$> (o .: "Properties")
         "AWS::EC2::Volume" -> EC2VolumeProperties <$> (o .: "Properties")
         "AWS::EC2::VolumeAttachment" -> EC2VolumeAttachmentProperties <$> (o .: "Properties")
         "AWS::ECR::Repository" -> ECRRepositoryProperties <$> (o .: "Properties")
         "AWS::ECS::Cluster" -> ECSClusterProperties <$> (o .: "Properties")
         "AWS::ECS::Service" -> ECSServiceProperties <$> (o .: "Properties")
         "AWS::ECS::TaskDefinition" -> ECSTaskDefinitionProperties <$> (o .: "Properties")
         "AWS::EFS::FileSystem" -> EFSFileSystemProperties <$> (o .: "Properties")
         "AWS::EFS::MountTarget" -> EFSMountTargetProperties <$> (o .: "Properties")
         "AWS::EMR::Cluster" -> EMRClusterProperties <$> (o .: "Properties")
         "AWS::EMR::InstanceGroupConfig" -> EMRInstanceGroupConfigProperties <$> (o .: "Properties")
         "AWS::EMR::Step" -> EMRStepProperties <$> (o .: "Properties")
         "AWS::ElastiCache::CacheCluster" -> ElastiCacheCacheClusterProperties <$> (o .: "Properties")
         "AWS::ElastiCache::ParameterGroup" -> ElastiCacheParameterGroupProperties <$> (o .: "Properties")
         "AWS::ElastiCache::ReplicationGroup" -> ElastiCacheReplicationGroupProperties <$> (o .: "Properties")
         "AWS::ElastiCache::SecurityGroup" -> ElastiCacheSecurityGroupProperties <$> (o .: "Properties")
         "AWS::ElastiCache::SecurityGroupIngress" -> ElastiCacheSecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::ElastiCache::SubnetGroup" -> ElastiCacheSubnetGroupProperties <$> (o .: "Properties")
         "AWS::ElasticBeanstalk::Application" -> ElasticBeanstalkApplicationProperties <$> (o .: "Properties")
         "AWS::ElasticBeanstalk::ApplicationVersion" -> ElasticBeanstalkApplicationVersionProperties <$> (o .: "Properties")
         "AWS::ElasticBeanstalk::ConfigurationTemplate" -> ElasticBeanstalkConfigurationTemplateProperties <$> (o .: "Properties")
         "AWS::ElasticBeanstalk::Environment" -> ElasticBeanstalkEnvironmentProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancing::LoadBalancer" -> ElasticLoadBalancingLoadBalancerProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancingV2::Listener" -> ElasticLoadBalancingV2ListenerProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancingV2::ListenerRule" -> ElasticLoadBalancingV2ListenerRuleProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancingV2::LoadBalancer" -> ElasticLoadBalancingV2LoadBalancerProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancingV2::TargetGroup" -> ElasticLoadBalancingV2TargetGroupProperties <$> (o .: "Properties")
         "AWS::Elasticsearch::Domain" -> ElasticsearchDomainProperties <$> (o .: "Properties")
         "AWS::Events::Rule" -> EventsRuleProperties <$> (o .: "Properties")
         "AWS::GameLift::Alias" -> GameLiftAliasProperties <$> (o .: "Properties")
         "AWS::GameLift::Build" -> GameLiftBuildProperties <$> (o .: "Properties")
         "AWS::GameLift::Fleet" -> GameLiftFleetProperties <$> (o .: "Properties")
         "AWS::IAM::AccessKey" -> IAMAccessKeyProperties <$> (o .: "Properties")
         "AWS::IAM::Group" -> IAMGroupProperties <$> (o .: "Properties")
         "AWS::IAM::InstanceProfile" -> IAMInstanceProfileProperties <$> (o .: "Properties")
         "AWS::IAM::ManagedPolicy" -> IAMManagedPolicyProperties <$> (o .: "Properties")
         "AWS::IAM::Policy" -> IAMPolicyProperties <$> (o .: "Properties")
         "AWS::IAM::Role" -> IAMRoleProperties <$> (o .: "Properties")
         "AWS::IAM::User" -> IAMUserProperties <$> (o .: "Properties")
         "AWS::IAM::UserToGroupAddition" -> IAMUserToGroupAdditionProperties <$> (o .: "Properties")
         "AWS::IoT::Certificate" -> IoTCertificateProperties <$> (o .: "Properties")
         "AWS::IoT::Policy" -> IoTPolicyProperties <$> (o .: "Properties")
         "AWS::IoT::PolicyPrincipalAttachment" -> IoTPolicyPrincipalAttachmentProperties <$> (o .: "Properties")
         "AWS::IoT::Thing" -> IoTThingProperties <$> (o .: "Properties")
         "AWS::IoT::ThingPrincipalAttachment" -> IoTThingPrincipalAttachmentProperties <$> (o .: "Properties")
         "AWS::IoT::TopicRule" -> IoTTopicRuleProperties <$> (o .: "Properties")
         "AWS::KMS::Alias" -> KMSAliasProperties <$> (o .: "Properties")
         "AWS::KMS::Key" -> KMSKeyProperties <$> (o .: "Properties")
         "AWS::Kinesis::Stream" -> KinesisStreamProperties <$> (o .: "Properties")
         "AWS::KinesisFirehose::DeliveryStream" -> KinesisFirehoseDeliveryStreamProperties <$> (o .: "Properties")
         "AWS::Lambda::Alias" -> LambdaAliasProperties <$> (o .: "Properties")
         "AWS::Lambda::EventSourceMapping" -> LambdaEventSourceMappingProperties <$> (o .: "Properties")
         "AWS::Lambda::Function" -> LambdaFunctionProperties <$> (o .: "Properties")
         "AWS::Lambda::Permission" -> LambdaPermissionProperties <$> (o .: "Properties")
         "AWS::Lambda::Version" -> LambdaVersionProperties <$> (o .: "Properties")
         "AWS::Logs::Destination" -> LogsDestinationProperties <$> (o .: "Properties")
         "AWS::Logs::LogGroup" -> LogsLogGroupProperties <$> (o .: "Properties")
         "AWS::Logs::LogStream" -> LogsLogStreamProperties <$> (o .: "Properties")
         "AWS::Logs::MetricFilter" -> LogsMetricFilterProperties <$> (o .: "Properties")
         "AWS::Logs::SubscriptionFilter" -> LogsSubscriptionFilterProperties <$> (o .: "Properties")
         "AWS::OpsWorks::App" -> OpsWorksAppProperties <$> (o .: "Properties")
         "AWS::OpsWorks::ElasticLoadBalancerAttachment" -> OpsWorksElasticLoadBalancerAttachmentProperties <$> (o .: "Properties")
         "AWS::OpsWorks::Instance" -> OpsWorksInstanceProperties <$> (o .: "Properties")
         "AWS::OpsWorks::Layer" -> OpsWorksLayerProperties <$> (o .: "Properties")
         "AWS::OpsWorks::Stack" -> OpsWorksStackProperties <$> (o .: "Properties")
         "AWS::OpsWorks::UserProfile" -> OpsWorksUserProfileProperties <$> (o .: "Properties")
         "AWS::OpsWorks::Volume" -> OpsWorksVolumeProperties <$> (o .: "Properties")
         "AWS::RDS::DBCluster" -> RDSDBClusterProperties <$> (o .: "Properties")
         "AWS::RDS::DBClusterParameterGroup" -> RDSDBClusterParameterGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBInstance" -> RDSDBInstanceProperties <$> (o .: "Properties")
         "AWS::RDS::DBParameterGroup" -> RDSDBParameterGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBSecurityGroup" -> RDSDBSecurityGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBSecurityGroupIngress" -> RDSDBSecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::RDS::DBSubnetGroup" -> RDSDBSubnetGroupProperties <$> (o .: "Properties")
         "AWS::RDS::EventSubscription" -> RDSEventSubscriptionProperties <$> (o .: "Properties")
         "AWS::RDS::OptionGroup" -> RDSOptionGroupProperties <$> (o .: "Properties")
         "AWS::Redshift::Cluster" -> RedshiftClusterProperties <$> (o .: "Properties")
         "AWS::Redshift::ClusterParameterGroup" -> RedshiftClusterParameterGroupProperties <$> (o .: "Properties")
         "AWS::Redshift::ClusterSecurityGroup" -> RedshiftClusterSecurityGroupProperties <$> (o .: "Properties")
         "AWS::Redshift::ClusterSecurityGroupIngress" -> RedshiftClusterSecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::Redshift::ClusterSubnetGroup" -> RedshiftClusterSubnetGroupProperties <$> (o .: "Properties")
         "AWS::Route53::HealthCheck" -> Route53HealthCheckProperties <$> (o .: "Properties")
         "AWS::Route53::HostedZone" -> Route53HostedZoneProperties <$> (o .: "Properties")
         "AWS::Route53::RecordSet" -> Route53RecordSetProperties <$> (o .: "Properties")
         "AWS::Route53::RecordSetGroup" -> Route53RecordSetGroupProperties <$> (o .: "Properties")
         "AWS::S3::Bucket" -> S3BucketProperties <$> (o .: "Properties")
         "AWS::S3::BucketPolicy" -> S3BucketPolicyProperties <$> (o .: "Properties")
         "AWS::SDB::Domain" -> SDBDomainProperties <$> (o .: "Properties")
         "AWS::SNS::Subscription" -> SNSSubscriptionProperties <$> (o .: "Properties")
         "AWS::SNS::Topic" -> SNSTopicProperties <$> (o .: "Properties")
         "AWS::SNS::TopicPolicy" -> SNSTopicPolicyProperties <$> (o .: "Properties")
         "AWS::SQS::Queue" -> SQSQueueProperties <$> (o .: "Properties")
         "AWS::SQS::QueuePolicy" -> SQSQueuePolicyProperties <$> (o .: "Properties")
         "AWS::SSM::Document" -> SSMDocumentProperties <$> (o .: "Properties")
         "AWS::WAF::ByteMatchSet" -> WAFByteMatchSetProperties <$> (o .: "Properties")
         "AWS::WAF::IPSet" -> WAFIPSetProperties <$> (o .: "Properties")
         "AWS::WAF::Rule" -> WAFRuleProperties <$> (o .: "Properties")
         "AWS::WAF::SizeConstraintSet" -> WAFSizeConstraintSetProperties <$> (o .: "Properties")
         "AWS::WAF::SqlInjectionMatchSet" -> WAFSqlInjectionMatchSetProperties <$> (o .: "Properties")
         "AWS::WAF::WebACL" -> WAFWebACLProperties <$> (o .: "Properties")
         "AWS::WAF::XssMatchSet" -> WAFXssMatchSetProperties <$> (o .: "Properties")
         "AWS::WorkSpaces::Workspace" -> WorkSpacesWorkspaceProperties <$> (o .: "Properties")

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
