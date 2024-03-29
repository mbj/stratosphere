module Stratosphere.AmplifyUIBuilder.Form.ValueMappingsProperty (
        module Exports, ValueMappingsProperty(..), mkValueMappingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.ValueMappingProperty as Exports
import Stratosphere.ResourceProperties
data ValueMappingsProperty
  = ValueMappingsProperty {values :: [ValueMappingProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValueMappingsProperty ::
  [ValueMappingProperty] -> ValueMappingsProperty
mkValueMappingsProperty values
  = ValueMappingsProperty {values = values}
instance ToResourceProperties ValueMappingsProperty where
  toResourceProperties ValueMappingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.ValueMappings",
         supportsTags = Prelude.False,
         properties = ["Values" JSON..= values]}
instance JSON.ToJSON ValueMappingsProperty where
  toJSON ValueMappingsProperty {..}
    = JSON.object ["Values" JSON..= values]
instance Property "Values" ValueMappingsProperty where
  type PropertyType "Values" ValueMappingsProperty = [ValueMappingProperty]
  set newValue ValueMappingsProperty {}
    = ValueMappingsProperty {values = newValue, ..}