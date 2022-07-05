{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html

module Stratosphere.Resources.IoTThing where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTThingAttributePayload

-- | Full data type definition for IoTThing. See 'ioTThing' for a more
-- convenient constructor.
data IoTThing =
  IoTThing
  { _ioTThingAttributePayload :: Maybe IoTThingAttributePayload
  , _ioTThingThingName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties IoTThing where
  toResourceProperties IoTThing{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT::Thing"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AttributePayload",) . toJSON) _ioTThingAttributePayload
        , fmap (("ThingName",) . toJSON) _ioTThingThingName
        ]
    }

-- | Constructor for 'IoTThing' containing required fields as arguments.
ioTThing
  :: IoTThing
ioTThing  =
  IoTThing
  { _ioTThingAttributePayload = Nothing
  , _ioTThingThingName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-attributepayload
ittAttributePayload :: Lens' IoTThing (Maybe IoTThingAttributePayload)
ittAttributePayload = lens _ioTThingAttributePayload (\s a -> s { _ioTThingAttributePayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-thing.html#cfn-iot-thing-thingname
ittThingName :: Lens' IoTThing (Maybe (Val Text))
ittThingName = lens _ioTThingThingName (\s a -> s { _ioTThingThingName = a })
