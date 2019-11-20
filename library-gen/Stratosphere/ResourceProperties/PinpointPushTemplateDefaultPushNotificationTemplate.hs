{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html

module Stratosphere.ResourceProperties.PinpointPushTemplateDefaultPushNotificationTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- PinpointPushTemplateDefaultPushNotificationTemplate. See
-- 'pinpointPushTemplateDefaultPushNotificationTemplate' for a more
-- convenient constructor.
data PinpointPushTemplateDefaultPushNotificationTemplate =
  PinpointPushTemplateDefaultPushNotificationTemplate
  { _pinpointPushTemplateDefaultPushNotificationTemplateAction :: Maybe (Val Text)
  , _pinpointPushTemplateDefaultPushNotificationTemplateBody :: Maybe (Val Text)
  , _pinpointPushTemplateDefaultPushNotificationTemplateSound :: Maybe (Val Text)
  , _pinpointPushTemplateDefaultPushNotificationTemplateTitle :: Maybe (Val Text)
  , _pinpointPushTemplateDefaultPushNotificationTemplateUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointPushTemplateDefaultPushNotificationTemplate where
  toJSON PinpointPushTemplateDefaultPushNotificationTemplate{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _pinpointPushTemplateDefaultPushNotificationTemplateAction
    , fmap (("Body",) . toJSON) _pinpointPushTemplateDefaultPushNotificationTemplateBody
    , fmap (("Sound",) . toJSON) _pinpointPushTemplateDefaultPushNotificationTemplateSound
    , fmap (("Title",) . toJSON) _pinpointPushTemplateDefaultPushNotificationTemplateTitle
    , fmap (("Url",) . toJSON) _pinpointPushTemplateDefaultPushNotificationTemplateUrl
    ]

-- | Constructor for 'PinpointPushTemplateDefaultPushNotificationTemplate'
-- containing required fields as arguments.
pinpointPushTemplateDefaultPushNotificationTemplate
  :: PinpointPushTemplateDefaultPushNotificationTemplate
pinpointPushTemplateDefaultPushNotificationTemplate  =
  PinpointPushTemplateDefaultPushNotificationTemplate
  { _pinpointPushTemplateDefaultPushNotificationTemplateAction = Nothing
  , _pinpointPushTemplateDefaultPushNotificationTemplateBody = Nothing
  , _pinpointPushTemplateDefaultPushNotificationTemplateSound = Nothing
  , _pinpointPushTemplateDefaultPushNotificationTemplateTitle = Nothing
  , _pinpointPushTemplateDefaultPushNotificationTemplateUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-action
pptdpntAction :: Lens' PinpointPushTemplateDefaultPushNotificationTemplate (Maybe (Val Text))
pptdpntAction = lens _pinpointPushTemplateDefaultPushNotificationTemplateAction (\s a -> s { _pinpointPushTemplateDefaultPushNotificationTemplateAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-body
pptdpntBody :: Lens' PinpointPushTemplateDefaultPushNotificationTemplate (Maybe (Val Text))
pptdpntBody = lens _pinpointPushTemplateDefaultPushNotificationTemplateBody (\s a -> s { _pinpointPushTemplateDefaultPushNotificationTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-sound
pptdpntSound :: Lens' PinpointPushTemplateDefaultPushNotificationTemplate (Maybe (Val Text))
pptdpntSound = lens _pinpointPushTemplateDefaultPushNotificationTemplateSound (\s a -> s { _pinpointPushTemplateDefaultPushNotificationTemplateSound = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-title
pptdpntTitle :: Lens' PinpointPushTemplateDefaultPushNotificationTemplate (Maybe (Val Text))
pptdpntTitle = lens _pinpointPushTemplateDefaultPushNotificationTemplateTitle (\s a -> s { _pinpointPushTemplateDefaultPushNotificationTemplateTitle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-pushtemplate-defaultpushnotificationtemplate.html#cfn-pinpoint-pushtemplate-defaultpushnotificationtemplate-url
pptdpntUrl :: Lens' PinpointPushTemplateDefaultPushNotificationTemplate (Maybe (Val Text))
pptdpntUrl = lens _pinpointPushTemplateDefaultPushNotificationTemplateUrl (\s a -> s { _pinpointPushTemplateDefaultPushNotificationTemplateUrl = a })
