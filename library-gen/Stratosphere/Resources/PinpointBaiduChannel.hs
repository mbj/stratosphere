{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html

module Stratosphere.Resources.PinpointBaiduChannel where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointBaiduChannel. See
-- 'pinpointBaiduChannel' for a more convenient constructor.
data PinpointBaiduChannel =
  PinpointBaiduChannel
  { _pinpointBaiduChannelApiKey :: Val Text
  , _pinpointBaiduChannelApplicationId :: Val Text
  , _pinpointBaiduChannelEnabled :: Maybe (Val Bool)
  , _pinpointBaiduChannelSecretKey :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties PinpointBaiduChannel where
  toResourceProperties PinpointBaiduChannel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Pinpoint::BaiduChannel"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiKey",) . toJSON) _pinpointBaiduChannelApiKey
        , (Just . ("ApplicationId",) . toJSON) _pinpointBaiduChannelApplicationId
        , fmap (("Enabled",) . toJSON) _pinpointBaiduChannelEnabled
        , (Just . ("SecretKey",) . toJSON) _pinpointBaiduChannelSecretKey
        ]
    }

-- | Constructor for 'PinpointBaiduChannel' containing required fields as
-- arguments.
pinpointBaiduChannel
  :: Val Text -- ^ 'pbcApiKey'
  -> Val Text -- ^ 'pbcApplicationId'
  -> Val Text -- ^ 'pbcSecretKey'
  -> PinpointBaiduChannel
pinpointBaiduChannel apiKeyarg applicationIdarg secretKeyarg =
  PinpointBaiduChannel
  { _pinpointBaiduChannelApiKey = apiKeyarg
  , _pinpointBaiduChannelApplicationId = applicationIdarg
  , _pinpointBaiduChannelEnabled = Nothing
  , _pinpointBaiduChannelSecretKey = secretKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-apikey
pbcApiKey :: Lens' PinpointBaiduChannel (Val Text)
pbcApiKey = lens _pinpointBaiduChannelApiKey (\s a -> s { _pinpointBaiduChannelApiKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-applicationid
pbcApplicationId :: Lens' PinpointBaiduChannel (Val Text)
pbcApplicationId = lens _pinpointBaiduChannelApplicationId (\s a -> s { _pinpointBaiduChannelApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-enabled
pbcEnabled :: Lens' PinpointBaiduChannel (Maybe (Val Bool))
pbcEnabled = lens _pinpointBaiduChannelEnabled (\s a -> s { _pinpointBaiduChannelEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-secretkey
pbcSecretKey :: Lens' PinpointBaiduChannel (Val Text)
pbcSecretKey = lens _pinpointBaiduChannelSecretKey (\s a -> s { _pinpointBaiduChannelSecretKey = a })
