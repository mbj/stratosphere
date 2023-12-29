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
  = TrainingJobDetailsProperty {hyperParameters :: (Prelude.Maybe [TrainingHyperParameterProperty]),
                                trainingArn :: (Prelude.Maybe (Value Prelude.Text)),
                                trainingDatasets :: (Prelude.Maybe (ValueList Prelude.Text)),
                                trainingEnvironment :: (Prelude.Maybe TrainingEnvironmentProperty),
                                trainingMetrics :: (Prelude.Maybe [TrainingMetricProperty]),
                                userProvidedHyperParameters :: (Prelude.Maybe [TrainingHyperParameterProperty]),
                                userProvidedTrainingMetrics :: (Prelude.Maybe [TrainingMetricProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingJobDetailsProperty :: TrainingJobDetailsProperty
mkTrainingJobDetailsProperty
  = TrainingJobDetailsProperty
      {hyperParameters = Prelude.Nothing, trainingArn = Prelude.Nothing,
       trainingDatasets = Prelude.Nothing,
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