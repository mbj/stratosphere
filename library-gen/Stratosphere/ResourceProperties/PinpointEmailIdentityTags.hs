
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html

module Stratosphere.ResourceProperties.PinpointEmailIdentityTags where

import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEmailIdentityTags. See
-- 'pinpointEmailIdentityTags' for a more convenient constructor.
data PinpointEmailIdentityTags =
  PinpointEmailIdentityTags
  { _pinpointEmailIdentityTagsKey :: Maybe (Val Text)
  , _pinpointEmailIdentityTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailIdentityTags where
  toJSON PinpointEmailIdentityTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _pinpointEmailIdentityTagsKey
    , fmap (("Value",) . toJSON) _pinpointEmailIdentityTagsValue
    ]

-- | Constructor for 'PinpointEmailIdentityTags' containing required fields as
-- arguments.
pinpointEmailIdentityTags
  :: PinpointEmailIdentityTags
pinpointEmailIdentityTags  =
  PinpointEmailIdentityTags
  { _pinpointEmailIdentityTagsKey = Nothing
  , _pinpointEmailIdentityTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html#cfn-pinpointemail-identity-tags-key
peitKey :: Lens' PinpointEmailIdentityTags (Maybe (Val Text))
peitKey = lens _pinpointEmailIdentityTagsKey (\s a -> s { _pinpointEmailIdentityTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-identity-tags.html#cfn-pinpointemail-identity-tags-value
peitValue :: Lens' PinpointEmailIdentityTags (Maybe (Val Text))
peitValue = lens _pinpointEmailIdentityTagsValue (\s a -> s { _pinpointEmailIdentityTagsValue = a })
