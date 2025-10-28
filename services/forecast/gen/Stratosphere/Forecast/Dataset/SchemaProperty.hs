module Stratosphere.Forecast.Dataset.SchemaProperty (
        module Exports, SchemaProperty(..), mkSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Forecast.Dataset.AttributesItemsProperty as Exports
import Stratosphere.ResourceProperties
data SchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-schema.html>
    SchemaProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-forecast-dataset-schema.html#cfn-forecast-dataset-schema-attributes>
                    attributes :: (Prelude.Maybe [AttributesItemsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaProperty :: SchemaProperty
mkSchemaProperty
  = SchemaProperty
      {haddock_workaround_ = (), attributes = Prelude.Nothing}
instance ToResourceProperties SchemaProperty where
  toResourceProperties SchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Forecast::Dataset.Schema",
         supportsTags = Prelude.False,
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
  set newValue SchemaProperty {..}
    = SchemaProperty {attributes = Prelude.pure newValue, ..}