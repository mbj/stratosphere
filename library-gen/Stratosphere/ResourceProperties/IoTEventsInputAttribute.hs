
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html

module Stratosphere.ResourceProperties.IoTEventsInputAttribute where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsInputAttribute. See
-- 'ioTEventsInputAttribute' for a more convenient constructor.
data IoTEventsInputAttribute =
  IoTEventsInputAttribute
  { _ioTEventsInputAttributeJsonPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsInputAttribute where
  toJSON IoTEventsInputAttribute{..} =
    object $
    catMaybes
    [ fmap (("JsonPath",) . toJSON) _ioTEventsInputAttributeJsonPath
    ]

-- | Constructor for 'IoTEventsInputAttribute' containing required fields as
-- arguments.
ioTEventsInputAttribute
  :: IoTEventsInputAttribute
ioTEventsInputAttribute  =
  IoTEventsInputAttribute
  { _ioTEventsInputAttributeJsonPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-input-attribute.html#cfn-iotevents-input-attribute-jsonpath
iteiaJsonPath :: Lens' IoTEventsInputAttribute (Maybe (Val Text))
iteiaJsonPath = lens _ioTEventsInputAttributeJsonPath (\s a -> s { _ioTEventsInputAttributeJsonPath = a })
