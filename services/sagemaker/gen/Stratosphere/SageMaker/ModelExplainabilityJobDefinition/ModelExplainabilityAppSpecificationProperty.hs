module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.ModelExplainabilityAppSpecificationProperty (
        ModelExplainabilityAppSpecificationProperty(..),
        mkModelExplainabilityAppSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelExplainabilityAppSpecificationProperty
  = ModelExplainabilityAppSpecificationProperty {configUri :: (Value Prelude.Text),
                                                 environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                                 imageUri :: (Value Prelude.Text)}
mkModelExplainabilityAppSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ModelExplainabilityAppSpecificationProperty
mkModelExplainabilityAppSpecificationProperty configUri imageUri
  = ModelExplainabilityAppSpecificationProperty
      {configUri = configUri, imageUri = imageUri,
       environment = Prelude.Nothing}
instance ToResourceProperties ModelExplainabilityAppSpecificationProperty where
  toResourceProperties
    ModelExplainabilityAppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.ModelExplainabilityAppSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigUri" JSON..= configUri, "ImageUri" JSON..= imageUri]
                           (Prelude.catMaybes
                              [(JSON..=) "Environment" Prelude.<$> environment]))}
instance JSON.ToJSON ModelExplainabilityAppSpecificationProperty where
  toJSON ModelExplainabilityAppSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigUri" JSON..= configUri, "ImageUri" JSON..= imageUri]
              (Prelude.catMaybes
                 [(JSON..=) "Environment" Prelude.<$> environment])))
instance Property "ConfigUri" ModelExplainabilityAppSpecificationProperty where
  type PropertyType "ConfigUri" ModelExplainabilityAppSpecificationProperty = Value Prelude.Text
  set newValue ModelExplainabilityAppSpecificationProperty {..}
    = ModelExplainabilityAppSpecificationProperty
        {configUri = newValue, ..}
instance Property "Environment" ModelExplainabilityAppSpecificationProperty where
  type PropertyType "Environment" ModelExplainabilityAppSpecificationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ModelExplainabilityAppSpecificationProperty {..}
    = ModelExplainabilityAppSpecificationProperty
        {environment = Prelude.pure newValue, ..}
instance Property "ImageUri" ModelExplainabilityAppSpecificationProperty where
  type PropertyType "ImageUri" ModelExplainabilityAppSpecificationProperty = Value Prelude.Text
  set newValue ModelExplainabilityAppSpecificationProperty {..}
    = ModelExplainabilityAppSpecificationProperty
        {imageUri = newValue, ..}