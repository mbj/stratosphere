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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html>
    InputFormatConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-inputformatconfiguration-deserializer>
                                      deserializer :: (Prelude.Maybe DeserializerProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputFormatConfigurationProperty ::
  InputFormatConfigurationProperty
mkInputFormatConfigurationProperty
  = InputFormatConfigurationProperty
      {haddock_workaround_ = (), deserializer = Prelude.Nothing}
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
  set newValue InputFormatConfigurationProperty {..}
    = InputFormatConfigurationProperty
        {deserializer = Prelude.pure newValue, ..}