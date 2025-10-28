module Stratosphere.MediaLive.Channel.SrtGroupSettingsProperty (
        SrtGroupSettingsProperty(..), mkSrtGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SrtGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-srtgroupsettings.html>
    SrtGroupSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-srtgroupsettings.html#cfn-medialive-channel-srtgroupsettings-inputlossaction>
                              inputLossAction :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSrtGroupSettingsProperty :: SrtGroupSettingsProperty
mkSrtGroupSettingsProperty
  = SrtGroupSettingsProperty
      {haddock_workaround_ = (), inputLossAction = Prelude.Nothing}
instance ToResourceProperties SrtGroupSettingsProperty where
  toResourceProperties SrtGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.SrtGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputLossAction" Prelude.<$> inputLossAction])}
instance JSON.ToJSON SrtGroupSettingsProperty where
  toJSON SrtGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputLossAction" Prelude.<$> inputLossAction]))
instance Property "InputLossAction" SrtGroupSettingsProperty where
  type PropertyType "InputLossAction" SrtGroupSettingsProperty = Value Prelude.Text
  set newValue SrtGroupSettingsProperty {..}
    = SrtGroupSettingsProperty
        {inputLossAction = Prelude.pure newValue, ..}