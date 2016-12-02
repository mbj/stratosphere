{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html

module Stratosphere.ResourceProperties.EC2InstanceEbs where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2InstanceEbs. See 'ec2InstanceEbs' for a
-- | more convenient constructor.
data EC2InstanceEbs =
  EC2InstanceEbs
  { _eC2InstanceEbsDeleteOnTermination :: Maybe (Val Bool')
  , _eC2InstanceEbsEncrypted :: Maybe (Val Bool')
  , _eC2InstanceEbsIops :: Maybe (Val Integer')
  , _eC2InstanceEbsSnapshotId :: Maybe (Val Text)
  , _eC2InstanceEbsVolumeSize :: Maybe (Val Integer')
  , _eC2InstanceEbsVolumeType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2InstanceEbs where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON EC2InstanceEbs where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

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
