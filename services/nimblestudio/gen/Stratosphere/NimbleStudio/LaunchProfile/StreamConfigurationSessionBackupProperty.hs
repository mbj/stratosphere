module Stratosphere.NimbleStudio.LaunchProfile.StreamConfigurationSessionBackupProperty (
        StreamConfigurationSessionBackupProperty(..),
        mkStreamConfigurationSessionBackupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamConfigurationSessionBackupProperty
  = StreamConfigurationSessionBackupProperty {maxBackupsToRetain :: (Prelude.Maybe (Value Prelude.Double)),
                                              mode :: (Prelude.Maybe (Value Prelude.Text))}
mkStreamConfigurationSessionBackupProperty ::
  StreamConfigurationSessionBackupProperty
mkStreamConfigurationSessionBackupProperty
  = StreamConfigurationSessionBackupProperty
      {maxBackupsToRetain = Prelude.Nothing, mode = Prelude.Nothing}
instance ToResourceProperties StreamConfigurationSessionBackupProperty where
  toResourceProperties StreamConfigurationSessionBackupProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::LaunchProfile.StreamConfigurationSessionBackup",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxBackupsToRetain" Prelude.<$> maxBackupsToRetain,
                            (JSON..=) "Mode" Prelude.<$> mode])}
instance JSON.ToJSON StreamConfigurationSessionBackupProperty where
  toJSON StreamConfigurationSessionBackupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxBackupsToRetain" Prelude.<$> maxBackupsToRetain,
               (JSON..=) "Mode" Prelude.<$> mode]))
instance Property "MaxBackupsToRetain" StreamConfigurationSessionBackupProperty where
  type PropertyType "MaxBackupsToRetain" StreamConfigurationSessionBackupProperty = Value Prelude.Double
  set newValue StreamConfigurationSessionBackupProperty {..}
    = StreamConfigurationSessionBackupProperty
        {maxBackupsToRetain = Prelude.pure newValue, ..}
instance Property "Mode" StreamConfigurationSessionBackupProperty where
  type PropertyType "Mode" StreamConfigurationSessionBackupProperty = Value Prelude.Text
  set newValue StreamConfigurationSessionBackupProperty {..}
    = StreamConfigurationSessionBackupProperty
        {mode = Prelude.pure newValue, ..}