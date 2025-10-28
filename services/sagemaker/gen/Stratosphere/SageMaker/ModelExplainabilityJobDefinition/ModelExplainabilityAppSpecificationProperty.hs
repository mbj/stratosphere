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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification.html>
    ModelExplainabilityAppSpecificationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification-configuri>
                                                 configUri :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification-environment>
                                                 environment :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification.html#cfn-sagemaker-modelexplainabilityjobdefinition-modelexplainabilityappspecification-imageuri>
                                                 imageUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelExplainabilityAppSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ModelExplainabilityAppSpecificationProperty
mkModelExplainabilityAppSpecificationProperty configUri imageUri
  = ModelExplainabilityAppSpecificationProperty
      {haddock_workaround_ = (), configUri = configUri,
       imageUri = imageUri, environment = Prelude.Nothing}
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