{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html

module Stratosphere.ResourceProperties.MediaLiveChannelInputAttachment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelAutomaticInputFailoverSettings
import Stratosphere.ResourceProperties.MediaLiveChannelInputSettings

-- | Full data type definition for MediaLiveChannelInputAttachment. See
-- 'mediaLiveChannelInputAttachment' for a more convenient constructor.
data MediaLiveChannelInputAttachment =
  MediaLiveChannelInputAttachment
  { _mediaLiveChannelInputAttachmentAutomaticInputFailoverSettings :: Maybe MediaLiveChannelAutomaticInputFailoverSettings
  , _mediaLiveChannelInputAttachmentInputAttachmentName :: Maybe (Val Text)
  , _mediaLiveChannelInputAttachmentInputId :: Maybe (Val Text)
  , _mediaLiveChannelInputAttachmentInputSettings :: Maybe MediaLiveChannelInputSettings
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelInputAttachment where
  toJSON MediaLiveChannelInputAttachment{..} =
    object $
    catMaybes
    [ fmap (("AutomaticInputFailoverSettings",) . toJSON) _mediaLiveChannelInputAttachmentAutomaticInputFailoverSettings
    , fmap (("InputAttachmentName",) . toJSON) _mediaLiveChannelInputAttachmentInputAttachmentName
    , fmap (("InputId",) . toJSON) _mediaLiveChannelInputAttachmentInputId
    , fmap (("InputSettings",) . toJSON) _mediaLiveChannelInputAttachmentInputSettings
    ]

-- | Constructor for 'MediaLiveChannelInputAttachment' containing required
-- fields as arguments.
mediaLiveChannelInputAttachment
  :: MediaLiveChannelInputAttachment
mediaLiveChannelInputAttachment  =
  MediaLiveChannelInputAttachment
  { _mediaLiveChannelInputAttachmentAutomaticInputFailoverSettings = Nothing
  , _mediaLiveChannelInputAttachmentInputAttachmentName = Nothing
  , _mediaLiveChannelInputAttachmentInputId = Nothing
  , _mediaLiveChannelInputAttachmentInputSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-automaticinputfailoversettings
mlciaAutomaticInputFailoverSettings :: Lens' MediaLiveChannelInputAttachment (Maybe MediaLiveChannelAutomaticInputFailoverSettings)
mlciaAutomaticInputFailoverSettings = lens _mediaLiveChannelInputAttachmentAutomaticInputFailoverSettings (\s a -> s { _mediaLiveChannelInputAttachmentAutomaticInputFailoverSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-inputattachmentname
mlciaInputAttachmentName :: Lens' MediaLiveChannelInputAttachment (Maybe (Val Text))
mlciaInputAttachmentName = lens _mediaLiveChannelInputAttachmentInputAttachmentName (\s a -> s { _mediaLiveChannelInputAttachmentInputAttachmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-inputid
mlciaInputId :: Lens' MediaLiveChannelInputAttachment (Maybe (Val Text))
mlciaInputId = lens _mediaLiveChannelInputAttachmentInputId (\s a -> s { _mediaLiveChannelInputAttachmentInputId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-inputsettings
mlciaInputSettings :: Lens' MediaLiveChannelInputAttachment (Maybe MediaLiveChannelInputSettings)
mlciaInputSettings = lens _mediaLiveChannelInputAttachmentInputSettings (\s a -> s { _mediaLiveChannelInputAttachmentInputSettings = a })
