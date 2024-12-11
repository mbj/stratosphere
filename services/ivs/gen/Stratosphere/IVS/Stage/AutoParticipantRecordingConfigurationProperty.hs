module Stratosphere.IVS.Stage.AutoParticipantRecordingConfigurationProperty (
        AutoParticipantRecordingConfigurationProperty(..),
        mkAutoParticipantRecordingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoParticipantRecordingConfigurationProperty
  = AutoParticipantRecordingConfigurationProperty {mediaTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   storageConfigurationArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoParticipantRecordingConfigurationProperty ::
  Value Prelude.Text -> AutoParticipantRecordingConfigurationProperty
mkAutoParticipantRecordingConfigurationProperty
  storageConfigurationArn
  = AutoParticipantRecordingConfigurationProperty
      {storageConfigurationArn = storageConfigurationArn,
       mediaTypes = Prelude.Nothing}
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
                              [(JSON..=) "MediaTypes" Prelude.<$> mediaTypes]))}
instance JSON.ToJSON AutoParticipantRecordingConfigurationProperty where
  toJSON AutoParticipantRecordingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StorageConfigurationArn" JSON..= storageConfigurationArn]
              (Prelude.catMaybes
                 [(JSON..=) "MediaTypes" Prelude.<$> mediaTypes])))
instance Property "MediaTypes" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "MediaTypes" AutoParticipantRecordingConfigurationProperty = ValueList Prelude.Text
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {mediaTypes = Prelude.pure newValue, ..}
instance Property "StorageConfigurationArn" AutoParticipantRecordingConfigurationProperty where
  type PropertyType "StorageConfigurationArn" AutoParticipantRecordingConfigurationProperty = Value Prelude.Text
  set newValue AutoParticipantRecordingConfigurationProperty {..}
    = AutoParticipantRecordingConfigurationProperty
        {storageConfigurationArn = newValue, ..}