module Stratosphere.Config.ConfigRule.EvaluationModeConfigurationProperty (
        EvaluationModeConfigurationProperty(..),
        mkEvaluationModeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EvaluationModeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-evaluationmodeconfiguration.html>
    EvaluationModeConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-evaluationmodeconfiguration.html#cfn-config-configrule-evaluationmodeconfiguration-mode>
                                         mode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEvaluationModeConfigurationProperty ::
  EvaluationModeConfigurationProperty
mkEvaluationModeConfigurationProperty
  = EvaluationModeConfigurationProperty
      {haddock_workaround_ = (), mode = Prelude.Nothing}
instance ToResourceProperties EvaluationModeConfigurationProperty where
  toResourceProperties EvaluationModeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigRule.EvaluationModeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode])}
instance JSON.ToJSON EvaluationModeConfigurationProperty where
  toJSON EvaluationModeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode]))
instance Property "Mode" EvaluationModeConfigurationProperty where
  type PropertyType "Mode" EvaluationModeConfigurationProperty = Value Prelude.Text
  set newValue EvaluationModeConfigurationProperty {..}
    = EvaluationModeConfigurationProperty
        {mode = Prelude.pure newValue, ..}