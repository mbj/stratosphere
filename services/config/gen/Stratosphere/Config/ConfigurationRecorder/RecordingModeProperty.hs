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
  = RecordingModeProperty {recordingFrequency :: (Value Prelude.Text),
                           recordingModeOverrides :: (Prelude.Maybe [RecordingModeOverrideProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingModeProperty ::
  Value Prelude.Text -> RecordingModeProperty
mkRecordingModeProperty recordingFrequency
  = RecordingModeProperty
      {recordingFrequency = recordingFrequency,
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