{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ebs-volumeattachment.html

module Stratosphere.Resources.EC2VolumeAttachment where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VolumeAttachment. See
-- 'ec2VolumeAttachment' for a more convenient constructor.
data EC2VolumeAttachment =
  EC2VolumeAttachment
  { _eC2VolumeAttachmentDevice :: Val Text
  , _eC2VolumeAttachmentInstanceId :: Val Text
  , _eC2VolumeAttachmentVolumeId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VolumeAttachment where
  toResourceProperties EC2VolumeAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VolumeAttachment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Device",) . toJSON) _eC2VolumeAttachmentDevice
        , (Just . ("InstanceId",) . toJSON) _eC2VolumeAttachmentInstanceId
        , (Just . ("VolumeId",) . toJSON) _eC2VolumeAttachmentVolumeId
        ]
    }

-- | Constructor for 'EC2VolumeAttachment' containing required fields as
-- arguments.
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
