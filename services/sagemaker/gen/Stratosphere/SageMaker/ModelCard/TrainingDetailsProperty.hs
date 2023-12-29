module Stratosphere.SageMaker.ModelCard.TrainingDetailsProperty (
        module Exports, TrainingDetailsProperty(..),
        mkTrainingDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.ObjectiveFunctionProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.TrainingJobDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingDetailsProperty
  = TrainingDetailsProperty {objectiveFunction :: (Prelude.Maybe ObjectiveFunctionProperty),
                             trainingJobDetails :: (Prelude.Maybe TrainingJobDetailsProperty),
                             trainingObservations :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingDetailsProperty :: TrainingDetailsProperty
mkTrainingDetailsProperty
  = TrainingDetailsProperty
      {objectiveFunction = Prelude.Nothing,
       trainingJobDetails = Prelude.Nothing,
       trainingObservations = Prelude.Nothing}
instance ToResourceProperties TrainingDetailsProperty where
  toResourceProperties TrainingDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ObjectiveFunction" Prelude.<$> objectiveFunction,
                            (JSON..=) "TrainingJobDetails" Prelude.<$> trainingJobDetails,
                            (JSON..=) "TrainingObservations"
                              Prelude.<$> trainingObservations])}
instance JSON.ToJSON TrainingDetailsProperty where
  toJSON TrainingDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ObjectiveFunction" Prelude.<$> objectiveFunction,
               (JSON..=) "TrainingJobDetails" Prelude.<$> trainingJobDetails,
               (JSON..=) "TrainingObservations"
                 Prelude.<$> trainingObservations]))
instance Property "ObjectiveFunction" TrainingDetailsProperty where
  type PropertyType "ObjectiveFunction" TrainingDetailsProperty = ObjectiveFunctionProperty
  set newValue TrainingDetailsProperty {..}
    = TrainingDetailsProperty
        {objectiveFunction = Prelude.pure newValue, ..}
instance Property "TrainingJobDetails" TrainingDetailsProperty where
  type PropertyType "TrainingJobDetails" TrainingDetailsProperty = TrainingJobDetailsProperty
  set newValue TrainingDetailsProperty {..}
    = TrainingDetailsProperty
        {trainingJobDetails = Prelude.pure newValue, ..}
instance Property "TrainingObservations" TrainingDetailsProperty where
  type PropertyType "TrainingObservations" TrainingDetailsProperty = Value Prelude.Text
  set newValue TrainingDetailsProperty {..}
    = TrainingDetailsProperty
        {trainingObservations = Prelude.pure newValue, ..}