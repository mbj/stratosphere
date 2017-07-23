{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html

module Stratosphere.ResourceProperties.OpsWorksInstanceEbsBlockDevice where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for OpsWorksInstanceEbsBlockDevice. See
-- 'opsWorksInstanceEbsBlockDevice' for a more convenient constructor.
data OpsWorksInstanceEbsBlockDevice =
  OpsWorksInstanceEbsBlockDevice
  { _opsWorksInstanceEbsBlockDeviceDeleteOnTermination :: Maybe (Val Bool)
  , _opsWorksInstanceEbsBlockDeviceIops :: Maybe (Val Integer)
  , _opsWorksInstanceEbsBlockDeviceSnapshotId :: Maybe (Val Text)
  , _opsWorksInstanceEbsBlockDeviceVolumeSize :: Maybe (Val Integer)
  , _opsWorksInstanceEbsBlockDeviceVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksInstanceEbsBlockDevice where
  toJSON OpsWorksInstanceEbsBlockDevice{..} =
    object $
    catMaybes
    [ fmap (("DeleteOnTermination",) . toJSON . fmap Bool') _opsWorksInstanceEbsBlockDeviceDeleteOnTermination
    , fmap (("Iops",) . toJSON . fmap Integer') _opsWorksInstanceEbsBlockDeviceIops
    , fmap (("SnapshotId",) . toJSON) _opsWorksInstanceEbsBlockDeviceSnapshotId
    , fmap (("VolumeSize",) . toJSON . fmap Integer') _opsWorksInstanceEbsBlockDeviceVolumeSize
    , fmap (("VolumeType",) . toJSON) _opsWorksInstanceEbsBlockDeviceVolumeType
    ]

instance FromJSON OpsWorksInstanceEbsBlockDevice where
  parseJSON (Object obj) =
    OpsWorksInstanceEbsBlockDevice <$>
      fmap (fmap (fmap unBool')) (obj .:? "DeleteOnTermination") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Iops") <*>
      (obj .:? "SnapshotId") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "VolumeSize") <*>
      (obj .:? "VolumeType")
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksInstanceEbsBlockDevice' containing required
-- fields as arguments.
opsWorksInstanceEbsBlockDevice
  :: OpsWorksInstanceEbsBlockDevice
opsWorksInstanceEbsBlockDevice  =
  OpsWorksInstanceEbsBlockDevice
  { _opsWorksInstanceEbsBlockDeviceDeleteOnTermination = Nothing
  , _opsWorksInstanceEbsBlockDeviceIops = Nothing
  , _opsWorksInstanceEbsBlockDeviceSnapshotId = Nothing
  , _opsWorksInstanceEbsBlockDeviceVolumeSize = Nothing
  , _opsWorksInstanceEbsBlockDeviceVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-deleteontermination
owiebdDeleteOnTermination :: Lens' OpsWorksInstanceEbsBlockDevice (Maybe (Val Bool))
owiebdDeleteOnTermination = lens _opsWorksInstanceEbsBlockDeviceDeleteOnTermination (\s a -> s { _opsWorksInstanceEbsBlockDeviceDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-iops
owiebdIops :: Lens' OpsWorksInstanceEbsBlockDevice (Maybe (Val Integer))
owiebdIops = lens _opsWorksInstanceEbsBlockDeviceIops (\s a -> s { _opsWorksInstanceEbsBlockDeviceIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-snapshotid
owiebdSnapshotId :: Lens' OpsWorksInstanceEbsBlockDevice (Maybe (Val Text))
owiebdSnapshotId = lens _opsWorksInstanceEbsBlockDeviceSnapshotId (\s a -> s { _opsWorksInstanceEbsBlockDeviceSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-volumesize
owiebdVolumeSize :: Lens' OpsWorksInstanceEbsBlockDevice (Maybe (Val Integer))
owiebdVolumeSize = lens _opsWorksInstanceEbsBlockDeviceVolumeSize (\s a -> s { _opsWorksInstanceEbsBlockDeviceVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-volumetype
owiebdVolumeType :: Lens' OpsWorksInstanceEbsBlockDevice (Maybe (Val Text))
owiebdVolumeType = lens _opsWorksInstanceEbsBlockDeviceVolumeType (\s a -> s { _opsWorksInstanceEbsBlockDeviceVolumeType = a })
