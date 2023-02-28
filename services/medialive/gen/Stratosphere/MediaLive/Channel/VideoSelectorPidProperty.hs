module Stratosphere.MediaLive.Channel.VideoSelectorPidProperty (
        VideoSelectorPidProperty(..), mkVideoSelectorPidProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoSelectorPidProperty
  = VideoSelectorPidProperty {pid :: (Prelude.Maybe (Value Prelude.Integer))}
mkVideoSelectorPidProperty :: VideoSelectorPidProperty
mkVideoSelectorPidProperty
  = VideoSelectorPidProperty {pid = Prelude.Nothing}
instance ToResourceProperties VideoSelectorPidProperty where
  toResourceProperties VideoSelectorPidProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoSelectorPid",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Pid" Prelude.<$> pid])}
instance JSON.ToJSON VideoSelectorPidProperty where
  toJSON VideoSelectorPidProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Pid" Prelude.<$> pid]))
instance Property "Pid" VideoSelectorPidProperty where
  type PropertyType "Pid" VideoSelectorPidProperty = Value Prelude.Integer
  set newValue VideoSelectorPidProperty {}
    = VideoSelectorPidProperty {pid = Prelude.pure newValue, ..}