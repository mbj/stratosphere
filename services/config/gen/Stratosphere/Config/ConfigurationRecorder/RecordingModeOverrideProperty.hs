module Stratosphere.Config.ConfigurationRecorder.RecordingModeOverrideProperty (
        RecordingModeOverrideProperty(..), mkRecordingModeOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordingModeOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmodeoverride.html>
    RecordingModeOverrideProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmodeoverride.html#cfn-config-configurationrecorder-recordingmodeoverride-description>
                                   description :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmodeoverride.html#cfn-config-configurationrecorder-recordingmodeoverride-recordingfrequency>
                                   recordingFrequency :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordingmodeoverride.html#cfn-config-configurationrecorder-recordingmodeoverride-resourcetypes>
                                   resourceTypes :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingModeOverrideProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> RecordingModeOverrideProperty
mkRecordingModeOverrideProperty recordingFrequency resourceTypes
  = RecordingModeOverrideProperty
      {haddock_workaround_ = (), recordingFrequency = recordingFrequency,
       resourceTypes = resourceTypes, description = Prelude.Nothing}
instance ToResourceProperties RecordingModeOverrideProperty where
  toResourceProperties RecordingModeOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.RecordingModeOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordingFrequency" JSON..= recordingFrequency,
                            "ResourceTypes" JSON..= resourceTypes]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON RecordingModeOverrideProperty where
  toJSON RecordingModeOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordingFrequency" JSON..= recordingFrequency,
               "ResourceTypes" JSON..= resourceTypes]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "Description" RecordingModeOverrideProperty where
  type PropertyType "Description" RecordingModeOverrideProperty = Value Prelude.Text
  set newValue RecordingModeOverrideProperty {..}
    = RecordingModeOverrideProperty
        {description = Prelude.pure newValue, ..}
instance Property "RecordingFrequency" RecordingModeOverrideProperty where
  type PropertyType "RecordingFrequency" RecordingModeOverrideProperty = Value Prelude.Text
  set newValue RecordingModeOverrideProperty {..}
    = RecordingModeOverrideProperty {recordingFrequency = newValue, ..}
instance Property "ResourceTypes" RecordingModeOverrideProperty where
  type PropertyType "ResourceTypes" RecordingModeOverrideProperty = ValueList Prelude.Text
  set newValue RecordingModeOverrideProperty {..}
    = RecordingModeOverrideProperty {resourceTypes = newValue, ..}