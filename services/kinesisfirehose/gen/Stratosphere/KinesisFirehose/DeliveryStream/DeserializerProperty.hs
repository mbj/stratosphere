module Stratosphere.KinesisFirehose.DeliveryStream.DeserializerProperty (
        module Exports, DeserializerProperty(..), mkDeserializerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.HiveJsonSerDeProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.OpenXJsonSerDeProperty as Exports
import Stratosphere.ResourceProperties
data DeserializerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html>
    DeserializerProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-hivejsonserde>
                          hiveJsonSerDe :: (Prelude.Maybe HiveJsonSerDeProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-openxjsonserde>
                          openXJsonSerDe :: (Prelude.Maybe OpenXJsonSerDeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeserializerProperty :: DeserializerProperty
mkDeserializerProperty
  = DeserializerProperty
      {haddock_workaround_ = (), hiveJsonSerDe = Prelude.Nothing,
       openXJsonSerDe = Prelude.Nothing}
instance ToResourceProperties DeserializerProperty where
  toResourceProperties DeserializerProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.Deserializer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HiveJsonSerDe" Prelude.<$> hiveJsonSerDe,
                            (JSON..=) "OpenXJsonSerDe" Prelude.<$> openXJsonSerDe])}
instance JSON.ToJSON DeserializerProperty where
  toJSON DeserializerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HiveJsonSerDe" Prelude.<$> hiveJsonSerDe,
               (JSON..=) "OpenXJsonSerDe" Prelude.<$> openXJsonSerDe]))
instance Property "HiveJsonSerDe" DeserializerProperty where
  type PropertyType "HiveJsonSerDe" DeserializerProperty = HiveJsonSerDeProperty
  set newValue DeserializerProperty {..}
    = DeserializerProperty {hiveJsonSerDe = Prelude.pure newValue, ..}
instance Property "OpenXJsonSerDe" DeserializerProperty where
  type PropertyType "OpenXJsonSerDe" DeserializerProperty = OpenXJsonSerDeProperty
  set newValue DeserializerProperty {..}
    = DeserializerProperty {openXJsonSerDe = Prelude.pure newValue, ..}