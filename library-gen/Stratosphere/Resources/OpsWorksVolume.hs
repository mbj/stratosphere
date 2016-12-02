{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html

module Stratosphere.Resources.OpsWorksVolume where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksVolume. See 'opsWorksVolume' for a
-- | more convenient constructor.
data OpsWorksVolume =
  OpsWorksVolume
  { _opsWorksVolumeEc2VolumeId :: Val Text
  , _opsWorksVolumeMountPoint :: Maybe (Val Text)
  , _opsWorksVolumeName :: Maybe (Val Text)
  , _opsWorksVolumeStackId :: Val Text
  } deriving (Show, Generic)

instance ToJSON OpsWorksVolume where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON OpsWorksVolume where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'OpsWorksVolume' containing required fields as arguments.
opsWorksVolume
  :: Val Text -- ^ 'owvEc2VolumeId'
  -> Val Text -- ^ 'owvStackId'
  -> OpsWorksVolume
opsWorksVolume ec2VolumeIdarg stackIdarg =
  OpsWorksVolume
  { _opsWorksVolumeEc2VolumeId = ec2VolumeIdarg
  , _opsWorksVolumeMountPoint = Nothing
  , _opsWorksVolumeName = Nothing
  , _opsWorksVolumeStackId = stackIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-ec2volumeid
owvEc2VolumeId :: Lens' OpsWorksVolume (Val Text)
owvEc2VolumeId = lens _opsWorksVolumeEc2VolumeId (\s a -> s { _opsWorksVolumeEc2VolumeId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-mountpoint
owvMountPoint :: Lens' OpsWorksVolume (Maybe (Val Text))
owvMountPoint = lens _opsWorksVolumeMountPoint (\s a -> s { _opsWorksVolumeMountPoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-name
owvName :: Lens' OpsWorksVolume (Maybe (Val Text))
owvName = lens _opsWorksVolumeName (\s a -> s { _opsWorksVolumeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-volume.html#cfn-opsworks-volume-stackid
owvStackId :: Lens' OpsWorksVolume (Val Text)
owvStackId = lens _opsWorksVolumeStackId (\s a -> s { _opsWorksVolumeStackId = a })
