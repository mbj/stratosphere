module Stratosphere.IoT.ThingType.Mqtt5ConfigurationProperty (
        module Exports, Mqtt5ConfigurationProperty(..),
        mkMqtt5ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.ThingType.PropagatingAttributeProperty as Exports
import Stratosphere.ResourceProperties
data Mqtt5ConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thingtype-mqtt5configuration.html>
    Mqtt5ConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-thingtype-mqtt5configuration.html#cfn-iot-thingtype-mqtt5configuration-propagatingattributes>
                                propagatingAttributes :: (Prelude.Maybe [PropagatingAttributeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMqtt5ConfigurationProperty :: Mqtt5ConfigurationProperty
mkMqtt5ConfigurationProperty
  = Mqtt5ConfigurationProperty
      {haddock_workaround_ = (), propagatingAttributes = Prelude.Nothing}
instance ToResourceProperties Mqtt5ConfigurationProperty where
  toResourceProperties Mqtt5ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ThingType.Mqtt5Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PropagatingAttributes"
                              Prelude.<$> propagatingAttributes])}
instance JSON.ToJSON Mqtt5ConfigurationProperty where
  toJSON Mqtt5ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PropagatingAttributes"
                 Prelude.<$> propagatingAttributes]))
instance Property "PropagatingAttributes" Mqtt5ConfigurationProperty where
  type PropertyType "PropagatingAttributes" Mqtt5ConfigurationProperty = [PropagatingAttributeProperty]
  set newValue Mqtt5ConfigurationProperty {..}
    = Mqtt5ConfigurationProperty
        {propagatingAttributes = Prelude.pure newValue, ..}