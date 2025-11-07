module Stratosphere.SageMaker.ProcessingJob.ExperimentConfigProperty (
        ExperimentConfigProperty(..), mkExperimentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExperimentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-experimentconfig.html>
    ExperimentConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-experimentconfig.html#cfn-sagemaker-processingjob-experimentconfig-experimentname>
                              experimentName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-experimentconfig.html#cfn-sagemaker-processingjob-experimentconfig-runname>
                              runName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-experimentconfig.html#cfn-sagemaker-processingjob-experimentconfig-trialcomponentdisplayname>
                              trialComponentDisplayName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-experimentconfig.html#cfn-sagemaker-processingjob-experimentconfig-trialname>
                              trialName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperimentConfigProperty :: ExperimentConfigProperty
mkExperimentConfigProperty
  = ExperimentConfigProperty
      {haddock_workaround_ = (), experimentName = Prelude.Nothing,
       runName = Prelude.Nothing,
       trialComponentDisplayName = Prelude.Nothing,
       trialName = Prelude.Nothing}
instance ToResourceProperties ExperimentConfigProperty where
  toResourceProperties ExperimentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ProcessingJob.ExperimentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExperimentName" Prelude.<$> experimentName,
                            (JSON..=) "RunName" Prelude.<$> runName,
                            (JSON..=) "TrialComponentDisplayName"
                              Prelude.<$> trialComponentDisplayName,
                            (JSON..=) "TrialName" Prelude.<$> trialName])}
instance JSON.ToJSON ExperimentConfigProperty where
  toJSON ExperimentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExperimentName" Prelude.<$> experimentName,
               (JSON..=) "RunName" Prelude.<$> runName,
               (JSON..=) "TrialComponentDisplayName"
                 Prelude.<$> trialComponentDisplayName,
               (JSON..=) "TrialName" Prelude.<$> trialName]))
instance Property "ExperimentName" ExperimentConfigProperty where
  type PropertyType "ExperimentName" ExperimentConfigProperty = Value Prelude.Text
  set newValue ExperimentConfigProperty {..}
    = ExperimentConfigProperty
        {experimentName = Prelude.pure newValue, ..}
instance Property "RunName" ExperimentConfigProperty where
  type PropertyType "RunName" ExperimentConfigProperty = Value Prelude.Text
  set newValue ExperimentConfigProperty {..}
    = ExperimentConfigProperty {runName = Prelude.pure newValue, ..}
instance Property "TrialComponentDisplayName" ExperimentConfigProperty where
  type PropertyType "TrialComponentDisplayName" ExperimentConfigProperty = Value Prelude.Text
  set newValue ExperimentConfigProperty {..}
    = ExperimentConfigProperty
        {trialComponentDisplayName = Prelude.pure newValue, ..}
instance Property "TrialName" ExperimentConfigProperty where
  type PropertyType "TrialName" ExperimentConfigProperty = Value Prelude.Text
  set newValue ExperimentConfigProperty {..}
    = ExperimentConfigProperty {trialName = Prelude.pure newValue, ..}