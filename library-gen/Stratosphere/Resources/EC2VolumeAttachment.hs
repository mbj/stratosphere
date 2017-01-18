{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html

module Stratosphere.Resources.EC2VolumeAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2VolumeAttachment. See
-- | 'ec2VolumeAttachment' for a more convenient constructor.
data EC2VolumeAttachment =
  EC2VolumeAttachment
  { _eC2VolumeAttachmentDevice :: Val Text
  , _eC2VolumeAttachmentInstanceId :: Val Text
  , _eC2VolumeAttachmentVolumeId :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EC2VolumeAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON EC2VolumeAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'EC2VolumeAttachment' containing required fields as
-- | arguments.
ec2VolumeAttachment
  :: Val Text -- ^ 'ecvaDevice'
  -> Val Text -- ^ 'ecvaInstanceId'
  -> Val Text -- ^ 'ecvaVolumeId'
  -> EC2VolumeAttachment
ec2VolumeAttachment devicearg instanceIdarg volumeIdarg =
  EC2VolumeAttachment
  { _eC2VolumeAttachmentDevice = devicearg
  , _eC2VolumeAttachmentInstanceId = instanceIdarg
  , _eC2VolumeAttachmentVolumeId = volumeIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-device
ecvaDevice :: Lens' EC2VolumeAttachment (Val Text)
ecvaDevice = lens _eC2VolumeAttachmentDevice (\s a -> s { _eC2VolumeAttachmentDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-instanceid
ecvaInstanceId :: Lens' EC2VolumeAttachment (Val Text)
ecvaInstanceId = lens _eC2VolumeAttachmentInstanceId (\s a -> s { _eC2VolumeAttachmentInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html#cfn-ec2-ebs-volumeattachment-volumeid
ecvaVolumeId :: Lens' EC2VolumeAttachment (Val Text)
ecvaVolumeId = lens _eC2VolumeAttachmentVolumeId (\s a -> s { _eC2VolumeAttachmentVolumeId = a })
