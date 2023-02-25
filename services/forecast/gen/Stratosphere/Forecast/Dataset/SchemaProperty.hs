module Stratosphere.Forecast.Dataset.SchemaProperty (
        module Exports, SchemaProperty(..), mkSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Forecast.Dataset.AttributesItemsProperty as Exports
import Stratosphere.ResourceProperties
data SchemaProperty
  = SchemaProperty {attributes :: (Prelude.Maybe [AttributesItemsProperty])}
mkSchemaProperty :: SchemaProperty
mkSchemaProperty = SchemaProperty {attributes = Prelude.Nothing}
instance ToResourceProperties SchemaProperty where
  toResourceProperties SchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::Dataset.Schema",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attributes" Prelude.<$> attributes])}
instance JSON.ToJSON SchemaProperty where
  toJSON SchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attributes" Prelude.<$> attributes]))
instance Property "Attributes" SchemaProperty where
  type PropertyType "Attributes" SchemaProperty = [AttributesItemsProperty]
  set newValue SchemaProperty {}
    = SchemaProperty {attributes = Prelude.pure newValue, ..}