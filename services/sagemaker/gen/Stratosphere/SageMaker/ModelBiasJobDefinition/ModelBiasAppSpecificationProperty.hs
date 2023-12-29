module Stratosphere.SageMaker.ModelBiasJobDefinition.ModelBiasAppSpecificationProperty (
        ModelBiasAppSpecificationProperty(..),
        mkModelBiasAppSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelBiasAppSpecificationProperty
  = ModelBiasAppSpecificationProperty {configUri :: (Value Prelude.Text),
                                       environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       imageUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelBiasAppSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ModelBiasAppSpecificationProperty
mkModelBiasAppSpecificationProperty configUri imageUri
  = ModelBiasAppSpecificationProperty
      {configUri = configUri, imageUri = imageUri,
       environment = Prelude.Nothing}
instance ToResourceProperties ModelBiasAppSpecificationProperty where
  toResourceProperties ModelBiasAppSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.ModelBiasAppSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigUri" JSON..= configUri, "ImageUri" JSON..= imageUri]
                           (Prelude.catMaybes
                              [(JSON..=) "Environment" Prelude.<$> environment]))}
instance JSON.ToJSON ModelBiasAppSpecificationProperty where
  toJSON ModelBiasAppSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigUri" JSON..= configUri, "ImageUri" JSON..= imageUri]
              (Prelude.catMaybes
                 [(JSON..=) "Environment" Prelude.<$> environment])))
instance Property "ConfigUri" ModelBiasAppSpecificationProperty where
  type PropertyType "ConfigUri" ModelBiasAppSpecificationProperty = Value Prelude.Text
  set newValue ModelBiasAppSpecificationProperty {..}
    = ModelBiasAppSpecificationProperty {configUri = newValue, ..}
instance Property "Environment" ModelBiasAppSpecificationProperty where
  type PropertyType "Environment" ModelBiasAppSpecificationProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ModelBiasAppSpecificationProperty {..}
    = ModelBiasAppSpecificationProperty
        {environment = Prelude.pure newValue, ..}
instance Property "ImageUri" ModelBiasAppSpecificationProperty where
  type PropertyType "ImageUri" ModelBiasAppSpecificationProperty = Value Prelude.Text
  set newValue ModelBiasAppSpecificationProperty {..}
    = ModelBiasAppSpecificationProperty {imageUri = newValue, ..}