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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html>
    ThumbnailConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-recordingmode>
                                    recordingMode :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-resolution>
                                    resolution :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-storage>
                                    storage :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-thumbnailconfiguration.html#cfn-ivs-recordingconfiguration-thumbnailconfiguration-targetintervalseconds>
                                    targetIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThumbnailConfigurationProperty :: ThumbnailConfigurationProperty
mkThumbnailConfigurationProperty
  = ThumbnailConfigurationProperty
      {haddock_workaround_ = (), recordingMode = Prelude.Nothing,
       resolution = Prelude.Nothing, storage = Prelude.Nothing,
       targetIntervalSeconds = Prelude.Nothing}
instance ToResourceProperties ThumbnailConfigurationProperty where
  toResourceProperties ThumbnailConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::RecordingConfiguration.ThumbnailConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RecordingMode" Prelude.<$> recordingMode,
                            (JSON..=) "Resolution" Prelude.<$> resolution,
                            (JSON..=) "Storage" Prelude.<$> storage,
                            (JSON..=) "TargetIntervalSeconds"
                              Prelude.<$> targetIntervalSeconds])}
instance JSON.ToJSON ThumbnailConfigurationProperty where
  toJSON ThumbnailConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RecordingMode" Prelude.<$> recordingMode,
               (JSON..=) "Resolution" Prelude.<$> resolution,
               (JSON..=) "Storage" Prelude.<$> storage,
               (JSON..=) "TargetIntervalSeconds"
                 Prelude.<$> targetIntervalSeconds]))
instance Property "RecordingMode" ThumbnailConfigurationProperty where
  type PropertyType "RecordingMode" ThumbnailConfigurationProperty = Value Prelude.Text
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty
        {recordingMode = Prelude.pure newValue, ..}
instance Property "Resolution" ThumbnailConfigurationProperty where
  type PropertyType "Resolution" ThumbnailConfigurationProperty = Value Prelude.Text
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty
        {resolution = Prelude.pure newValue, ..}
instance Property "Storage" ThumbnailConfigurationProperty where
  type PropertyType "Storage" ThumbnailConfigurationProperty = ValueList Prelude.Text
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty
        {storage = Prelude.pure newValue, ..}
instance Property "TargetIntervalSeconds" ThumbnailConfigurationProperty where
  type PropertyType "TargetIntervalSeconds" ThumbnailConfigurationProperty = Value Prelude.Integer
  set newValue ThumbnailConfigurationProperty {..}
    = ThumbnailConfigurationProperty
        {targetIntervalSeconds = Prelude.pure newValue, ..}