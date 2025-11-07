module Stratosphere.MediaLive.Input.InputSdpLocationProperty (
        InputSdpLocationProperty(..), mkInputSdpLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSdpLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsdplocation.html>
    InputSdpLocationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsdplocation.html#cfn-medialive-input-inputsdplocation-mediaindex>
                              mediaIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsdplocation.html#cfn-medialive-input-inputsdplocation-sdpurl>
                              sdpUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSdpLocationProperty :: InputSdpLocationProperty
mkInputSdpLocationProperty
  = InputSdpLocationProperty
      {haddock_workaround_ = (), mediaIndex = Prelude.Nothing,
       sdpUrl = Prelude.Nothing}
instance ToResourceProperties InputSdpLocationProperty where
  toResourceProperties InputSdpLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputSdpLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MediaIndex" Prelude.<$> mediaIndex,
                            (JSON..=) "SdpUrl" Prelude.<$> sdpUrl])}
instance JSON.ToJSON InputSdpLocationProperty where
  toJSON InputSdpLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MediaIndex" Prelude.<$> mediaIndex,
               (JSON..=) "SdpUrl" Prelude.<$> sdpUrl]))
instance Property "MediaIndex" InputSdpLocationProperty where
  type PropertyType "MediaIndex" InputSdpLocationProperty = Value Prelude.Integer
  set newValue InputSdpLocationProperty {..}
    = InputSdpLocationProperty {mediaIndex = Prelude.pure newValue, ..}
instance Property "SdpUrl" InputSdpLocationProperty where
  type PropertyType "SdpUrl" InputSdpLocationProperty = Value Prelude.Text
  set newValue InputSdpLocationProperty {..}
    = InputSdpLocationProperty {sdpUrl = Prelude.pure newValue, ..}