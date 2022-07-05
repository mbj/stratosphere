{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html

module Stratosphere.Resources.PinpointGCMChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointGCMChannel. See
-- 'pinpointGCMChannel' for a more convenient constructor.
data PinpointGCMChannel =
  PinpointGCMChannel
  { _pinpointGCMChannelApiKey :: Val Text
  , _pinpointGCMChannelApplicationId :: Val Text
  , _pinpointGCMChannelEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointGCMChannel where
  toResourceProperties PinpointGCMChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::GCMChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiKey",) . toJSON) _pinpointGCMChannelApiKey
        , (Just . ("ApplicationId",) . toJSON) _pinpointGCMChannelApplicationId
        , fmap (("Enabled",) . toJSON) _pinpointGCMChannelEnabled
        ]
    }

-- | Constructor for 'PinpointGCMChannel' containing required fields as
-- arguments.
pinpointGCMChannel
  :: Val Text -- ^ 'pgcmcApiKey'
  -> Val Text -- ^ 'pgcmcApplicationId'
  -> PinpointGCMChannel
pinpointGCMChannel apiKeyarg applicationIdarg =
  PinpointGCMChannel
  { _pinpointGCMChannelApiKey = apiKeyarg
  , _pinpointGCMChannelApplicationId = applicationIdarg
  , _pinpointGCMChannelEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html#cfn-pinpoint-gcmchannel-apikey
pgcmcApiKey :: Lens' PinpointGCMChannel (Val Text)
pgcmcApiKey = lens _pinpointGCMChannelApiKey (\s a -> s { _pinpointGCMChannelApiKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html#cfn-pinpoint-gcmchannel-applicationid
pgcmcApplicationId :: Lens' PinpointGCMChannel (Val Text)
pgcmcApplicationId = lens _pinpointGCMChannelApplicationId (\s a -> s { _pinpointGCMChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html#cfn-pinpoint-gcmchannel-enabled
pgcmcEnabled :: Lens' PinpointGCMChannel (Maybe (Val Bool))
pgcmcEnabled = lens _pinpointGCMChannelEnabled (\s a -> s { _pinpointGCMChannelEnabled = a })
