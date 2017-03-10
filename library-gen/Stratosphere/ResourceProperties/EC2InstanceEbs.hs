{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html

module Stratosphere.ResourceProperties.EC2InstanceEbs where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2InstanceEbs. See 'ec2InstanceEbs' for a
-- more convenient constructor.
data EC2InstanceEbs =
  EC2InstanceEbs
  { _eC2InstanceEbsDeleteOnTermination :: Maybe (Val Bool')
  , _eC2InstanceEbsEncrypted :: Maybe (Val Bool')
  , _eC2InstanceEbsIops :: Maybe (Val Integer')
  , _eC2InstanceEbsSnapshotId :: Maybe (Val Text)
  , _eC2InstanceEbsVolumeSize :: Maybe (Val Integer')
  , _eC2InstanceEbsVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2InstanceEbs where
  toJSON EC2InstanceEbs{..} =
    object $
    catMaybes
    [ ("DeleteOnTermination" .=) <$> _eC2InstanceEbsDeleteOnTermination
    , ("Encrypted" .=) <$> _eC2InstanceEbsEncrypted
    , ("Iops" .=) <$> _eC2InstanceEbsIops
    , ("SnapshotId" .=) <$> _eC2InstanceEbsSnapshotId
    , ("VolumeSize" .=) <$> _eC2InstanceEbsVolumeSize
    , ("VolumeType" .=) <$> _eC2InstanceEbsVolumeType
    ]

instance FromJSON EC2InstanceEbs where
  parseJSON (Object obj) =
    EC2InstanceEbs <$>
      obj .:? "DeleteOnTermination" <*>
      obj .:? "Encrypted" <*>
      obj .:? "Iops" <*>
      obj .:? "SnapshotId" <*>
      obj .:? "VolumeSize" <*>
      obj .:? "VolumeType"
  parseJSON _ = mempty

-- | Constructor for 'EC2InstanceEbs' containing required fields as arguments.
ec2InstanceEbs
  :: EC2InstanceEbs
ec2InstanceEbs  =
  EC2InstanceEbs
  { _eC2InstanceEbsDeleteOnTermination = Nothing
  , _eC2InstanceEbsEncrypted = Nothing
  , _eC2InstanceEbsIops = Nothing
  , _eC2InstanceEbsSnapshotId = Nothing
  , _eC2InstanceEbsVolumeSize = Nothing
  , _eC2InstanceEbsVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-deleteontermination
ecieDeleteOnTermination :: Lens' EC2InstanceEbs (Maybe (Val Bool'))
ecieDeleteOnTermination = lens _eC2InstanceEbsDeleteOnTermination (\s a -> s { _eC2InstanceEbsDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-encrypted
ecieEncrypted :: Lens' EC2InstanceEbs (Maybe (Val Bool'))
ecieEncrypted = lens _eC2InstanceEbsEncrypted (\s a -> s { _eC2InstanceEbsEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-iops
ecieIops :: Lens' EC2InstanceEbs (Maybe (Val Integer'))
ecieIops = lens _eC2InstanceEbsIops (\s a -> s { _eC2InstanceEbsIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-snapshotid
ecieSnapshotId :: Lens' EC2InstanceEbs (Maybe (Val Text))
ecieSnapshotId = lens _eC2InstanceEbsSnapshotId (\s a -> s { _eC2InstanceEbsSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumesize
ecieVolumeSize :: Lens' EC2InstanceEbs (Maybe (Val Integer'))
ecieVolumeSize = lens _eC2InstanceEbsVolumeSize (\s a -> s { _eC2InstanceEbsVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumetype
ecieVolumeType :: Lens' EC2InstanceEbs (Maybe (Val Text))
ecieVolumeType = lens _eC2InstanceEbsVolumeType (\s a -> s { _eC2InstanceEbsVolumeType = a })
