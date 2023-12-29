module Stratosphere.Config.RemediationConfiguration.SsmControlsProperty (
        SsmControlsProperty(..), mkSsmControlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmControlsProperty
  = SsmControlsProperty {concurrentExecutionRatePercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                         errorPercentage :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSsmControlsProperty :: SsmControlsProperty
mkSsmControlsProperty
  = SsmControlsProperty
      {concurrentExecutionRatePercentage = Prelude.Nothing,
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