module Stratosphere.Config.ConfigurationRecorder (
        module Exports, ConfigurationRecorder(..), mkConfigurationRecorder
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigurationRecorder.RecordingGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigurationRecorder.RecordingModeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationRecorder
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html>
    ConfigurationRecorder {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-recordinggroup>
                           recordingGroup :: (Prelude.Maybe RecordingGroupProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-recordingmode>
                           recordingMode :: (Prelude.Maybe RecordingModeProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationrecorder.html#cfn-config-configurationrecorder-rolearn>
                           roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationRecorder ::
  Value Prelude.Text -> ConfigurationRecorder
mkConfigurationRecorder roleARN
  = ConfigurationRecorder
      {haddock_workaround_ = (), roleARN = roleARN,
       name = Prelude.Nothing, recordingGroup = Prelude.Nothing,
       recordingMode = Prelude.Nothing}
instance ToResourceProperties ConfigurationRecorder where
  toResourceProperties ConfigurationRecorder {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleARN" JSON..= roleARN]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RecordingGroup" Prelude.<$> recordingGroup,
                               (JSON..=) "RecordingMode" Prelude.<$> recordingMode]))}
instance JSON.ToJSON ConfigurationRecorder where
  toJSON ConfigurationRecorder {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleARN" JSON..= roleARN]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RecordingGroup" Prelude.<$> recordingGroup,
                  (JSON..=) "RecordingMode" Prelude.<$> recordingMode])))
instance Property "Name" ConfigurationRecorder where
  type PropertyType "Name" ConfigurationRecorder = Value Prelude.Text
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder {name = Prelude.pure newValue, ..}
instance Property "RecordingGroup" ConfigurationRecorder where
  type PropertyType "RecordingGroup" ConfigurationRecorder = RecordingGroupProperty
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder
        {recordingGroup = Prelude.pure newValue, ..}
instance Property "RecordingMode" ConfigurationRecorder where
  type PropertyType "RecordingMode" ConfigurationRecorder = RecordingModeProperty
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder {recordingMode = Prelude.pure newValue, ..}
instance Property "RoleARN" ConfigurationRecorder where
  type PropertyType "RoleARN" ConfigurationRecorder = Value Prelude.Text
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder {roleARN = newValue, ..}