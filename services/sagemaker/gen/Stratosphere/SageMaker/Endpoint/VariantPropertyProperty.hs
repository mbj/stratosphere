module Stratosphere.SageMaker.Endpoint.VariantPropertyProperty (
        VariantPropertyProperty(..), mkVariantPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VariantPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html>
    VariantPropertyProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html#cfn-sagemaker-endpoint-variantproperty-variantpropertytype>
                             variantPropertyType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVariantPropertyProperty :: VariantPropertyProperty
mkVariantPropertyProperty
  = VariantPropertyProperty
      {haddock_workaround_ = (), variantPropertyType = Prelude.Nothing}
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
  set newValue VariantPropertyProperty {..}
    = VariantPropertyProperty
        {variantPropertyType = Prelude.pure newValue, ..}