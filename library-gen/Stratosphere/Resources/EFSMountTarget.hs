{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html

module Stratosphere.Resources.EFSMountTarget where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EFSMountTarget. See 'efsMountTarget' for a
-- | more convenient constructor.
data EFSMountTarget =
  EFSMountTarget
  { _eFSMountTargetFileSystemId :: Val Text
  , _eFSMountTargetIpAddress :: Maybe (Val Text)
  , _eFSMountTargetSecurityGroups :: [Val Text]
  , _eFSMountTargetSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EFSMountTarget where
  toJSON EFSMountTarget{..} =
    object
    [ "FileSystemId" .= _eFSMountTargetFileSystemId
    , "IpAddress" .= _eFSMountTargetIpAddress
    , "SecurityGroups" .= _eFSMountTargetSecurityGroups
    , "SubnetId" .= _eFSMountTargetSubnetId
    ]

instance FromJSON EFSMountTarget where
  parseJSON (Object obj) =
    EFSMountTarget <$>
      obj .: "FileSystemId" <*>
      obj .: "IpAddress" <*>
      obj .: "SecurityGroups" <*>
      obj .: "SubnetId"
  parseJSON _ = mempty

-- | Constructor for 'EFSMountTarget' containing required fields as arguments.
efsMountTarget
  :: Val Text -- ^ 'efsmtFileSystemId'
  -> [Val Text] -- ^ 'efsmtSecurityGroups'
  -> Val Text -- ^ 'efsmtSubnetId'
  -> EFSMountTarget
efsMountTarget fileSystemIdarg securityGroupsarg subnetIdarg =
  EFSMountTarget
  { _eFSMountTargetFileSystemId = fileSystemIdarg
  , _eFSMountTargetIpAddress = Nothing
  , _eFSMountTargetSecurityGroups = securityGroupsarg
  , _eFSMountTargetSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-filesystemid
efsmtFileSystemId :: Lens' EFSMountTarget (Val Text)
efsmtFileSystemId = lens _eFSMountTargetFileSystemId (\s a -> s { _eFSMountTargetFileSystemId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-ipaddress
efsmtIpAddress :: Lens' EFSMountTarget (Maybe (Val Text))
efsmtIpAddress = lens _eFSMountTargetIpAddress (\s a -> s { _eFSMountTargetIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-securitygroups
efsmtSecurityGroups :: Lens' EFSMountTarget [Val Text]
efsmtSecurityGroups = lens _eFSMountTargetSecurityGroups (\s a -> s { _eFSMountTargetSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-mounttarget.html#cfn-efs-mounttarget-subnetid
efsmtSubnetId :: Lens' EFSMountTarget (Val Text)
efsmtSubnetId = lens _eFSMountTargetSubnetId (\s a -> s { _eFSMountTargetSubnetId = a })
