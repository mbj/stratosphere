
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html

module Stratosphere.ResourceProperties.IoTThingAttributePayload where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTThingAttributePayload. See
-- 'ioTThingAttributePayload' for a more convenient constructor.
data IoTThingAttributePayload =
  IoTThingAttributePayload
  { _ioTThingAttributePayloadAttributes :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON IoTThingAttributePayload where
  toJSON IoTThingAttributePayload{..} =
    object $
    catMaybes
    [ fmap (("Attributes",) . toJSON) _ioTThingAttributePayloadAttributes
    ]

-- | Constructor for 'IoTThingAttributePayload' containing required fields as
-- arguments.
ioTThingAttributePayload
  :: IoTThingAttributePayload
ioTThingAttributePayload  =
  IoTThingAttributePayload
  { _ioTThingAttributePayloadAttributes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thing-attributepayload.html#cfn-iot-thing-attributepayload-attributes
ittapAttributes :: Lens' IoTThingAttributePayload (Maybe Object)
ittapAttributes = lens _ioTThingAttributePayloadAttributes (\s a -> s { _ioTThingAttributePayloadAttributes = a })
