{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html

module Stratosphere.ResourceProperties.EC2SpotFleetEbs where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetEbs. See 'ec2SpotFleetEbs' for
-- a more convenient constructor.
data EC2SpotFleetEbs =
  EC2SpotFleetEbs
  { _eC2SpotFleetEbsDeleteOnTermination :: Maybe (Val Bool')
  , _eC2SpotFleetEbsEncrypted :: Maybe (Val Bool')
  , _eC2SpotFleetEbsIops :: Maybe (Val Integer')
  , _eC2SpotFleetEbsSnapshotId :: Maybe (Val Text)
  , _eC2SpotFleetEbsVolumeSize :: Maybe (Val Integer')
  , _eC2SpotFleetEbsVolumeType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetEbs where
  toJSON EC2SpotFleetEbs{..} =
    object $
    catMaybes
    [ ("DeleteOnTermination" .=) <$> _eC2SpotFleetEbsDeleteOnTermination
    , ("Encrypted" .=) <$> _eC2SpotFleetEbsEncrypted
    , ("Iops" .=) <$> _eC2SpotFleetEbsIops
    , ("SnapshotId" .=) <$> _eC2SpotFleetEbsSnapshotId
    , ("VolumeSize" .=) <$> _eC2SpotFleetEbsVolumeSize
    , ("VolumeType" .=) <$> _eC2SpotFleetEbsVolumeType
    ]

instance FromJSON EC2SpotFleetEbs where
  parseJSON (Object obj) =
    EC2SpotFleetEbs <$>
      obj .:? "DeleteOnTermination" <*>
      obj .:? "Encrypted" <*>
      obj .:? "Iops" <*>
      obj .:? "SnapshotId" <*>
      obj .:? "VolumeSize" <*>
      obj .:? "VolumeType"
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetEbs' containing required fields as
-- arguments.
ec2SpotFleetEbs
  :: EC2SpotFleetEbs
ec2SpotFleetEbs  =
  EC2SpotFleetEbs
  { _eC2SpotFleetEbsDeleteOnTermination = Nothing
  , _eC2SpotFleetEbsEncrypted = Nothing
  , _eC2SpotFleetEbsIops = Nothing
  , _eC2SpotFleetEbsSnapshotId = Nothing
  , _eC2SpotFleetEbsVolumeSize = Nothing
  , _eC2SpotFleetEbsVolumeType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebs-deleteontermination
ecsfeDeleteOnTermination :: Lens' EC2SpotFleetEbs (Maybe (Val Bool'))
ecsfeDeleteOnTermination = lens _eC2SpotFleetEbsDeleteOnTermination (\s a -> s { _eC2SpotFleetEbsDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebs-encrypted
ecsfeEncrypted :: Lens' EC2SpotFleetEbs (Maybe (Val Bool'))
ecsfeEncrypted = lens _eC2SpotFleetEbsEncrypted (\s a -> s { _eC2SpotFleetEbsEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebs-iops
ecsfeIops :: Lens' EC2SpotFleetEbs (Maybe (Val Integer'))
ecsfeIops = lens _eC2SpotFleetEbsIops (\s a -> s { _eC2SpotFleetEbsIops = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebs-snapshotid
ecsfeSnapshotId :: Lens' EC2SpotFleetEbs (Maybe (Val Text))
ecsfeSnapshotId = lens _eC2SpotFleetEbsSnapshotId (\s a -> s { _eC2SpotFleetEbsSnapshotId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebs-volumesize
ecsfeVolumeSize :: Lens' EC2SpotFleetEbs (Maybe (Val Integer'))
ecsfeVolumeSize = lens _eC2SpotFleetEbsVolumeSize (\s a -> s { _eC2SpotFleetEbsVolumeSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebs-volumetype
ecsfeVolumeType :: Lens' EC2SpotFleetEbs (Maybe (Val Text))
ecsfeVolumeType = lens _eC2SpotFleetEbsVolumeType (\s a -> s { _eC2SpotFleetEbsVolumeType = a })
