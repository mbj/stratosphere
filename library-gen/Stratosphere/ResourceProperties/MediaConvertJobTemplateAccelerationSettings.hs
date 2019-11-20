{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-accelerationsettings.html

module Stratosphere.ResourceProperties.MediaConvertJobTemplateAccelerationSettings where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaConvertJobTemplateAccelerationSettings. See
-- 'mediaConvertJobTemplateAccelerationSettings' for a more convenient
-- constructor.
data MediaConvertJobTemplateAccelerationSettings =
  MediaConvertJobTemplateAccelerationSettings
  { _mediaConvertJobTemplateAccelerationSettingsMode :: Val Text
  } deriving (Show, Eq)

instance ToJSON MediaConvertJobTemplateAccelerationSettings where
  toJSON MediaConvertJobTemplateAccelerationSettings{..} =
    object $
    catMaybes
    [ (Just . ("Mode",) . toJSON) _mediaConvertJobTemplateAccelerationSettingsMode
    ]

-- | Constructor for 'MediaConvertJobTemplateAccelerationSettings' containing
-- required fields as arguments.
mediaConvertJobTemplateAccelerationSettings
  :: Val Text -- ^ 'mcjtasMode'
  -> MediaConvertJobTemplateAccelerationSettings
mediaConvertJobTemplateAccelerationSettings modearg =
  MediaConvertJobTemplateAccelerationSettings
  { _mediaConvertJobTemplateAccelerationSettingsMode = modearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-accelerationsettings.html#cfn-mediaconvert-jobtemplate-accelerationsettings-mode
mcjtasMode :: Lens' MediaConvertJobTemplateAccelerationSettings (Val Text)
mcjtasMode = lens _mediaConvertJobTemplateAccelerationSettingsMode (\s a -> s { _mediaConvertJobTemplateAccelerationSettingsMode = a })
