module Stratosphere.Connect.EvaluationForm.AutoEvaluationConfigurationProperty (
        AutoEvaluationConfigurationProperty(..),
        mkAutoEvaluationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoEvaluationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-autoevaluationconfiguration.html>
    AutoEvaluationConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-autoevaluationconfiguration.html#cfn-connect-evaluationform-autoevaluationconfiguration-enabled>
                                         enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoEvaluationConfigurationProperty ::
  AutoEvaluationConfigurationProperty
mkAutoEvaluationConfigurationProperty
  = AutoEvaluationConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties AutoEvaluationConfigurationProperty where
  toResourceProperties AutoEvaluationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.AutoEvaluationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AutoEvaluationConfigurationProperty where
  toJSON AutoEvaluationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AutoEvaluationConfigurationProperty where
  type PropertyType "Enabled" AutoEvaluationConfigurationProperty = Value Prelude.Bool
  set newValue AutoEvaluationConfigurationProperty {..}
    = AutoEvaluationConfigurationProperty
        {enabled = Prelude.pure newValue, ..}