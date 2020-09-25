{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html

module Stratosphere.Resources.MediaLiveChannel where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveChannelEncoderSettings
import Stratosphere.ResourceProperties.MediaLiveChannelInputAttachment
import Stratosphere.ResourceProperties.MediaLiveChannelInputSpecification
import Stratosphere.ResourceProperties.MediaLiveChannelOutputDestination

-- | Full data type definition for MediaLiveChannel. See 'mediaLiveChannel'
-- for a more convenient constructor.
data MediaLiveChannel =
  MediaLiveChannel
  { _mediaLiveChannelChannelClass :: Maybe (Val Text)
  , _mediaLiveChannelDestinations :: Maybe [MediaLiveChannelOutputDestination]
  , _mediaLiveChannelEncoderSettings :: Maybe MediaLiveChannelEncoderSettings
  , _mediaLiveChannelInputAttachments :: Maybe [MediaLiveChannelInputAttachment]
  , _mediaLiveChannelInputSpecification :: Maybe MediaLiveChannelInputSpecification
  , _mediaLiveChannelLogLevel :: Maybe (Val Text)
  , _mediaLiveChannelName :: Maybe (Val Text)
  , _mediaLiveChannelRoleArn :: Maybe (Val Text)
  , _mediaLiveChannelTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties MediaLiveChannel where
  toResourceProperties MediaLiveChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaLive::Channel"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("ChannelClass",) . toJSON) _mediaLiveChannelChannelClass
        , fmap (("Destinations",) . toJSON) _mediaLiveChannelDestinations
        , fmap (("EncoderSettings",) . toJSON) _mediaLiveChannelEncoderSettings
        , fmap (("InputAttachments",) . toJSON) _mediaLiveChannelInputAttachments
        , fmap (("InputSpecification",) . toJSON) _mediaLiveChannelInputSpecification
        , fmap (("LogLevel",) . toJSON) _mediaLiveChannelLogLevel
        , fmap (("Name",) . toJSON) _mediaLiveChannelName
        , fmap (("RoleArn",) . toJSON) _mediaLiveChannelRoleArn
        , fmap (("Tags",) . toJSON) _mediaLiveChannelTags
        ]
    }

-- | Constructor for 'MediaLiveChannel' containing required fields as
-- arguments.
mediaLiveChannel
  :: MediaLiveChannel
mediaLiveChannel  =
  MediaLiveChannel
  { _mediaLiveChannelChannelClass = Nothing
  , _mediaLiveChannelDestinations = Nothing
  , _mediaLiveChannelEncoderSettings = Nothing
  , _mediaLiveChannelInputAttachments = Nothing
  , _mediaLiveChannelInputSpecification = Nothing
  , _mediaLiveChannelLogLevel = Nothing
  , _mediaLiveChannelName = Nothing
  , _mediaLiveChannelRoleArn = Nothing
  , _mediaLiveChannelTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-channelclass
mlcChannelClass :: Lens' MediaLiveChannel (Maybe (Val Text))
mlcChannelClass = lens _mediaLiveChannelChannelClass (\s a -> s { _mediaLiveChannelChannelClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-destinations
mlcDestinations :: Lens' MediaLiveChannel (Maybe [MediaLiveChannelOutputDestination])
mlcDestinations = lens _mediaLiveChannelDestinations (\s a -> s { _mediaLiveChannelDestinations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-encodersettings
mlcEncoderSettings :: Lens' MediaLiveChannel (Maybe MediaLiveChannelEncoderSettings)
mlcEncoderSettings = lens _mediaLiveChannelEncoderSettings (\s a -> s { _mediaLiveChannelEncoderSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-inputattachments
mlcInputAttachments :: Lens' MediaLiveChannel (Maybe [MediaLiveChannelInputAttachment])
mlcInputAttachments = lens _mediaLiveChannelInputAttachments (\s a -> s { _mediaLiveChannelInputAttachments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-inputspecification
mlcInputSpecification :: Lens' MediaLiveChannel (Maybe MediaLiveChannelInputSpecification)
mlcInputSpecification = lens _mediaLiveChannelInputSpecification (\s a -> s { _mediaLiveChannelInputSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-loglevel
mlcLogLevel :: Lens' MediaLiveChannel (Maybe (Val Text))
mlcLogLevel = lens _mediaLiveChannelLogLevel (\s a -> s { _mediaLiveChannelLogLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-name
mlcName :: Lens' MediaLiveChannel (Maybe (Val Text))
mlcName = lens _mediaLiveChannelName (\s a -> s { _mediaLiveChannelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-rolearn
mlcRoleArn :: Lens' MediaLiveChannel (Maybe (Val Text))
mlcRoleArn = lens _mediaLiveChannelRoleArn (\s a -> s { _mediaLiveChannelRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-tags
mlcTags :: Lens' MediaLiveChannel (Maybe Object)
mlcTags = lens _mediaLiveChannelTags (\s a -> s { _mediaLiveChannelTags = a })
