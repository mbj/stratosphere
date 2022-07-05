{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html

module Stratosphere.Resources.PinpointPushTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointPushTemplateAndroidPushNotificationTemplate
import Stratosphere.ResourceProperties.PinpointPushTemplateAPNSPushNotificationTemplate
import Stratosphere.ResourceProperties.PinpointPushTemplateDefaultPushNotificationTemplate

-- | Full data type definition for PinpointPushTemplate. See
-- 'pinpointPushTemplate' for a more convenient constructor.
data PinpointPushTemplate =
  PinpointPushTemplate
  { _pinpointPushTemplateADM :: Maybe PinpointPushTemplateAndroidPushNotificationTemplate
  , _pinpointPushTemplateAPNS :: Maybe PinpointPushTemplateAPNSPushNotificationTemplate
  , _pinpointPushTemplateBaidu :: Maybe PinpointPushTemplateAndroidPushNotificationTemplate
  , _pinpointPushTemplateDefault :: Maybe PinpointPushTemplateDefaultPushNotificationTemplate
  , _pinpointPushTemplateDefaultSubstitutions :: Maybe (Val Text)
  , _pinpointPushTemplateGCM :: Maybe PinpointPushTemplateAndroidPushNotificationTemplate
  , _pinpointPushTemplateTags :: Maybe Object
  , _pinpointPushTemplateTemplateDescription :: Maybe (Val Text)
  , _pinpointPushTemplateTemplateName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties PinpointPushTemplate where
  toResourceProperties PinpointPushTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::PushTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ADM",) . toJSON) _pinpointPushTemplateADM
        , fmap (("APNS",) . toJSON) _pinpointPushTemplateAPNS
        , fmap (("Baidu",) . toJSON) _pinpointPushTemplateBaidu
        , fmap (("Default",) . toJSON) _pinpointPushTemplateDefault
        , fmap (("DefaultSubstitutions",) . toJSON) _pinpointPushTemplateDefaultSubstitutions
        , fmap (("GCM",) . toJSON) _pinpointPushTemplateGCM
        , fmap (("Tags",) . toJSON) _pinpointPushTemplateTags
        , fmap (("TemplateDescription",) . toJSON) _pinpointPushTemplateTemplateDescription
        , (Just . ("TemplateName",) . toJSON) _pinpointPushTemplateTemplateName
        ]
    }

-- | Constructor for 'PinpointPushTemplate' containing required fields as
-- arguments.
pinpointPushTemplate
  :: Val Text -- ^ 'pptTemplateName'
  -> PinpointPushTemplate
pinpointPushTemplate templateNamearg =
  PinpointPushTemplate
  { _pinpointPushTemplateADM = Nothing
  , _pinpointPushTemplateAPNS = Nothing
  , _pinpointPushTemplateBaidu = Nothing
  , _pinpointPushTemplateDefault = Nothing
  , _pinpointPushTemplateDefaultSubstitutions = Nothing
  , _pinpointPushTemplateGCM = Nothing
  , _pinpointPushTemplateTags = Nothing
  , _pinpointPushTemplateTemplateDescription = Nothing
  , _pinpointPushTemplateTemplateName = templateNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-adm
pptADM :: Lens' PinpointPushTemplate (Maybe PinpointPushTemplateAndroidPushNotificationTemplate)
pptADM = lens _pinpointPushTemplateADM (\s a -> s { _pinpointPushTemplateADM = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-apns
pptAPNS :: Lens' PinpointPushTemplate (Maybe PinpointPushTemplateAPNSPushNotificationTemplate)
pptAPNS = lens _pinpointPushTemplateAPNS (\s a -> s { _pinpointPushTemplateAPNS = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-baidu
pptBaidu :: Lens' PinpointPushTemplate (Maybe PinpointPushTemplateAndroidPushNotificationTemplate)
pptBaidu = lens _pinpointPushTemplateBaidu (\s a -> s { _pinpointPushTemplateBaidu = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-default
pptDefault :: Lens' PinpointPushTemplate (Maybe PinpointPushTemplateDefaultPushNotificationTemplate)
pptDefault = lens _pinpointPushTemplateDefault (\s a -> s { _pinpointPushTemplateDefault = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-defaultsubstitutions
pptDefaultSubstitutions :: Lens' PinpointPushTemplate (Maybe (Val Text))
pptDefaultSubstitutions = lens _pinpointPushTemplateDefaultSubstitutions (\s a -> s { _pinpointPushTemplateDefaultSubstitutions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-gcm
pptGCM :: Lens' PinpointPushTemplate (Maybe PinpointPushTemplateAndroidPushNotificationTemplate)
pptGCM = lens _pinpointPushTemplateGCM (\s a -> s { _pinpointPushTemplateGCM = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-tags
pptTags :: Lens' PinpointPushTemplate (Maybe Object)
pptTags = lens _pinpointPushTemplateTags (\s a -> s { _pinpointPushTemplateTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-templatedescription
pptTemplateDescription :: Lens' PinpointPushTemplate (Maybe (Val Text))
pptTemplateDescription = lens _pinpointPushTemplateTemplateDescription (\s a -> s { _pinpointPushTemplateTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-templatename
pptTemplateName :: Lens' PinpointPushTemplate (Val Text)
pptTemplateName = lens _pinpointPushTemplateTemplateName (\s a -> s { _pinpointPushTemplateTemplateName = a })
