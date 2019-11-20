{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html

module Stratosphere.ResourceProperties.PinpointPushTemplateAndroidPushNotificationTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointPushTemplateAndroidPushNotificationTemplate. See
-- 'pinpointPushTemplateAndroidPushNotificationTemplate' for a more
-- convenient constructor.
data PinpointPushTemplateAndroidPushNotificationTemplate =
  PinpointPushTemplateAndroidPushNotificationTemplate
  { _pinpointPushTemplateAndroidPushNotificationTemplateAction :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateBody :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateImageIconUrl :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateImageUrl :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateSmallImageIconUrl :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateSound :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateTitle :: Maybe (Val Text)
  , _pinpointPushTemplateAndroidPushNotificationTemplateUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointPushTemplateAndroidPushNotificationTemplate where
  toJSON PinpointPushTemplateAndroidPushNotificationTemplate{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateAction
    , fmap (("Body",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateBody
    , fmap (("ImageIconUrl",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateImageIconUrl
    , fmap (("ImageUrl",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateImageUrl
    , fmap (("SmallImageIconUrl",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateSmallImageIconUrl
    , fmap (("Sound",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateSound
    , fmap (("Title",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateTitle
    , fmap (("Url",) . toJSON) _pinpointPushTemplateAndroidPushNotificationTemplateUrl
    ]

-- | Constructor for 'PinpointPushTemplateAndroidPushNotificationTemplate'
-- containing required fields as arguments.
pinpointPushTemplateAndroidPushNotificationTemplate
  :: PinpointPushTemplateAndroidPushNotificationTemplate
pinpointPushTemplateAndroidPushNotificationTemplate  =
  PinpointPushTemplateAndroidPushNotificationTemplate
  { _pinpointPushTemplateAndroidPushNotificationTemplateAction = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateBody = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateImageIconUrl = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateImageUrl = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateSmallImageIconUrl = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateSound = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateTitle = Nothing
  , _pinpointPushTemplateAndroidPushNotificationTemplateUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-action
pptapntAction :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntAction = lens _pinpointPushTemplateAndroidPushNotificationTemplateAction (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-body
pptapntBody :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntBody = lens _pinpointPushTemplateAndroidPushNotificationTemplateBody (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-imageiconurl
pptapntImageIconUrl :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntImageIconUrl = lens _pinpointPushTemplateAndroidPushNotificationTemplateImageIconUrl (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateImageIconUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-imageurl
pptapntImageUrl :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntImageUrl = lens _pinpointPushTemplateAndroidPushNotificationTemplateImageUrl (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateImageUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-smallimageiconurl
pptapntSmallImageIconUrl :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntSmallImageIconUrl = lens _pinpointPushTemplateAndroidPushNotificationTemplateSmallImageIconUrl (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateSmallImageIconUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-sound
pptapntSound :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntSound = lens _pinpointPushTemplateAndroidPushNotificationTemplateSound (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateSound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-title
pptapntTitle :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntTitle = lens _pinpointPushTemplateAndroidPushNotificationTemplateTitle (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateTitle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-androidpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-androidpushnotificationtemplate-url
pptapntUrl :: Lens' PinpointPushTemplateAndroidPushNotificationTemplate (Maybe (Val Text))
pptapntUrl = lens _pinpointPushTemplateAndroidPushNotificationTemplateUrl (\s a -> s { _pinpointPushTemplateAndroidPushNotificationTemplateUrl = a })
