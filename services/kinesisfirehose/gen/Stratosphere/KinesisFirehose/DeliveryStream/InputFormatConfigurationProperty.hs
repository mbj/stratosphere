module Stratosphere.KinesisFirehose.DeliveryStream.InputFormatConfigurationProperty (
        module Exports, InputFormatConfigurationProperty(..),
        mkInputFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DeserializerProperty as Exports
import Stratosphere.ResourceProperties
data InputFormatConfigurationProperty
  = InputFormatConfigurationProperty {deserializer :: (Prelude.Maybe DeserializerProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputFormatConfigurationProperty ::
  InputFormatConfigurationProperty
mkInputFormatConfigurationProperty
  = InputFormatConfigurationProperty {deserializer = Prelude.Nothing}
instance ToResourceProperties InputFormatConfigurationProperty where
  toResourceProperties InputFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.InputFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Deserializer" Prelude.<$> deserializer])}
instance JSON.ToJSON InputFormatConfigurationProperty where
  toJSON InputFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Deserializer" Prelude.<$> deserializer]))
instance Property "Deserializer" InputFormatConfigurationProperty where
  type PropertyType "Deserializer" InputFormatConfigurationProperty = DeserializerProperty
  set newValue InputFormatConfigurationProperty {}
    = InputFormatConfigurationProperty
        {deserializer = Prelude.pure newValue, ..}