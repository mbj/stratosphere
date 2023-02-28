module Stratosphere.Glue.Table.SerdeInfoProperty (
        SerdeInfoProperty(..), mkSerdeInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SerdeInfoProperty
  = SerdeInfoProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                       parameters :: (Prelude.Maybe JSON.Object),
                       serializationLibrary :: (Prelude.Maybe (Value Prelude.Text))}
mkSerdeInfoProperty :: SerdeInfoProperty
mkSerdeInfoProperty
  = SerdeInfoProperty
      {name = Prelude.Nothing, parameters = Prelude.Nothing,
       serializationLibrary = Prelude.Nothing}
instance ToResourceProperties SerdeInfoProperty where
  toResourceProperties SerdeInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.SerdeInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "SerializationLibrary"
                              Prelude.<$> serializationLibrary])}
instance JSON.ToJSON SerdeInfoProperty where
  toJSON SerdeInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "SerializationLibrary"
                 Prelude.<$> serializationLibrary]))
instance Property "Name" SerdeInfoProperty where
  type PropertyType "Name" SerdeInfoProperty = Value Prelude.Text
  set newValue SerdeInfoProperty {..}
    = SerdeInfoProperty {name = Prelude.pure newValue, ..}
instance Property "Parameters" SerdeInfoProperty where
  type PropertyType "Parameters" SerdeInfoProperty = JSON.Object
  set newValue SerdeInfoProperty {..}
    = SerdeInfoProperty {parameters = Prelude.pure newValue, ..}
instance Property "SerializationLibrary" SerdeInfoProperty where
  type PropertyType "SerializationLibrary" SerdeInfoProperty = Value Prelude.Text
  set newValue SerdeInfoProperty {..}
    = SerdeInfoProperty
        {serializationLibrary = Prelude.pure newValue, ..}