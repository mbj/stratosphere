module Stratosphere.IVS.Stage.AutoParticipantRecordingConfigurationProperty (
        module Exports, AutoParticipantRecordingConfigurationProperty(..),
        mkAutoParticipantRecordingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IVS.Stage.HlsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IVS.Stage.ThumbnailConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoParticipantRecordingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-autoparticipantrecordingconfiguration.html>
    AutoParticipantRecordingConfigurationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-autoparticipantrecordingconfiguration.html#cfn-ivs-stage-autoparticipantrecordingconfiguration-hlsconfiguration>
                                                   hlsConfiguration :: (Prelude.Maybe HlsConfigurationProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-autoparticipantrecordingconfiguration.html#cfn-ivs-stage-autoparticipantrecordingconfiguration-mediatypes>
                                                   mediaTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-autoparticipantrecordingconfiguration.html#cfn-ivs-stage-autoparticipantrecordingconfiguration-recordingreconnectwindowseconds>
                                                   recordingReconnectWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-autoparticipantrecordingconfiguration.html#cfn-ivs-stage-autoparticipantrecordingconfiguration-storageconfigurationarn>
                                                   storageConfigurationArn :: (Value Prelude.Text),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-autoparticipantrecordingconfiguration.html#cfn-ivs-stage-autoparticipantrecordingconfiguration-thumbnailconfiguration>
                                                   thumbnailConfiguration :: (Prelude.Maybe ThumbnailConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoParticipantRecordingConfigurationProperty ::
  Value Prelude.Text -> AutoParticipantRecordingConfigurationProperty
mkAutoParticipantRecordingConfigurationProperty
  storageConfigurationArn
  = AutoParticipantRecordingConfigurationProperty
      {haddock_workaround_ = (),
       storageConfigurationArn = storageConfigurationArn,
       hlsConfiguration = Prelude.Nothing, mediaTypes = Prelude.Nothing,
       recordingReconnectWindowSeconds = Prelude.Nothing,
       thumbnailConfiguration = Prelude.Nothing}
instance ToResourceProperties AutoParticipantRecordingConfigurationProperty where
  toResourceProperties
    AutoParticipantRecordingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IVS::Stage.AutoParticipantRecordingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StorageConfigurationArn" JSON..= storageConfigurationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "HlsConfiguration" Prelude.<$> hlsConfiguration,
                               (JSON..=) "MediaTypes" Prelude.<$> mediaTypes,
                               (JSON..=) "RecordingReconnectWindowSeconds"
                                 Prelude.<$> recordingReconnectWindowSeconds,
                               (JSON..=) "ThumbnailConfiguration"
                                 Prelude.<$> thumbnailConfiguration]))}
instance JSON.ToJSON AutoParticipantRecordingConfigurationProperty where
  toJSON AutoParticipantRecordingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StorageConfigurationArn" JSON..= storageConfigurationArn]
              (Prelude.catMaybes
                 [(JSON..=) "HlsConfiguration" Prelude.<$> hlsConfiguration,
                  (JSON..=) "MediaTypes" Prelude.<$> mediaTypes,
                  (JSON..=) "RecordingReconnectWindowSeconds"
                    Prelude.<$> recordingReconnectWindowSeconds,
                  (JSON..=) "ThumbnailConfiguration"
                    Prelude.<$> thumbnailConfiguration])))
instance Property "HlsConfiguration" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "HlsConfiguration" AutoParticipantRecordingConfigurationProperty = HlsConfigurationProperty
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {hlsConfiguration = Prelude.pure newValue, ..}
instance Property "MediaTypes" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "MediaTypes" AutoParticipantRecordingConfigurationProperty = ValueList Prelude.Text
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {mediaTypes = Prelude.pure newValue, ..}
instance Property "RecordingReconnectWindowSeconds" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "RecordingReconnectWindowSeconds" AutoParticipantRecordingConfigurationProperty = Value Prelude.Integer
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {recordingReconnectWindowSeconds = Prelude.pure newValue, ..}
instance Property "StorageConfigurationArn" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "StorageConfigurationArn" AutoParticipantRecordingConfigurationProperty = Value Prelude.Text
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {storageConfigurationArn = newValue, ..}
instance Property "ThumbnailConfiguration" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "ThumbnailConfiguration" AutoParticipantRecordingConfigurationProperty = ThumbnailConfigurationProperty
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {thumbnailConfiguration = Prelude.pure newValue, ..}