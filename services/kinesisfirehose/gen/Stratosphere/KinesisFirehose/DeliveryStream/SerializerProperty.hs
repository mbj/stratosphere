module Stratosphere.KinesisFirehose.DeliveryStream.SerializerProperty (
        module Exports, SerializerProperty(..), mkSerializerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.OrcSerDeProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ParquetSerDeProperty as Exports
import Stratosphere.ResourceProperties
data SerializerProperty
  = SerializerProperty {orcSerDe :: (Prelude.Maybe OrcSerDeProperty),
                        parquetSerDe :: (Prelude.Maybe ParquetSerDeProperty)}
mkSerializerProperty :: SerializerProperty
mkSerializerProperty
  = SerializerProperty
      {orcSerDe = Prelude.Nothing, parquetSerDe = Prelude.Nothing}
instance ToResourceProperties SerializerProperty where
  toResourceProperties SerializerProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.Serializer",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OrcSerDe" Prelude.<$> orcSerDe,
                            (JSON..=) "ParquetSerDe" Prelude.<$> parquetSerDe])}
instance JSON.ToJSON SerializerProperty where
  toJSON SerializerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OrcSerDe" Prelude.<$> orcSerDe,
               (JSON..=) "ParquetSerDe" Prelude.<$> parquetSerDe]))
instance Property "OrcSerDe" SerializerProperty where
  type PropertyType "OrcSerDe" SerializerProperty = OrcSerDeProperty
  set newValue SerializerProperty {..}
    = SerializerProperty {orcSerDe = Prelude.pure newValue, ..}
instance Property "ParquetSerDe" SerializerProperty where
  type PropertyType "ParquetSerDe" SerializerProperty = ParquetSerDeProperty
  set newValue SerializerProperty {..}
    = SerializerProperty {parquetSerDe = Prelude.pure newValue, ..}