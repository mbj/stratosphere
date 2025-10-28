module Stratosphere.SageMaker.ModelCard.TrainingEnvironmentProperty (
        TrainingEnvironmentProperty(..), mkTrainingEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingEnvironmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingenvironment.html>
    TrainingEnvironmentProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingenvironment.html#cfn-sagemaker-modelcard-trainingenvironment-containerimage>
                                 containerImage :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingEnvironmentProperty :: TrainingEnvironmentProperty
mkTrainingEnvironmentProperty
  = TrainingEnvironmentProperty
      {haddock_workaround_ = (), containerImage = Prelude.Nothing}
instance ToResourceProperties TrainingEnvironmentProperty where
  toResourceProperties TrainingEnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingEnvironment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerImage" Prelude.<$> containerImage])}
instance JSON.ToJSON TrainingEnvironmentProperty where
  toJSON TrainingEnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerImage" Prelude.<$> containerImage]))
instance Property "ContainerImage" TrainingEnvironmentProperty where
  type PropertyType "ContainerImage" TrainingEnvironmentProperty = ValueList Prelude.Text
  set newValue TrainingEnvironmentProperty {..}
    = TrainingEnvironmentProperty
        {containerImage = Prelude.pure newValue, ..}