{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html

module Stratosphere.Resources.MediaConvertPreset where

import Stratosphere.ResourceImports


-- | Full data type definition for MediaConvertPreset. See
-- 'mediaConvertPreset' for a more convenient constructor.
data MediaConvertPreset =
  MediaConvertPreset
  { _mediaConvertPresetCategory :: Maybe (Val Text)
  , _mediaConvertPresetDescription :: Maybe (Val Text)
  , _mediaConvertPresetName :: Maybe (Val Text)
  , _mediaConvertPresetSettingsJson :: Object
  , _mediaConvertPresetTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties MediaConvertPreset where
  toResourceProperties MediaConvertPreset{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaConvert::Preset"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Category",) . toJSON) _mediaConvertPresetCategory
        , fmap (("Description",) . toJSON) _mediaConvertPresetDescription
        , fmap (("Name",) . toJSON) _mediaConvertPresetName
        , (Just . ("SettingsJson",) . toJSON) _mediaConvertPresetSettingsJson
        , fmap (("Tags",) . toJSON) _mediaConvertPresetTags
        ]
    }

-- | Constructor for 'MediaConvertPreset' containing required fields as
-- arguments.
mediaConvertPreset
  :: Object -- ^ 'mcpSettingsJson'
  -> MediaConvertPreset
mediaConvertPreset settingsJsonarg =
  MediaConvertPreset
  { _mediaConvertPresetCategory = Nothing
  , _mediaConvertPresetDescription = Nothing
  , _mediaConvertPresetName = Nothing
  , _mediaConvertPresetSettingsJson = settingsJsonarg
  , _mediaConvertPresetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-category
mcpCategory :: Lens' MediaConvertPreset (Maybe (Val Text))
mcpCategory = lens _mediaConvertPresetCategory (\s a -> s { _mediaConvertPresetCategory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-description
mcpDescription :: Lens' MediaConvertPreset (Maybe (Val Text))
mcpDescription = lens _mediaConvertPresetDescription (\s a -> s { _mediaConvertPresetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-name
mcpName :: Lens' MediaConvertPreset (Maybe (Val Text))
mcpName = lens _mediaConvertPresetName (\s a -> s { _mediaConvertPresetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-settingsjson
mcpSettingsJson :: Lens' MediaConvertPreset Object
mcpSettingsJson = lens _mediaConvertPresetSettingsJson (\s a -> s { _mediaConvertPresetSettingsJson = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-preset.html#cfn-mediaconvert-preset-tags
mcpTags :: Lens' MediaConvertPreset (Maybe Object)
mcpTags = lens _mediaConvertPresetTags (\s a -> s { _mediaConvertPresetTags = a })
