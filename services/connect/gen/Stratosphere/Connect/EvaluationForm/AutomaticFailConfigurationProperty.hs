module Stratosphere.Connect.EvaluationForm.AutomaticFailConfigurationProperty (
        AutomaticFailConfigurationProperty(..),
        mkAutomaticFailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomaticFailConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-automaticfailconfiguration.html>
    AutomaticFailConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-evaluationform-automaticfailconfiguration.html#cfn-connect-evaluationform-automaticfailconfiguration-targetsection>
                                        targetSection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomaticFailConfigurationProperty ::
  AutomaticFailConfigurationProperty
mkAutomaticFailConfigurationProperty
  = AutomaticFailConfigurationProperty
      {haddock_workaround_ = (), targetSection = Prelude.Nothing}
instance ToResourceProperties AutomaticFailConfigurationProperty where
  toResourceProperties AutomaticFailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::EvaluationForm.AutomaticFailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetSection" Prelude.<$> targetSection])}
instance JSON.ToJSON AutomaticFailConfigurationProperty where
  toJSON AutomaticFailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetSection" Prelude.<$> targetSection]))
instance Property "TargetSection" AutomaticFailConfigurationProperty where
  type PropertyType "TargetSection" AutomaticFailConfigurationProperty = Value Prelude.Text
  set newValue AutomaticFailConfigurationProperty {..}
    = AutomaticFailConfigurationProperty
        {targetSection = Prelude.pure newValue, ..}