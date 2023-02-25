module Stratosphere.MediaLive.Channel.InputLossFailoverSettingsProperty (
        InputLossFailoverSettingsProperty(..),
        mkInputLossFailoverSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLossFailoverSettingsProperty
  = InputLossFailoverSettingsProperty {inputLossThresholdMsec :: (Prelude.Maybe (Value Prelude.Integer))}
mkInputLossFailoverSettingsProperty ::
  InputLossFailoverSettingsProperty
mkInputLossFailoverSettingsProperty
  = InputLossFailoverSettingsProperty
      {inputLossThresholdMsec = Prelude.Nothing}
instance ToResourceProperties InputLossFailoverSettingsProperty where
  toResourceProperties InputLossFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputLossFailoverSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputLossThresholdMsec"
                              Prelude.<$> inputLossThresholdMsec])}
instance JSON.ToJSON InputLossFailoverSettingsProperty where
  toJSON InputLossFailoverSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputLossThresholdMsec"
                 Prelude.<$> inputLossThresholdMsec]))
instance Property "InputLossThresholdMsec" InputLossFailoverSettingsProperty where
  type PropertyType "InputLossThresholdMsec" InputLossFailoverSettingsProperty = Value Prelude.Integer
  set newValue InputLossFailoverSettingsProperty {}
    = InputLossFailoverSettingsProperty
        {inputLossThresholdMsec = Prelude.pure newValue, ..}