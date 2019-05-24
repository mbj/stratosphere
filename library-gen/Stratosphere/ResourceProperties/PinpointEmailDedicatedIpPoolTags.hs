{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html

module Stratosphere.ResourceProperties.PinpointEmailDedicatedIpPoolTags where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEmailDedicatedIpPoolTags. See
-- 'pinpointEmailDedicatedIpPoolTags' for a more convenient constructor.
data PinpointEmailDedicatedIpPoolTags =
  PinpointEmailDedicatedIpPoolTags
  { _pinpointEmailDedicatedIpPoolTagsKey :: Maybe (Val Text)
  , _pinpointEmailDedicatedIpPoolTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailDedicatedIpPoolTags where
  toJSON PinpointEmailDedicatedIpPoolTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _pinpointEmailDedicatedIpPoolTagsKey
    , fmap (("Value",) . toJSON) _pinpointEmailDedicatedIpPoolTagsValue
    ]

-- | Constructor for 'PinpointEmailDedicatedIpPoolTags' containing required
-- fields as arguments.
pinpointEmailDedicatedIpPoolTags
  :: PinpointEmailDedicatedIpPoolTags
pinpointEmailDedicatedIpPoolTags  =
  PinpointEmailDedicatedIpPoolTags
  { _pinpointEmailDedicatedIpPoolTagsKey = Nothing
  , _pinpointEmailDedicatedIpPoolTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html#cfn-pinpointemail-dedicatedippool-tags-key
pediptKey :: Lens' PinpointEmailDedicatedIpPoolTags (Maybe (Val Text))
pediptKey = lens _pinpointEmailDedicatedIpPoolTagsKey (\s a -> s { _pinpointEmailDedicatedIpPoolTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html#cfn-pinpointemail-dedicatedippool-tags-value
pediptValue :: Lens' PinpointEmailDedicatedIpPoolTags (Maybe (Val Text))
pediptValue = lens _pinpointEmailDedicatedIpPoolTagsValue (\s a -> s { _pinpointEmailDedicatedIpPoolTagsValue = a })
