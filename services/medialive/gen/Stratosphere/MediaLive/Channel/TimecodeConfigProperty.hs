module Stratosphere.MediaLive.Channel.TimecodeConfigProperty (
        TimecodeConfigProperty(..), mkTimecodeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimecodeConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-timecodeconfig.html>
    TimecodeConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-timecodeconfig.html#cfn-medialive-channel-timecodeconfig-source>
                            source :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-timecodeconfig.html#cfn-medialive-channel-timecodeconfig-syncthreshold>
                            syncThreshold :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimecodeConfigProperty :: TimecodeConfigProperty
mkTimecodeConfigProperty
  = TimecodeConfigProperty
      {haddock_workaround_ = (), source = Prelude.Nothing,
       syncThreshold = Prelude.Nothing}
instance ToResourceProperties TimecodeConfigProperty where
  toResourceProperties TimecodeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TimecodeConfig",
         supportsTags = Prelude.False,
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