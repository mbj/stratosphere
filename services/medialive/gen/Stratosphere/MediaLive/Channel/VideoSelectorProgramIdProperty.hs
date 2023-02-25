module Stratosphere.MediaLive.Channel.VideoSelectorProgramIdProperty (
        VideoSelectorProgramIdProperty(..),
        mkVideoSelectorProgramIdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoSelectorProgramIdProperty
  = VideoSelectorProgramIdProperty {programId :: (Prelude.Maybe (Value Prelude.Integer))}
mkVideoSelectorProgramIdProperty :: VideoSelectorProgramIdProperty
mkVideoSelectorProgramIdProperty
  = VideoSelectorProgramIdProperty {programId = Prelude.Nothing}
instance ToResourceProperties VideoSelectorProgramIdProperty where
  toResourceProperties VideoSelectorProgramIdProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoSelectorProgramId",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "ProgramId" Prelude.<$> programId])}
instance JSON.ToJSON VideoSelectorProgramIdProperty where
  toJSON VideoSelectorProgramIdProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "ProgramId" Prelude.<$> programId]))
instance Property "ProgramId" VideoSelectorProgramIdProperty where
  type PropertyType "ProgramId" VideoSelectorProgramIdProperty = Value Prelude.Integer
  set newValue VideoSelectorProgramIdProperty {}
    = VideoSelectorProgramIdProperty
        {programId = Prelude.pure newValue, ..}