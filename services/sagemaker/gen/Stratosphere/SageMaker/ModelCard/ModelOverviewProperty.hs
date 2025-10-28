module Stratosphere.SageMaker.ModelCard.ModelOverviewProperty (
        module Exports, ModelOverviewProperty(..), mkModelOverviewProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.InferenceEnvironmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelOverviewProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html>
    ModelOverviewProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-algorithmtype>
                           algorithmType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-inferenceenvironment>
                           inferenceEnvironment :: (Prelude.Maybe InferenceEnvironmentProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modelartifact>
                           modelArtifact :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modelcreator>
                           modelCreator :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modeldescription>
                           modelDescription :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modelid>
                           modelId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modelname>
                           modelName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modelowner>
                           modelOwner :: (Prelude.Maybe (Value Prelude.Text)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-modelversion>
                           modelVersion :: (Prelude.Maybe (Value Prelude.Double)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-modeloverview.html#cfn-sagemaker-modelcard-modeloverview-problemtype>
                           problemType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelOverviewProperty :: ModelOverviewProperty
mkModelOverviewProperty
  = ModelOverviewProperty
      {algorithmType = Prelude.Nothing,
       inferenceEnvironment = Prelude.Nothing,
       modelArtifact = Prelude.Nothing, modelCreator = Prelude.Nothing,
       modelDescription = Prelude.Nothing, modelId = Prelude.Nothing,
       modelName = Prelude.Nothing, modelOwner = Prelude.Nothing,
       modelVersion = Prelude.Nothing, problemType = Prelude.Nothing}
instance ToResourceProperties ModelOverviewProperty where
  toResourceProperties ModelOverviewProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.ModelOverview",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlgorithmType" Prelude.<$> algorithmType,
                            (JSON..=) "InferenceEnvironment" Prelude.<$> inferenceEnvironment,
                            (JSON..=) "ModelArtifact" Prelude.<$> modelArtifact,
                            (JSON..=) "ModelCreator" Prelude.<$> modelCreator,
                            (JSON..=) "ModelDescription" Prelude.<$> modelDescription,
                            (JSON..=) "ModelId" Prelude.<$> modelId,
                            (JSON..=) "ModelName" Prelude.<$> modelName,
                            (JSON..=) "ModelOwner" Prelude.<$> modelOwner,
                            (JSON..=) "ModelVersion" Prelude.<$> modelVersion,
                            (JSON..=) "ProblemType" Prelude.<$> problemType])}
instance JSON.ToJSON ModelOverviewProperty where
  toJSON ModelOverviewProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlgorithmType" Prelude.<$> algorithmType,
               (JSON..=) "InferenceEnvironment" Prelude.<$> inferenceEnvironment,
               (JSON..=) "ModelArtifact" Prelude.<$> modelArtifact,
               (JSON..=) "ModelCreator" Prelude.<$> modelCreator,
               (JSON..=) "ModelDescription" Prelude.<$> modelDescription,
               (JSON..=) "ModelId" Prelude.<$> modelId,
               (JSON..=) "ModelName" Prelude.<$> modelName,
               (JSON..=) "ModelOwner" Prelude.<$> modelOwner,
               (JSON..=) "ModelVersion" Prelude.<$> modelVersion,
               (JSON..=) "ProblemType" Prelude.<$> problemType]))
instance Property "AlgorithmType" ModelOverviewProperty where
  type PropertyType "AlgorithmType" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {algorithmType = Prelude.pure newValue, ..}
instance Property "InferenceEnvironment" ModelOverviewProperty where
  type PropertyType "InferenceEnvironment" ModelOverviewProperty = InferenceEnvironmentProperty
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty
        {inferenceEnvironment = Prelude.pure newValue, ..}
instance Property "ModelArtifact" ModelOverviewProperty where
  type PropertyType "ModelArtifact" ModelOverviewProperty = ValueList Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {modelArtifact = Prelude.pure newValue, ..}
instance Property "ModelCreator" ModelOverviewProperty where
  type PropertyType "ModelCreator" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {modelCreator = Prelude.pure newValue, ..}
instance Property "ModelDescription" ModelOverviewProperty where
  type PropertyType "ModelDescription" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty
        {modelDescription = Prelude.pure newValue, ..}
instance Property "ModelId" ModelOverviewProperty where
  type PropertyType "ModelId" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {modelId = Prelude.pure newValue, ..}
instance Property "ModelName" ModelOverviewProperty where
  type PropertyType "ModelName" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {modelName = Prelude.pure newValue, ..}
instance Property "ModelOwner" ModelOverviewProperty where
  type PropertyType "ModelOwner" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {modelOwner = Prelude.pure newValue, ..}
instance Property "ModelVersion" ModelOverviewProperty where
  type PropertyType "ModelVersion" ModelOverviewProperty = Value Prelude.Double
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {modelVersion = Prelude.pure newValue, ..}
instance Property "ProblemType" ModelOverviewProperty where
  type PropertyType "ProblemType" ModelOverviewProperty = Value Prelude.Text
  set newValue ModelOverviewProperty {..}
    = ModelOverviewProperty {problemType = Prelude.pure newValue, ..}