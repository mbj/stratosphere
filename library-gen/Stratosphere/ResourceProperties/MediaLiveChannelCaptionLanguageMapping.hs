{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html

module Stratosphere.ResourceProperties.MediaLiveChannelCaptionLanguageMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveChannelCaptionLanguageMapping. See
-- 'mediaLiveChannelCaptionLanguageMapping' for a more convenient
-- constructor.
data MediaLiveChannelCaptionLanguageMapping =
  MediaLiveChannelCaptionLanguageMapping
  { _mediaLiveChannelCaptionLanguageMappingCaptionChannel :: Maybe (Val Integer)
  , _mediaLiveChannelCaptionLanguageMappingLanguageCode :: Maybe (Val Text)
  , _mediaLiveChannelCaptionLanguageMappingLanguageDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveChannelCaptionLanguageMapping where
  toJSON MediaLiveChannelCaptionLanguageMapping{..} =
    object $
    catMaybes
    [ fmap (("CaptionChannel",) . toJSON) _mediaLiveChannelCaptionLanguageMappingCaptionChannel
    , fmap (("LanguageCode",) . toJSON) _mediaLiveChannelCaptionLanguageMappingLanguageCode
    , fmap (("LanguageDescription",) . toJSON) _mediaLiveChannelCaptionLanguageMappingLanguageDescription
    ]

-- | Constructor for 'MediaLiveChannelCaptionLanguageMapping' containing
-- required fields as arguments.
mediaLiveChannelCaptionLanguageMapping
  :: MediaLiveChannelCaptionLanguageMapping
mediaLiveChannelCaptionLanguageMapping  =
  MediaLiveChannelCaptionLanguageMapping
  { _mediaLiveChannelCaptionLanguageMappingCaptionChannel = Nothing
  , _mediaLiveChannelCaptionLanguageMappingLanguageCode = Nothing
  , _mediaLiveChannelCaptionLanguageMappingLanguageDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html#cfn-medialive-channel-captionlanguagemapping-captionchannel
mlcclmCaptionChannel :: Lens' MediaLiveChannelCaptionLanguageMapping (Maybe (Val Integer))
mlcclmCaptionChannel = lens _mediaLiveChannelCaptionLanguageMappingCaptionChannel (\s a -> s { _mediaLiveChannelCaptionLanguageMappingCaptionChannel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html#cfn-medialive-channel-captionlanguagemapping-languagecode
mlcclmLanguageCode :: Lens' MediaLiveChannelCaptionLanguageMapping (Maybe (Val Text))
mlcclmLanguageCode = lens _mediaLiveChannelCaptionLanguageMappingLanguageCode (\s a -> s { _mediaLiveChannelCaptionLanguageMappingLanguageCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionlanguagemapping.html#cfn-medialive-channel-captionlanguagemapping-languagedescription
mlcclmLanguageDescription :: Lens' MediaLiveChannelCaptionLanguageMapping (Maybe (Val Text))
mlcclmLanguageDescription = lens _mediaLiveChannelCaptionLanguageMappingLanguageDescription (\s a -> s { _mediaLiveChannelCaptionLanguageMappingLanguageDescription = a })
