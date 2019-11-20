{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html

module Stratosphere.ResourceProperties.PinpointPushTemplateAPNSPushNotificationTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointPushTemplateAPNSPushNotificationTemplate. See
-- 'pinpointPushTemplateAPNSPushNotificationTemplate' for a more convenient
-- constructor.
data PinpointPushTemplateAPNSPushNotificationTemplate =
  PinpointPushTemplateAPNSPushNotificationTemplate
  { _pinpointPushTemplateAPNSPushNotificationTemplateAction :: Maybe (Val Text)
  , _pinpointPushTemplateAPNSPushNotificationTemplateBody :: Maybe (Val Text)
  , _pinpointPushTemplateAPNSPushNotificationTemplateMediaUrl :: Maybe (Val Text)
  , _pinpointPushTemplateAPNSPushNotificationTemplateSound :: Maybe (Val Text)
  , _pinpointPushTemplateAPNSPushNotificationTemplateTitle :: Maybe (Val Text)
  , _pinpointPushTemplateAPNSPushNotificationTemplateUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointPushTemplateAPNSPushNotificationTemplate where
  toJSON PinpointPushTemplateAPNSPushNotificationTemplate{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _pinpointPushTemplateAPNSPushNotificationTemplateAction
    , fmap (("Body",) . toJSON) _pinpointPushTemplateAPNSPushNotificationTemplateBody
    , fmap (("MediaUrl",) . toJSON) _pinpointPushTemplateAPNSPushNotificationTemplateMediaUrl
    , fmap (("Sound",) . toJSON) _pinpointPushTemplateAPNSPushNotificationTemplateSound
    , fmap (("Title",) . toJSON) _pinpointPushTemplateAPNSPushNotificationTemplateTitle
    , fmap (("Url",) . toJSON) _pinpointPushTemplateAPNSPushNotificationTemplateUrl
    ]

-- | Constructor for 'PinpointPushTemplateAPNSPushNotificationTemplate'
-- containing required fields as arguments.
pinpointPushTemplateAPNSPushNotificationTemplate
  :: PinpointPushTemplateAPNSPushNotificationTemplate
pinpointPushTemplateAPNSPushNotificationTemplate  =
  PinpointPushTemplateAPNSPushNotificationTemplate
  { _pinpointPushTemplateAPNSPushNotificationTemplateAction = Nothing
  , _pinpointPushTemplateAPNSPushNotificationTemplateBody = Nothing
  , _pinpointPushTemplateAPNSPushNotificationTemplateMediaUrl = Nothing
  , _pinpointPushTemplateAPNSPushNotificationTemplateSound = Nothing
  , _pinpointPushTemplateAPNSPushNotificationTemplateTitle = Nothing
  , _pinpointPushTemplateAPNSPushNotificationTemplateUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-action
pptapnspntAction :: Lens' PinpointPushTemplateAPNSPushNotificationTemplate (Maybe (Val Text))
pptapnspntAction = lens _pinpointPushTemplateAPNSPushNotificationTemplateAction (\s a -> s { _pinpointPushTemplateAPNSPushNotificationTemplateAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-body
pptapnspntBody :: Lens' PinpointPushTemplateAPNSPushNotificationTemplate (Maybe (Val Text))
pptapnspntBody = lens _pinpointPushTemplateAPNSPushNotificationTemplateBody (\s a -> s { _pinpointPushTemplateAPNSPushNotificationTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-mediaurl
pptapnspntMediaUrl :: Lens' PinpointPushTemplateAPNSPushNotificationTemplate (Maybe (Val Text))
pptapnspntMediaUrl = lens _pinpointPushTemplateAPNSPushNotificationTemplateMediaUrl (\s a -> s { _pinpointPushTemplateAPNSPushNotificationTemplateMediaUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-sound
pptapnspntSound :: Lens' PinpointPushTemplateAPNSPushNotificationTemplate (Maybe (Val Text))
pptapnspntSound = lens _pinpointPushTemplateAPNSPushNotificationTemplateSound (\s a -> s { _pinpointPushTemplateAPNSPushNotificationTemplateSound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-title
pptapnspntTitle :: Lens' PinpointPushTemplateAPNSPushNotificationTemplate (Maybe (Val Text))
pptapnspntTitle = lens _pinpointPushTemplateAPNSPushNotificationTemplateTitle (\s a -> s { _pinpointPushTemplateAPNSPushNotificationTemplateTitle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-apnspushnotificationtemplate.html#cfn-pinpoint-pushtemplate-apnspushnotificationtemplate-url
pptapnspntUrl :: Lens' PinpointPushTemplateAPNSPushNotificationTemplate (Maybe (Val Text))
pptapnspntUrl = lens _pinpointPushTemplateAPNSPushNotificationTemplateUrl (\s a -> s { _pinpointPushTemplateAPNSPushNotificationTemplateUrl = a })
