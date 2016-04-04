{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Resources
     ( module X
     , Resource (..)
     , resource
     , properties
     , deletionPolicy
     , ResourceProperties (..)
     , DeletionPolicy (..)
     ) where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Aeson.Types
import Data.Maybe (catMaybes)
import GHC.Generics (Generic)

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
import Stratosphere.Resources.Stack as X
import Stratosphere.Resources.VPC as X
import Stratosphere.Resources.LoadBalancer as X
import Stratosphere.Resources.Volume as X
import Stratosphere.Resources.VPCEndpoint as X
import Stratosphere.Resources.Route as X
import Stratosphere.Resources.NatGateway as X
import Stratosphere.Resources.VolumeAttachment as X

import Stratosphere.ResourceProperties.DBSecurityGroupIngress as X
import Stratosphere.ResourceProperties.ConnectionDrainingPolicy as X
import Stratosphere.ResourceProperties.HealthCheck as X
import Stratosphere.ResourceProperties.EC2SsmAssociationParameters as X
import Stratosphere.ResourceProperties.ELBPolicy as X
import Stratosphere.ResourceProperties.LBCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.NetworkInterface as X
import Stratosphere.ResourceProperties.SecurityGroupEgressRule as X
import Stratosphere.ResourceProperties.EC2BlockDeviceMapping as X
import Stratosphere.ResourceProperties.PrivateIpAddressSpecification as X
import Stratosphere.ResourceProperties.IAMPolicies as X
import Stratosphere.ResourceProperties.ListenerProperty as X
import Stratosphere.ResourceProperties.EC2SsmAssociations as X
import Stratosphere.ResourceProperties.ResourceTag as X
import Stratosphere.ResourceProperties.EC2MountPoint as X
import Stratosphere.ResourceProperties.SecurityGroupIngressRule as X
import Stratosphere.ResourceProperties.EBSBlockDevice as X
import Stratosphere.ResourceProperties.AccessLoggingPolicy as X
import Stratosphere.ResourceProperties.AppCookieStickinessPolicy as X
import Stratosphere.ResourceProperties.ConnectionSettings as X

import Stratosphere.Helpers (maybeField)

data ResourceProperties
  = SubnetProperties Subnet
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
  | StackProperties Stack
  | VPCProperties VPC
  | LoadBalancerProperties LoadBalancer
  | VolumeProperties Volume
  | VPCEndpointProperties VPCEndpoint
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
  { resourceProperties :: ResourceProperties
  , resourceDeletionPolicy :: Maybe DeletionPolicy
  } deriving (Show)

resource
  :: ResourceProperties
  -> Resource
resource rp =
  Resource
  { resourceProperties = rp
  , resourceDeletionPolicy = Nothing
  }

$(makeFields ''Resource)

instance ToJSON Resource where
  toJSON (Resource props dp) =
    object $ resourcePropertiesJSON props ++ catMaybes
    [ maybeField "DeletionPolicy" dp ]

resourcePropertiesJSON :: ResourceProperties -> [Pair]
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
resourcePropertiesJSON (RouteProperties x) =
  [ "Type" .= ("AWS::EC2::Route" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (NatGatewayProperties x) =
  [ "Type" .= ("AWS::EC2::NatGateway" :: String), "Properties" .= toJSON x]
resourcePropertiesJSON (VolumeAttachmentProperties x) =
  [ "Type" .= ("AWS::EC2::VolumeAttachment" :: String), "Properties" .= toJSON x]


instance FromJSON Resource where
  parseJSON (Object o) =
    do type' <- o .: "Type" :: Parser String
       props <- case type' of
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
         "AWS::CloudFormation::Stack" -> StackProperties <$> (o .: "Properties")
         "AWS::EC2::VPC" -> VPCProperties <$> (o .: "Properties")
         "AWS::ElasticLoadBalancing::LoadBalancer" -> LoadBalancerProperties <$> (o .: "Properties")
         "AWS::EC2::Volume" -> VolumeProperties <$> (o .: "Properties")
         "AWS::EC2::VPCEndpoint" -> VPCEndpointProperties <$> (o .: "Properties")
         "AWS::EC2::Route" -> RouteProperties <$> (o .: "Properties")
         "AWS::EC2::NatGateway" -> NatGatewayProperties <$> (o .: "Properties")
         "AWS::EC2::VolumeAttachment" -> VolumeAttachmentProperties <$> (o .: "Properties")

         _ -> fail $ "Unknown resource type: " ++ type'
       dp <- o .:? "DeletionPolicy"
       return $ Resource props dp
  parseJSON _ = fail "Expected JSON Object for a resource"
