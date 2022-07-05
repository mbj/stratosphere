{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html

module Stratosphere.Resources.MediaConvertJobTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaConvertJobTemplateAccelerationSettings
import Stratosphere.ResourceProperties.MediaConvertJobTemplateHopDestination

-- | Full data type definition for MediaConvertJobTemplate. See
-- 'mediaConvertJobTemplate' for a more convenient constructor.
data MediaConvertJobTemplate =
  MediaConvertJobTemplate
  { _mediaConvertJobTemplateAccelerationSettings :: Maybe MediaConvertJobTemplateAccelerationSettings
  , _mediaConvertJobTemplateCategory :: Maybe (Val Text)
  , _mediaConvertJobTemplateDescription :: Maybe (Val Text)
  , _mediaConvertJobTemplateHopDestinations :: Maybe [MediaConvertJobTemplateHopDestination]
  , _mediaConvertJobTemplateName :: Maybe (Val Text)
  , _mediaConvertJobTemplatePriority :: Maybe (Val Integer)
  , _mediaConvertJobTemplateQueue :: Maybe (Val Text)
  , _mediaConvertJobTemplateSettingsJson :: Object
  , _mediaConvertJobTemplateStatusUpdateInterval :: Maybe (Val Text)
  , _mediaConvertJobTemplateTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties MediaConvertJobTemplate where
  toResourceProperties MediaConvertJobTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaConvert::JobTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccelerationSettings",) . toJSON) _mediaConvertJobTemplateAccelerationSettings
        , fmap (("Category",) . toJSON) _mediaConvertJobTemplateCategory
        , fmap (("Description",) . toJSON) _mediaConvertJobTemplateDescription
        , fmap (("HopDestinations",) . toJSON) _mediaConvertJobTemplateHopDestinations
        , fmap (("Name",) . toJSON) _mediaConvertJobTemplateName
        , fmap (("Priority",) . toJSON) _mediaConvertJobTemplatePriority
        , fmap (("Queue",) . toJSON) _mediaConvertJobTemplateQueue
        , (Just . ("SettingsJson",) . toJSON) _mediaConvertJobTemplateSettingsJson
        , fmap (("StatusUpdateInterval",) . toJSON) _mediaConvertJobTemplateStatusUpdateInterval
        , fmap (("Tags",) . toJSON) _mediaConvertJobTemplateTags
        ]
    }

-- | Constructor for 'MediaConvertJobTemplate' containing required fields as
-- arguments.
mediaConvertJobTemplate
  :: Object -- ^ 'mcjtSettingsJson'
  -> MediaConvertJobTemplate
mediaConvertJobTemplate settingsJsonarg =
  MediaConvertJobTemplate
  { _mediaConvertJobTemplateAccelerationSettings = Nothing
  , _mediaConvertJobTemplateCategory = Nothing
  , _mediaConvertJobTemplateDescription = Nothing
  , _mediaConvertJobTemplateHopDestinations = Nothing
  , _mediaConvertJobTemplateName = Nothing
  , _mediaConvertJobTemplatePriority = Nothing
  , _mediaConvertJobTemplateQueue = Nothing
  , _mediaConvertJobTemplateSettingsJson = settingsJsonarg
  , _mediaConvertJobTemplateStatusUpdateInterval = Nothing
  , _mediaConvertJobTemplateTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-accelerationsettings
mcjtAccelerationSettings :: Lens' MediaConvertJobTemplate (Maybe MediaConvertJobTemplateAccelerationSettings)
mcjtAccelerationSettings = lens _mediaConvertJobTemplateAccelerationSettings (\s a -> s { _mediaConvertJobTemplateAccelerationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-category
mcjtCategory :: Lens' MediaConvertJobTemplate (Maybe (Val Text))
mcjtCategory = lens _mediaConvertJobTemplateCategory (\s a -> s { _mediaConvertJobTemplateCategory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-description
mcjtDescription :: Lens' MediaConvertJobTemplate (Maybe (Val Text))
mcjtDescription = lens _mediaConvertJobTemplateDescription (\s a -> s { _mediaConvertJobTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-hopdestinations
mcjtHopDestinations :: Lens' MediaConvertJobTemplate (Maybe [MediaConvertJobTemplateHopDestination])
mcjtHopDestinations = lens _mediaConvertJobTemplateHopDestinations (\s a -> s { _mediaConvertJobTemplateHopDestinations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-name
mcjtName :: Lens' MediaConvertJobTemplate (Maybe (Val Text))
mcjtName = lens _mediaConvertJobTemplateName (\s a -> s { _mediaConvertJobTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-priority
mcjtPriority :: Lens' MediaConvertJobTemplate (Maybe (Val Integer))
mcjtPriority = lens _mediaConvertJobTemplatePriority (\s a -> s { _mediaConvertJobTemplatePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-queue
mcjtQueue :: Lens' MediaConvertJobTemplate (Maybe (Val Text))
mcjtQueue = lens _mediaConvertJobTemplateQueue (\s a -> s { _mediaConvertJobTemplateQueue = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-settingsjson
mcjtSettingsJson :: Lens' MediaConvertJobTemplate Object
mcjtSettingsJson = lens _mediaConvertJobTemplateSettingsJson (\s a -> s { _mediaConvertJobTemplateSettingsJson = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-statusupdateinterval
mcjtStatusUpdateInterval :: Lens' MediaConvertJobTemplate (Maybe (Val Text))
mcjtStatusUpdateInterval = lens _mediaConvertJobTemplateStatusUpdateInterval (\s a -> s { _mediaConvertJobTemplateStatusUpdateInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-tags
mcjtTags :: Lens' MediaConvertJobTemplate (Maybe Object)
mcjtTags = lens _mediaConvertJobTemplateTags (\s a -> s { _mediaConvertJobTemplateTags = a })
