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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossfailoversettings.html>
    InputLossFailoverSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlossfailoversettings.html#cfn-medialive-channel-inputlossfailoversettings-inputlossthresholdmsec>
                                       inputLossThresholdMsec :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputLossFailoverSettingsProperty ::
  InputLossFailoverSettingsProperty
mkInputLossFailoverSettingsProperty
  = InputLossFailoverSettingsProperty
      {haddock_workaround_ = (),
       inputLossThresholdMsec = Prelude.Nothing}
instance ToResourceProperties InputLossFailoverSettingsProperty where
  toResourceProperties InputLossFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputLossFailoverSettings",
         supportsTags = Prelude.False,
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
  set newValue InputLossFailoverSettingsProperty {..}
    = InputLossFailoverSettingsProperty
        {inputLossThresholdMsec = Prelude.pure newValue, ..}