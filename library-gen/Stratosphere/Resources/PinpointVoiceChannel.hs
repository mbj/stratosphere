{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html

module Stratosphere.Resources.PinpointVoiceChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointVoiceChannel. See
-- 'pinpointVoiceChannel' for a more convenient constructor.
data PinpointVoiceChannel =
  PinpointVoiceChannel
  { _pinpointVoiceChannelApplicationId :: Val Text
  , _pinpointVoiceChannelEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties PinpointVoiceChannel where
  toResourceProperties PinpointVoiceChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::VoiceChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _pinpointVoiceChannelApplicationId
        , fmap (("Enabled",) . toJSON) _pinpointVoiceChannelEnabled
        ]
    }

-- | Constructor for 'PinpointVoiceChannel' containing required fields as
-- arguments.
pinpointVoiceChannel
  :: Val Text -- ^ 'pvcApplicationId'
  -> PinpointVoiceChannel
pinpointVoiceChannel applicationIdarg =
  PinpointVoiceChannel
  { _pinpointVoiceChannelApplicationId = applicationIdarg
  , _pinpointVoiceChannelEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-applicationid
pvcApplicationId :: Lens' PinpointVoiceChannel (Val Text)
pvcApplicationId = lens _pinpointVoiceChannelApplicationId (\s a -> s { _pinpointVoiceChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-enabled
pvcEnabled :: Lens' PinpointVoiceChannel (Maybe (Val Bool))
pvcEnabled = lens _pinpointVoiceChannelEnabled (\s a -> s { _pinpointVoiceChannelEnabled = a })
