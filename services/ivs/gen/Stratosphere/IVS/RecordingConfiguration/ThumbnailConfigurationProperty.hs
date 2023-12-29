module Stratosphere.IVS.RecordingConfiguration.ThumbnailConfigurationProperty (
        ThumbnailConfigurationProperty(..),
        mkThumbnailConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThumbnailConfigurationProperty
  = ThumbnailConfigurationProperty {recordingMode :: (Value Prelude.Text),
                                    targetIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThumbnailConfigurationProperty ::
  Value Prelude.Text -> ThumbnailConfigurationProperty
mkThumbnailConfigurationProperty recordingMode
  = ThumbnailConfigurationProperty
      {recordingMode = recordingMode,
       targetIntervalSeconds = Prelude.Nothing}
instance ToResourceProperties ThumbnailConfigurationProperty where
  toResourceProperties ThumbnailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration.ThumbnailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RecordingMode" JSON..= recordingMode]
                           (Prelude.catMaybes
                              [(JSON..=) "TargetIntervalSeconds"
                                 Prelude.<$> targetIntervalSeconds]))}
instance JSON.ToJSON ThumbnailConfigurationProperty where
  toJSON ThumbnailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RecordingMode" JSON..= recordingMode]
              (Prelude.catMaybes
                 [(JSON..=) "TargetIntervalSeconds"
                    Prelude.<$> targetIntervalSeconds])))
instance Property "RecordingMode" ThumbnailConfigurationProperty where
  type PropertyType "RecordingMode" ThumbnailConfigurationProperty = Value Prelude.Text
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty {recordingMode = newValue, ..}
instance Property "TargetIntervalSeconds" ThumbnailConfigurationProperty where
  type PropertyType "TargetIntervalSeconds" ThumbnailConfigurationProperty = Value Prelude.Integer
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty
        {targetIntervalSeconds = Prelude.pure newValue, ..}