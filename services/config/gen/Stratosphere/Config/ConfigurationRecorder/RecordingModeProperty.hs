module Stratosphere.Config.ConfigurationRecorder.RecordingModeProperty (
        module Exports, RecordingModeProperty(..), mkRecordingModeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigurationRecorder.RecordingModeOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordingModeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmode.html>
    RecordingModeProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmode.html#cfn-config-configurationrecorder-recordingmode-recordingfrequency>
                           recordingFrequency :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmode.html#cfn-config-configurationrecorder-recordingmode-recordingmodeoverrides>
                           recordingModeOverrides :: (Prelude.Maybe [RecordingModeOverrideProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingModeProperty ::
  Value Prelude.Text -> RecordingModeProperty
mkRecordingModeProperty recordingFrequency
  = RecordingModeProperty
      {haddock_workaround_ = (), recordingFrequency = recordingFrequency,
       recordingModeOverrides = Prelude.Nothing}
instance ToResourceProperties RecordingModeProperty where
  toResourceProperties RecordingModeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.RecordingMode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordingFrequency" JSON..= recordingFrequency]
                           (Prelude.catMaybes
                              [(JSON..=) "RecordingModeOverrides"
                                 Prelude.<$> recordingModeOverrides]))}
instance JSON.ToJSON RecordingModeProperty where
  toJSON RecordingModeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordingFrequency" JSON..= recordingFrequency]
              (Prelude.catMaybes
                 [(JSON..=) "RecordingModeOverrides"
                    Prelude.<$> recordingModeOverrides])))
instance Property "RecordingFrequency" RecordingModeProperty where
  type PropertyType "RecordingFrequency" RecordingModeProperty = Value Prelude.Text
  set newValue RecordingModeProperty {..}
    = RecordingModeProperty {recordingFrequency = newValue, ..}
instance Property "RecordingModeOverrides" RecordingModeProperty where
  type PropertyType "RecordingModeOverrides" RecordingModeProperty = [RecordingModeOverrideProperty]
  set newValue RecordingModeProperty {..}
    = RecordingModeProperty
        {recordingModeOverrides = Prelude.pure newValue, ..}