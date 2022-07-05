{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html

module Stratosphere.Resources.PinpointEmailConfigurationSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetDeliveryOptions
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetReputationOptions
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetSendingOptions
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetTags
import Stratosphere.ResourceProperties.PinpointEmailConfigurationSetTrackingOptions

-- | Full data type definition for PinpointEmailConfigurationSet. See
-- 'pinpointEmailConfigurationSet' for a more convenient constructor.
data PinpointEmailConfigurationSet =
  PinpointEmailConfigurationSet
  { _pinpointEmailConfigurationSetDeliveryOptions :: Maybe PinpointEmailConfigurationSetDeliveryOptions
  , _pinpointEmailConfigurationSetName :: Val Text
  , _pinpointEmailConfigurationSetReputationOptions :: Maybe PinpointEmailConfigurationSetReputationOptions
  , _pinpointEmailConfigurationSetSendingOptions :: Maybe PinpointEmailConfigurationSetSendingOptions
  , _pinpointEmailConfigurationSetTags :: Maybe [PinpointEmailConfigurationSetTags]
  , _pinpointEmailConfigurationSetTrackingOptions :: Maybe PinpointEmailConfigurationSetTrackingOptions
  } deriving (Show, Eq)

instance ToResourceProperties PinpointEmailConfigurationSet where
  toResourceProperties PinpointEmailConfigurationSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::PinpointEmail::ConfigurationSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeliveryOptions",) . toJSON) _pinpointEmailConfigurationSetDeliveryOptions
        , (Just . ("Name",) . toJSON) _pinpointEmailConfigurationSetName
        , fmap (("ReputationOptions",) . toJSON) _pinpointEmailConfigurationSetReputationOptions
        , fmap (("SendingOptions",) . toJSON) _pinpointEmailConfigurationSetSendingOptions
        , fmap (("Tags",) . toJSON) _pinpointEmailConfigurationSetTags
        , fmap (("TrackingOptions",) . toJSON) _pinpointEmailConfigurationSetTrackingOptions
        ]
    }

-- | Constructor for 'PinpointEmailConfigurationSet' containing required
-- fields as arguments.
pinpointEmailConfigurationSet
  :: Val Text -- ^ 'pecsName'
  -> PinpointEmailConfigurationSet
pinpointEmailConfigurationSet namearg =
  PinpointEmailConfigurationSet
  { _pinpointEmailConfigurationSetDeliveryOptions = Nothing
  , _pinpointEmailConfigurationSetName = namearg
  , _pinpointEmailConfigurationSetReputationOptions = Nothing
  , _pinpointEmailConfigurationSetSendingOptions = Nothing
  , _pinpointEmailConfigurationSetTags = Nothing
  , _pinpointEmailConfigurationSetTrackingOptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-deliveryoptions
pecsDeliveryOptions :: Lens' PinpointEmailConfigurationSet (Maybe PinpointEmailConfigurationSetDeliveryOptions)
pecsDeliveryOptions = lens _pinpointEmailConfigurationSetDeliveryOptions (\s a -> s { _pinpointEmailConfigurationSetDeliveryOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-name
pecsName :: Lens' PinpointEmailConfigurationSet (Val Text)
pecsName = lens _pinpointEmailConfigurationSetName (\s a -> s { _pinpointEmailConfigurationSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-reputationoptions
pecsReputationOptions :: Lens' PinpointEmailConfigurationSet (Maybe PinpointEmailConfigurationSetReputationOptions)
pecsReputationOptions = lens _pinpointEmailConfigurationSetReputationOptions (\s a -> s { _pinpointEmailConfigurationSetReputationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-sendingoptions
pecsSendingOptions :: Lens' PinpointEmailConfigurationSet (Maybe PinpointEmailConfigurationSetSendingOptions)
pecsSendingOptions = lens _pinpointEmailConfigurationSetSendingOptions (\s a -> s { _pinpointEmailConfigurationSetSendingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-tags
pecsTags :: Lens' PinpointEmailConfigurationSet (Maybe [PinpointEmailConfigurationSetTags])
pecsTags = lens _pinpointEmailConfigurationSetTags (\s a -> s { _pinpointEmailConfigurationSetTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationset.html#cfn-pinpointemail-configurationset-trackingoptions
pecsTrackingOptions :: Lens' PinpointEmailConfigurationSet (Maybe PinpointEmailConfigurationSetTrackingOptions)
pecsTrackingOptions = lens _pinpointEmailConfigurationSetTrackingOptions (\s a -> s { _pinpointEmailConfigurationSetTrackingOptions = a })
