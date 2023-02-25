module Stratosphere.MediaLive.Channel.TimecodeConfigProperty (
        TimecodeConfigProperty(..), mkTimecodeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimecodeConfigProperty
  = TimecodeConfigProperty {source :: (Prelude.Maybe (Value Prelude.Text)),
                            syncThreshold :: (Prelude.Maybe (Value Prelude.Integer))}
mkTimecodeConfigProperty :: TimecodeConfigProperty
mkTimecodeConfigProperty
  = TimecodeConfigProperty
      {source = Prelude.Nothing, syncThreshold = Prelude.Nothing}
instance ToResourceProperties TimecodeConfigProperty where
  toResourceProperties TimecodeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TimecodeConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Source" Prelude.<$> source,
                            (JSON..=) "SyncThreshold" Prelude.<$> syncThreshold])}
instance JSON.ToJSON TimecodeConfigProperty where
  toJSON TimecodeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Source" Prelude.<$> source,
               (JSON..=) "SyncThreshold" Prelude.<$> syncThreshold]))
instance Property "Source" TimecodeConfigProperty where
  type PropertyType "Source" TimecodeConfigProperty = Value Prelude.Text
  set newValue TimecodeConfigProperty {..}
    = TimecodeConfigProperty {source = Prelude.pure newValue, ..}
instance Property "SyncThreshold" TimecodeConfigProperty where
  type PropertyType "SyncThreshold" TimecodeConfigProperty = Value Prelude.Integer
  set newValue TimecodeConfigProperty {..}
    = TimecodeConfigProperty
        {syncThreshold = Prelude.pure newValue, ..}