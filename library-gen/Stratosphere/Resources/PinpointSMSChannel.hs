{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html

module Stratosphere.Resources.PinpointSMSChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointSMSChannel. See
-- 'pinpointSMSChannel' for a more convenient constructor.
data PinpointSMSChannel =
  PinpointSMSChannel
  { _pinpointSMSChannelApplicationId :: Val Text
  , _pinpointSMSChannelEnabled :: Maybe (Val Bool)
  , _pinpointSMSChannelSenderId :: Maybe (Val Text)
  , _pinpointSMSChannelShortCode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointSMSChannel where
  toResourceProperties PinpointSMSChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::SMSChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointSMSChannelApplicationId
        , fmap (("Enabled",) . toJSON) _pinpointSMSChannelEnabled
        , fmap (("SenderId",) . toJSON) _pinpointSMSChannelSenderId
        , fmap (("ShortCode",) . toJSON) _pinpointSMSChannelShortCode
        ]
    }

-- | Constructor for 'PinpointSMSChannel' containing required fields as
-- arguments.
pinpointSMSChannel
  :: Val Text -- ^ 'psmscApplicationId'
  -> PinpointSMSChannel
pinpointSMSChannel applicationIdarg =
  PinpointSMSChannel
  { _pinpointSMSChannelApplicationId = applicationIdarg
  , _pinpointSMSChannelEnabled = Nothing
  , _pinpointSMSChannelSenderId = Nothing
  , _pinpointSMSChannelShortCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-applicationid
psmscApplicationId :: Lens' PinpointSMSChannel (Val Text)
psmscApplicationId = lens _pinpointSMSChannelApplicationId (\s a -> s { _pinpointSMSChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-enabled
psmscEnabled :: Lens' PinpointSMSChannel (Maybe (Val Bool))
psmscEnabled = lens _pinpointSMSChannelEnabled (\s a -> s { _pinpointSMSChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-senderid
psmscSenderId :: Lens' PinpointSMSChannel (Maybe (Val Text))
psmscSenderId = lens _pinpointSMSChannelSenderId (\s a -> s { _pinpointSMSChannelSenderId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-shortcode
psmscShortCode :: Lens' PinpointSMSChannel (Maybe (Val Text))
psmscShortCode = lens _pinpointSMSChannelShortCode (\s a -> s { _pinpointSMSChannelShortCode = a })
