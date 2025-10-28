module Stratosphere.Config.RemediationConfiguration.SsmControlsProperty (
        SsmControlsProperty(..), mkSsmControlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmControlsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html>
    SsmControlsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-concurrentexecutionratepercentage>
                         concurrentExecutionRatePercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-errorpercentage>
                         errorPercentage :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSsmControlsProperty :: SsmControlsProperty
mkSsmControlsProperty
  = SsmControlsProperty
      {haddock_workaround_ = (),
       concurrentExecutionRatePercentage = Prelude.Nothing,
       errorPercentage = Prelude.Nothing}
instance ToResourceProperties SsmControlsProperty where
  toResourceProperties SsmControlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::RemediationConfiguration.SsmControls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConcurrentExecutionRatePercentage"
                              Prelude.<$> concurrentExecutionRatePercentage,
                            (JSON..=) "ErrorPercentage" Prelude.<$> errorPercentage])}
instance JSON.ToJSON SsmControlsProperty where
  toJSON SsmControlsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConcurrentExecutionRatePercentage"
                 Prelude.<$> concurrentExecutionRatePercentage,
               (JSON..=) "ErrorPercentage" Prelude.<$> errorPercentage]))
instance Property "ConcurrentExecutionRatePercentage" SsmControlsProperty where
  type PropertyType "ConcurrentExecutionRatePercentage" SsmControlsProperty = Value Prelude.Integer
  set newValue SsmControlsProperty {..}
    = SsmControlsProperty
        {concurrentExecutionRatePercentage = Prelude.pure newValue, ..}
instance Property "ErrorPercentage" SsmControlsProperty where
  type PropertyType "ErrorPercentage" SsmControlsProperty = Value Prelude.Integer
  set newValue SsmControlsProperty {..}
    = SsmControlsProperty {errorPercentage = Prelude.pure newValue, ..}