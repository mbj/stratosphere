module Stratosphere.SageMaker.Endpoint.VariantPropertyProperty (
        VariantPropertyProperty(..), mkVariantPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariantPropertyProperty
  = VariantPropertyProperty {variantPropertyType :: (Prelude.Maybe (Value Prelude.Text))}
mkVariantPropertyProperty :: VariantPropertyProperty
mkVariantPropertyProperty
  = VariantPropertyProperty {variantPropertyType = Prelude.Nothing}
instance ToResourceProperties VariantPropertyProperty where
  toResourceProperties VariantPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.VariantProperty",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VariantPropertyType" Prelude.<$> variantPropertyType])}
instance JSON.ToJSON VariantPropertyProperty where
  toJSON VariantPropertyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VariantPropertyType" Prelude.<$> variantPropertyType]))
instance Property "VariantPropertyType" VariantPropertyProperty where
  type PropertyType "VariantPropertyType" VariantPropertyProperty = Value Prelude.Text
  set newValue VariantPropertyProperty {}
    = VariantPropertyProperty
        {variantPropertyType = Prelude.pure newValue, ..}