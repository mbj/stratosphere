{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.EC2
       ( EC2InstanceProperties (..)
       , ec2InstancePropertiesDefault
       , ResourceTag (..)
       ) where

import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T

import Stratosphere.Template

data ResourceTag =
  ResourceTag
  { tagKey :: T.Text
  , tagValue :: T.Text
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 3 } ''ResourceTag)

data EC2InstanceProperties =
  EC2InstanceProperties
  { ec2InstanceAvailabilityZone :: Maybe T.Text
  --, ec2InstanceBlockDeviceMappings :: [ EC2 Block Device Mapping, ... ]
  , ec2InstanceDisableApiTermination :: Maybe Bool
  , ec2InstanceEbsOptimized :: Maybe Bool
  , ec2InstanceIamInstanceProfile :: Maybe T.Text
  , ec2InstanceImageId :: T.Text
  , ec2InstanceInstanceInitiatedShutdownBehavior :: Maybe T.Text
  , ec2InstanceInstanceType :: Maybe T.Text
  , ec2InstanceKernelId :: Maybe T.Text
  , ec2InstanceKeyName :: Maybe T.Text
  , ec2InstanceMonitoring :: Maybe Bool
  --, ec2InstanceNetworkInterfaces :: [ EC2 Network Interface, ... ]
  , ec2InstancePlacementGroupName :: Maybe T.Text
  , ec2InstancePrivateIpAddress :: Maybe T.Text
  , ec2InstanceRamdiskId :: Maybe T.Text
  , ec2InstanceSecurityGroupIds :: Maybe [T.Text]
  , ec2InstanceSecurityGroups :: Maybe [T.Text]
  , ec2InstanceSourceDestCheck :: Maybe Bool
  --, ec2InstanceSsmAssociations :: [ SSMAssociation, ...
  , ec2InstanceSubnetId :: Maybe T.Text
  , ec2InstanceTags :: Maybe [ResourceTag]
  , ec2InstanceTenancy :: Maybe T.Text
  , ec2InstanceUserData :: Maybe T.Text
  --, ec2InstanceVolumes :: [ EC2 MountPoint, ... ]
  , ec2InstanceAdditionalInfo :: Maybe T.Text
} deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 11
                            , omitNothingFields = True } ''EC2InstanceProperties)

ec2InstancePropertiesDefault :: EC2InstanceProperties
ec2InstancePropertiesDefault =
  EC2InstanceProperties
  { ec2InstanceAvailabilityZone = Nothing
  --, ec2InstanceBlockDeviceMappings :: [ EC2 Block Device Mapping, ... ]
  , ec2InstanceDisableApiTermination = Nothing
  , ec2InstanceEbsOptimized = Nothing
  , ec2InstanceIamInstanceProfile = Nothing
  , ec2InstanceImageId = ""
  , ec2InstanceInstanceInitiatedShutdownBehavior = Nothing
  , ec2InstanceInstanceType = Nothing
  , ec2InstanceKernelId = Nothing
  , ec2InstanceKeyName = Nothing
  , ec2InstanceMonitoring = Nothing
  --, ec2InstanceNetworkInterfaces :: [ EC2 Network Interface, ... ]
  , ec2InstancePlacementGroupName = Nothing
  , ec2InstancePrivateIpAddress = Nothing
  , ec2InstanceRamdiskId = Nothing
  , ec2InstanceSecurityGroupIds = Nothing
  , ec2InstanceSecurityGroups = Nothing
  , ec2InstanceSourceDestCheck = Nothing
  --, ec2InstanceSsmAssociations :: [ SSMAssociation, ...
  , ec2InstanceSubnetId = Nothing
  , ec2InstanceTags = Nothing
  , ec2InstanceTenancy = Nothing
  , ec2InstanceUserData = Nothing
  --, ec2InstanceVolumes :: [ EC2 MountPoint, ... ]
  , ec2InstanceAdditionalInfo = Nothing
  }


instance ToResource EC2InstanceProperties where
  toResource props =
    Resource
    { resourceType = "AWS::EC2::Instance"
    , resourceProperties = props'
    }
    where (Object props') = toJSON props
