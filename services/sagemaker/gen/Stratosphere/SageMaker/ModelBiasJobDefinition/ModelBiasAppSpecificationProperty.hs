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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasappspecification.html>
    ModelBiasAppSpecificationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasappspecification.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasappspecification-configuri>
                                       configUri :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasappspecification.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasappspecification-environment>
                                       environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-modelbiasappspecification.html#cfn-sagemaker-modelbiasjobdefinition-modelbiasappspecification-imageuri>
                                       imageUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelBiasAppSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ModelBiasAppSpecificationProperty
mkModelBiasAppSpecificationProperty configUri imageUri
  = ModelBiasAppSpecificationProperty
      {haddock_workaround_ = (), configUri = configUri,
       imageUri = imageUri, environment = Prelude.Nothing}
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