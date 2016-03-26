{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.EC2
       ( EC2Instance (..)
       , ec2InstanceDefault
       , makeEC2Instance
       , ResourceTag (..)

       -- Lenses
       , availabilityZone
       --, blockDeviceMappings
       , disableApiTermination
       , ebsOptimized
       , iamInstanceProfile
       , imageId
       , instanceInitiatedShutdownBehavior
       , instanceType
       , kernelId
       , keyName
       , monitoring
       --, networkInterfaces
       , placementGroupName
       , privateIpAddress
       , ramdiskId
       , securityGroupIds
       , securityGroups
       , sourceDestCheck
       --, ssmAssociations
       , subnetId
       , tags
       , tenancy
       , userData
       --, volumes
       , additionalInfo
       ) where

import Control.Lens.TH
import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T

import Stratosphere.Helpers
import Stratosphere.Template
import Stratosphere.Values

data ResourceTag =
  ResourceTag
  { tagKey :: Val T.Text
  , tagValue :: Val T.Text
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 3 } ''ResourceTag)

data EC2Instance =
  EC2Instance
  { ec2InstanceAvailabilityZone :: Maybe (Val T.Text)
  --, ec2InstanceBlockDeviceMappings :: [ EC2 Block Device Mapping, ... ]
  , ec2InstanceDisableApiTermination :: Maybe (Val Bool)
  , ec2InstanceEbsOptimized :: Maybe (Val Bool)
  , ec2InstanceIamInstanceProfile :: Maybe (Val T.Text)
  , ec2InstanceImageId :: Val T.Text
  , ec2InstanceInstanceInitiatedShutdownBehavior :: Maybe (Val T.Text)
  , ec2InstanceInstanceType :: Maybe (Val T.Text)
  , ec2InstanceKernelId :: Maybe (Val T.Text)
  , ec2InstanceKeyName :: Maybe (Val T.Text)
  , ec2InstanceMonitoring :: Maybe (Val Bool)
  --, ec2InstanceNetworkInterfaces :: [ EC2 Network Interface, ... ]
  , ec2InstancePlacementGroupName :: Maybe (Val T.Text)
  , ec2InstancePrivateIpAddress :: Maybe (Val T.Text)
  , ec2InstanceRamdiskId :: Maybe (Val T.Text)
  , ec2InstanceSecurityGroupIds :: Maybe [Val T.Text]
  , ec2InstanceSecurityGroups :: Maybe [Val T.Text]
  , ec2InstanceSourceDestCheck :: Maybe (Val Bool)
  --, ec2InstanceSsmAssociations :: [ SSMAssociation, ...
  , ec2InstanceSubnetId :: Maybe (Val T.Text)
  , ec2InstanceTags :: Maybe [ResourceTag]
  , ec2InstanceTenancy :: Maybe (Val T.Text)
  , ec2InstanceUserData :: Maybe (Val T.Text)
  --, ec2InstanceVolumes :: [ EC2 MountPoint, ... ]
  , ec2InstanceAdditionalInfo :: Maybe (Val T.Text)
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 11
                            , omitNothingFields = True } ''EC2Instance)
$(makeLensesWith (prefixFieldRules "ec2Instance") ''EC2Instance)

ec2InstanceDefault :: EC2Instance
ec2InstanceDefault =
  EC2Instance
  { ec2InstanceAvailabilityZone = Nothing
  --, ec2InstanceBlockDeviceMappings :: [ EC2 Block Device Mapping, ... ]
  , ec2InstanceDisableApiTermination = Nothing
  , ec2InstanceEbsOptimized = Nothing
  , ec2InstanceIamInstanceProfile = Nothing
  , ec2InstanceImageId = Literal ""
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

makeEC2Instance :: ImageId -> EC2Instance
makeEC2Instance iid = ec2InstanceDefault { ec2InstanceImageId = Literal iid }

type ImageId = T.Text

instance ToResource EC2Instance where
  toResource props =
    Resource
    { resourceType' = "AWS::EC2::Instance"
    , resourceProperties = props'
    }
    where (Object props') = toJSON props
