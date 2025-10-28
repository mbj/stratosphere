module Stratosphere.SageMaker.ModelCard.TrainingJobDetailsProperty (
        module Exports, TrainingJobDetailsProperty(..),
        mkTrainingJobDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.TrainingEnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.TrainingHyperParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.TrainingMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingJobDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html>
    TrainingJobDetailsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-hyperparameters>
                                hyperParameters :: (Prelude.Maybe [TrainingHyperParameterProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-trainingarn>
                                trainingArn :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-trainingdatasets>
                                trainingDatasets :: (Prelude.Maybe (ValueList Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-trainingenvironment>
                                trainingEnvironment :: (Prelude.Maybe TrainingEnvironmentProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-trainingmetrics>
                                trainingMetrics :: (Prelude.Maybe [TrainingMetricProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-userprovidedhyperparameters>
                                userProvidedHyperParameters :: (Prelude.Maybe [TrainingHyperParameterProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingjobdetails.html#cfn-sagemaker-modelcard-trainingjobdetails-userprovidedtrainingmetrics>
                                userProvidedTrainingMetrics :: (Prelude.Maybe [TrainingMetricProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingJobDetailsProperty :: TrainingJobDetailsProperty
mkTrainingJobDetailsProperty
  = TrainingJobDetailsProperty
      {haddock_workaround_ = (), hyperParameters = Prelude.Nothing,
       trainingArn = Prelude.Nothing, trainingDatasets = Prelude.Nothing,
       trainingEnvironment = Prelude.Nothing,
       trainingMetrics = Prelude.Nothing,
       userProvidedHyperParameters = Prelude.Nothing,
       userProvidedTrainingMetrics = Prelude.Nothing}
instance ToResourceProperties TrainingJobDetailsProperty where
  toResourceProperties TrainingJobDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingJobDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HyperParameters" Prelude.<$> hyperParameters,
                            (JSON..=) "TrainingArn" Prelude.<$> trainingArn,
                            (JSON..=) "TrainingDatasets" Prelude.<$> trainingDatasets,
                            (JSON..=) "TrainingEnvironment" Prelude.<$> trainingEnvironment,
                            (JSON..=) "TrainingMetrics" Prelude.<$> trainingMetrics,
                            (JSON..=) "UserProvidedHyperParameters"
                              Prelude.<$> userProvidedHyperParameters,
                            (JSON..=) "UserProvidedTrainingMetrics"
                              Prelude.<$> userProvidedTrainingMetrics])}
instance JSON.ToJSON TrainingJobDetailsProperty where
  toJSON TrainingJobDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HyperParameters" Prelude.<$> hyperParameters,
               (JSON..=) "TrainingArn" Prelude.<$> trainingArn,
               (JSON..=) "TrainingDatasets" Prelude.<$> trainingDatasets,
               (JSON..=) "TrainingEnvironment" Prelude.<$> trainingEnvironment,
               (JSON..=) "TrainingMetrics" Prelude.<$> trainingMetrics,
               (JSON..=) "UserProvidedHyperParameters"
                 Prelude.<$> userProvidedHyperParameters,
               (JSON..=) "UserProvidedTrainingMetrics"
                 Prelude.<$> userProvidedTrainingMetrics]))
instance Property "HyperParameters" TrainingJobDetailsProperty where
  type PropertyType "HyperParameters" TrainingJobDetailsProperty = [TrainingHyperParameterProperty]
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {hyperParameters = Prelude.pure newValue, ..}
instance Property "TrainingArn" TrainingJobDetailsProperty where
  type PropertyType "TrainingArn" TrainingJobDetailsProperty = Value Prelude.Text
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {trainingArn = Prelude.pure newValue, ..}
instance Property "TrainingDatasets" TrainingJobDetailsProperty where
  type PropertyType "TrainingDatasets" TrainingJobDetailsProperty = ValueList Prelude.Text
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {trainingDatasets = Prelude.pure newValue, ..}
instance Property "TrainingEnvironment" TrainingJobDetailsProperty where
  type PropertyType "TrainingEnvironment" TrainingJobDetailsProperty = TrainingEnvironmentProperty
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {trainingEnvironment = Prelude.pure newValue, ..}
instance Property "TrainingMetrics" TrainingJobDetailsProperty where
  type PropertyType "TrainingMetrics" TrainingJobDetailsProperty = [TrainingMetricProperty]
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {trainingMetrics = Prelude.pure newValue, ..}
instance Property "UserProvidedHyperParameters" TrainingJobDetailsProperty where
  type PropertyType "UserProvidedHyperParameters" TrainingJobDetailsProperty = [TrainingHyperParameterProperty]
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {userProvidedHyperParameters = Prelude.pure newValue, ..}
instance Property "UserProvidedTrainingMetrics" TrainingJobDetailsProperty where
  type PropertyType "UserProvidedTrainingMetrics" TrainingJobDetailsProperty = [TrainingMetricProperty]
  set newValue TrainingJobDetailsProperty {..}
    = TrainingJobDetailsProperty
        {userProvidedTrainingMetrics = Prelude.pure newValue, ..}