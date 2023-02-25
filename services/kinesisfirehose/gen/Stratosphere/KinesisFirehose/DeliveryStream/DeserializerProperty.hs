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
  = DeserializerProperty {hiveJsonSerDe :: (Prelude.Maybe HiveJsonSerDeProperty),
                          openXJsonSerDe :: (Prelude.Maybe OpenXJsonSerDeProperty)}
mkDeserializerProperty :: DeserializerProperty
mkDeserializerProperty
  = DeserializerProperty
      {hiveJsonSerDe = Prelude.Nothing, openXJsonSerDe = Prelude.Nothing}
instance ToResourceProperties DeserializerProperty where
  toResourceProperties DeserializerProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.Deserializer",
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