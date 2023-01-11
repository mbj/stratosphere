
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html

module Stratosphere.ResourceProperties.PinpointEmailConfigurationSetTags where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for PinpointEmailConfigurationSetTags. See
-- 'pinpointEmailConfigurationSetTags' for a more convenient constructor.
data PinpointEmailConfigurationSetTags =
  PinpointEmailConfigurationSetTags
  { _pinpointEmailConfigurationSetTagsKey :: Maybe (Val Text)
  , _pinpointEmailConfigurationSetTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON PinpointEmailConfigurationSetTags where
  toJSON PinpointEmailConfigurationSetTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _pinpointEmailConfigurationSetTagsKey
    , fmap (("Value",) . toJSON) _pinpointEmailConfigurationSetTagsValue
    ]

-- | Constructor for 'PinpointEmailConfigurationSetTags' containing required
-- fields as arguments.
pinpointEmailConfigurationSetTags
  :: PinpointEmailConfigurationSetTags
pinpointEmailConfigurationSetTags  =
  PinpointEmailConfigurationSetTags
  { _pinpointEmailConfigurationSetTagsKey = Nothing
  , _pinpointEmailConfigurationSetTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-key
pecstKey :: Lens' PinpointEmailConfigurationSetTags (Maybe (Val Text))
pecstKey = lens _pinpointEmailConfigurationSetTagsKey (\s a -> s { _pinpointEmailConfigurationSetTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-tags.html#cfn-pinpointemail-configurationset-tags-value
pecstValue :: Lens' PinpointEmailConfigurationSetTags (Maybe (Val Text))
pecstValue = lens _pinpointEmailConfigurationSetTagsValue (\s a -> s { _pinpointEmailConfigurationSetTagsValue = a })
