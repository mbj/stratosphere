{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
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
     , properties
     , deletionPolicy
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

import Stratosphere.Resources.DBSecurityGroupIngress as X
import Stratosphere.Resources.Subnet as X
import Stratosphere.Resources.DBInstance as X
import Stratosphere.Resources.IAMRole as X
import Stratosphere.Resources.DBSubnetGroup as X
import Stratosphere.Resources.SecurityGroup as X
import Stratosphere.Resources.DBParameterGroup as X
import Stratosphere.Resources.EC2Instance as X
import Stratosphere.Resources.RouteTable as X
import Stratosphere.Resources.EIPAssociation as X
import Stratosphere.Resources.InternetGateway as X
import Stratosphere.Resources.InstanceProfile as X
import Stratosphere.Resources.VPCGatewayAttachment as X
import Stratosphere.Resources.EIP as X
import Stratosphere.Resources.DBSecurityGroup as X
import Stratosphere.Resources.SubnetRouteTableAssociation as X
import Stratosphere.Resources.RecordSetGroup as X
import Stratosphere.Resources.Stack as X
import Stratosphere.Resources.VPC as X
import Stratosphere.Resources.LoadBalancer as X
import Stratosphere.Resources.Volume as X
import Stratosphere.Resources.VPCEndpoint as X
import Stratosphere.Resources.RecordSet as X
import Stratosphere.Resources.Route as X
import Stratosphere.Resources.NatGateway as X
import Stratosphere.Resources.VolumeAttachment as X

import Stratosphere.ResourceProperties.ConnectionDrainingPolicy as X
import Stratosphere.ResourceProperties.HealthCheck as X
import Stratosphere.ResourceProperties.EC2SsmAssociationParameters as X
import Stratosphere.ResourceProperties.ELBPolicy as X
import Stratosphere.ResourceProperties.LBCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.AliasTarget as X
import Stratosphere.ResourceProperties.NetworkInterface as X
import Stratosphere.ResourceProperties.SecurityGroupEgressRule as X
import Stratosphere.ResourceProperties.EC2BlockDeviceMapping as X
import Stratosphere.ResourceProperties.RecordSetGeoLocation as X
import Stratosphere.ResourceProperties.PrivateIpAddressSpecification as X
import Stratosphere.ResourceProperties.IAMPolicies as X
import Stratosphere.ResourceProperties.ListenerProperty as X
import Stratosphere.ResourceProperties.EC2SsmAssociations as X
import Stratosphere.ResourceProperties.ResourceTag as X
import Stratosphere.ResourceProperties.EC2MountPoint as X
import Stratosphere.ResourceProperties.SecurityGroupIngressRule as X
import Stratosphere.ResourceProperties.RDSSecurityGroupRule as X
import Stratosphere.ResourceProperties.EBSBlockDevice as X
import Stratosphere.ResourceProperties.AccessLoggingPolicy as X
import Stratosphere.ResourceProperties.AppCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.ConnectionSettings as X

import Stratosphere.Helpers
import Stratosphere.Values

data ResourceProperties
  = DBSecurityGroupIngressProperties DBSecurityGroupIngress
  | SubnetProperties Subnet
  | DBInstanceProperties DBInstance
  | IAMRoleProperties IAMRole
  | DBSubnetGroupProperties DBSubnetGroup
  | SecurityGroupProperties SecurityGroup
  | DBParameterGroupProperties DBParameterGroup
  | EC2InstanceProperties EC2Instance
  | RouteTableProperties RouteTable
  | EIPAssociationProperties EIPAssociation
  | InternetGatewayProperties InternetGateway
  | InstanceProfileProperties InstanceProfile
  | VPCGatewayAttachmentProperties VPCGatewayAttachment
  | EIPProperties EIP
  | DBSecurityGroupProperties DBSecurityGroup
  | SubnetRouteTableAssociationProperties SubnetRouteTableAssociation
  | RecordSetGroupProperties RecordSetGroup
  | StackProperties Stack
  | VPCProperties VPC
  | LoadBalancerProperties LoadBalancer
  | VolumeProperties Volume
  | VPCEndpointProperties VPCEndpoint
  | RecordSetProperties RecordSet
  | RouteProperties Route
  | NatGatewayProperties NatGateway
  | VolumeAttachmentProperties VolumeAttachment

  deriving (Show)

data DeletionPolicy
  = Delete
  | Retain
  | Snapshot
  deriving (Show, Generic, ToJSON, FromJSON)

data Resource =
  Resource
  { resourceName :: T.Text
  , resourceProperties :: ResourceProperties
  , resourceDeletionPolicy :: Maybe DeletionPolicy
  } deriving (Show)

instance ToRef Resource b where
  toRef r = Ref (resourceName r)

-- | Convenient constructor for 'Resource' with required arguments.
resource
  :: T.Text -- ^ Logical name
  -> ResourceProperties
  -> Resource
resource rn rp =
  Resource
  { resourceName = rn
  , resourceProperties = rp
  , resourceDeletionPolicy = Nothing
  }

$(makeFields ''Resource)

resourceToJSON :: Resource -> Value
resourceToJSON (Resource _ props dp) =
    object $ resourcePropertiesJSON props ++ catMaybes
    [ maybeField "DeletionPolicy" dp ]

resourcePropertiesJSON :: ResourceProperties -> [Pair]
resourcePropertiesJSON (DBSecurityGroupIngressProperties x) =
  [ "Type" .= ("AWS::RDS::DBSecurityGroupIngress" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SubnetProperties x) =
  [ "Type" .= ("AWS::EC2::Subnet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBInstanceProperties x) =
  [ "Type" .= ("AWS::RDS::DBInstance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (IAMRoleProperties x) =
  [ "Type" .= ("AWS::IAM::Role" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBSubnetGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBSubnetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SecurityGroupProperties x) =
  [ "Type" .= ("AWS::EC2::SecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBParameterGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBParameterGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EC2InstanceProperties x) =
  [ "Type" .= ("AWS::EC2::Instance" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RouteTableProperties x) =
  [ "Type" .= ("AWS::EC2::RouteTable" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EIPAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::EIPAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (InternetGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::InternetGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (InstanceProfileProperties x) =
  [ "Type" .= ("AWS::IAM::InstanceProfile" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VPCGatewayAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VPCGatewayAttachment" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (EIPProperties x) =
  [ "Type" .= ("AWS::EC2::EIP" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (DBSecurityGroupProperties x) =
  [ "Type" .= ("AWS::RDS::DBSecurityGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (SubnetRouteTableAssociationProperties x) =
  [ "Type" .= ("AWS::EC2::SubnetRouteTableAssociation" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RecordSetGroupProperties x) =
  [ "Type" .= ("AWS::Route53::RecordSetGroup" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (StackProperties x) =
  [ "Type" .= ("AWS::CloudFormation::Stack" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VPCProperties x) =
  [ "Type" .= ("AWS::EC2::VPC" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (LoadBalancerProperties x) =
  [ "Type" .= ("AWS::ElasticLoadBalancing::LoadBalancer" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VolumeProperties x) =
  [ "Type" .= ("AWS::EC2::Volume" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VPCEndpointProperties x) =
  [ "Type" .= ("AWS::EC2::VPCEndpoint" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RecordSetProperties x) =
  [ "Type" .= ("AWS::Route53::RecordSet" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (RouteProperties x) =
  [ "Type" .= ("AWS::EC2::Route" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (NatGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::NatGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VolumeAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VolumeAttachment" :: String), "Properties" .= toJSON x]


resourceFromJSON :: T.Text -> Object -> Parser Resource
resourceFromJSON n o =
    do type' <- o .: "Type" :: Parser String
       props <- case type' of
         "AWS::RDS::DBSecurityGroupIngress" -> DBSecurityGroupIngressProperties <$> (o .: "Properties")
         "AWS::EC2::Subnet" -> SubnetProperties <$> (o .: "Properties")
         "AWS::RDS::DBInstance" -> DBInstanceProperties <$> (o .: "Properties")
         "AWS::IAM::Role" -> IAMRoleProperties <$> (o .: "Properties")
         "AWS::RDS::DBSubnetGroup" -> DBSubnetGroupProperties <$> (o .: "Properties")
         "AWS::EC2::SecurityGroup" -> SecurityGroupProperties <$> (o .: "Properties")
         "AWS::RDS::DBParameterGroup" -> DBParameterGroupProperties <$> (o .: "Properties")
         "AWS::EC2::Instance" -> EC2InstanceProperties <$> (o .: "Properties")
         "AWS::EC2::RouteTable" -> RouteTableProperties <$> (o .: "Properties")
         "AWS::EC2::EIPAssociation" -> EIPAssociationProperties <$> (o .: "Properties")
         "AWS::EC2::InternetGateway" -> InternetGatewayProperties <$> (o .: "Properties")
         "AWS::IAM::InstanceProfile" -> InstanceProfileProperties <$> (o .: "Properties")
         "AWS::EC2::VPCGatewayAttachment" -> VPCGatewayAttachmentProperties <$> (o .: "Properties")
         "AWS::EC2::EIP" -> EIPProperties <$> (o .: "Properties")
         "AWS::RDS::DBSecurityGroup" -> DBSecurityGroupProperties <$> (o .: "Properties")
         "AWS::EC2::SubnetRouteTableAssociation" -> SubnetRouteTableAssociationProperties <$> (o .: "Properties")
         "AWS::Route53::RecordSetGroup" -> RecordSetGroupProperties <$> (o .: "Properties")
         "AWS::CloudFormation::Stack" -> StackProperties <$> (o .: "Properties")
         "AWS::EC2::VPC" -> VPCProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancing::LoadBalancer" -> LoadBalancerProperties <$> (o .: "Properties")
         "AWS::EC2::Volume" -> VolumeProperties <$> (o .: "Properties")
         "AWS::EC2::VPCEndpoint" -> VPCEndpointProperties <$> (o .: "Properties")
         "AWS::Route53::RecordSet" -> RecordSetProperties <$> (o .: "Properties")
         "AWS::EC2::Route" -> RouteProperties <$> (o .: "Properties")
         "AWS::EC2::NatGateway" -> NatGatewayProperties <$> (o .: "Properties")
         "AWS::EC2::VolumeAttachment" -> VolumeAttachmentProperties <$> (o .: "Properties")

         _ -> fail $ "Unknown resource type: " ++ type'
       dp <- o .:? "DeletionPolicy"
       return $ Resource n props dp

-- | Wrapper around a list of 'Resources's to we can modify the aeson
-- instances.
newtype Resources = Resources { unResources :: [Resource] }
                  deriving (Show)

instance IsList Resources where
  type Item Resources = Resource
  fromList = Resources
  toList = unResources

instance NamedItem Resource where
  itemName = resourceName
  nameToJSON = resourceToJSON
  nameParseJSON = resourceFromJSON

instance ToJSON Resources where
  toJSON = namedItemToJSON . unResources

instance FromJSON Resources where
  parseJSON v = Resources <$> namedItemFromJSON v