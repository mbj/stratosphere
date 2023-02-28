module Stratosphere.Config.ConfigurationRecorder (
        module Exports, ConfigurationRecorder(..), mkConfigurationRecorder
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigurationRecorder.RecordingGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfigurationRecorder
  = ConfigurationRecorder {name :: (Prelude.Maybe (Value Prelude.Text)),
                           recordingGroup :: (Prelude.Maybe RecordingGroupProperty),
                           roleARN :: (Value Prelude.Text)}
mkConfigurationRecorder ::
  Value Prelude.Text -> ConfigurationRecorder
mkConfigurationRecorder roleARN
  = ConfigurationRecorder
      {roleARN = roleARN, name = Prelude.Nothing,
       recordingGroup = Prelude.Nothing}
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
                               (JSON..=) "RecordingGroup" Prelude.<$> recordingGroup]))}
instance JSON.ToJSON ConfigurationRecorder where
  toJSON ConfigurationRecorder {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleARN" JSON..= roleARN]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RecordingGroup" Prelude.<$> recordingGroup])))
instance Property "Name" ConfigurationRecorder where
  type PropertyType "Name" ConfigurationRecorder = Value Prelude.Text
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder {name = Prelude.pure newValue, ..}
instance Property "RecordingGroup" ConfigurationRecorder where
  type PropertyType "RecordingGroup" ConfigurationRecorder = RecordingGroupProperty
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder
        {recordingGroup = Prelude.pure newValue, ..}
instance Property "RoleARN" ConfigurationRecorder where
  type PropertyType "RoleARN" ConfigurationRecorder = Value Prelude.Text
  set newValue ConfigurationRecorder {..}
    = ConfigurationRecorder {roleARN = newValue, ..}