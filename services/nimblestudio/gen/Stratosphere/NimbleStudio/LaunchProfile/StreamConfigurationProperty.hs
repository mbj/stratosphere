module Stratosphere.NimbleStudio.LaunchProfile.StreamConfigurationProperty (
        module Exports, StreamConfigurationProperty(..),
        mkStreamConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.LaunchProfile.StreamConfigurationSessionBackupProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.LaunchProfile.StreamConfigurationSessionStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.LaunchProfile.VolumeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamConfigurationProperty
  = StreamConfigurationProperty {automaticTerminationMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 clipboardMode :: (Value Prelude.Text),
                                 ec2InstanceTypes :: (ValueList Prelude.Text),
                                 maxSessionLengthInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                 maxStoppedSessionLengthInMinutes :: (Prelude.Maybe (Value Prelude.Double)),
                                 sessionBackup :: (Prelude.Maybe StreamConfigurationSessionBackupProperty),
                                 sessionPersistenceMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 sessionStorage :: (Prelude.Maybe StreamConfigurationSessionStorageProperty),
                                 streamingImageIds :: (ValueList Prelude.Text),
                                 volumeConfiguration :: (Prelude.Maybe VolumeConfigurationProperty)}
mkStreamConfigurationProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> ValueList Prelude.Text -> StreamConfigurationProperty
mkStreamConfigurationProperty
  clipboardMode
  ec2InstanceTypes
  streamingImageIds
  = StreamConfigurationProperty
      {clipboardMode = clipboardMode,
       ec2InstanceTypes = ec2InstanceTypes,
       streamingImageIds = streamingImageIds,
       automaticTerminationMode = Prelude.Nothing,
       maxSessionLengthInMinutes = Prelude.Nothing,
       maxStoppedSessionLengthInMinutes = Prelude.Nothing,
       sessionBackup = Prelude.Nothing,
       sessionPersistenceMode = Prelude.Nothing,
       sessionStorage = Prelude.Nothing,
       volumeConfiguration = Prelude.Nothing}
instance ToResourceProperties StreamConfigurationProperty where
  toResourceProperties StreamConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::LaunchProfile.StreamConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClipboardMode" JSON..= clipboardMode,
                            "Ec2InstanceTypes" JSON..= ec2InstanceTypes,
                            "StreamingImageIds" JSON..= streamingImageIds]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticTerminationMode"
                                 Prelude.<$> automaticTerminationMode,
                               (JSON..=) "MaxSessionLengthInMinutes"
                                 Prelude.<$> maxSessionLengthInMinutes,
                               (JSON..=) "MaxStoppedSessionLengthInMinutes"
                                 Prelude.<$> maxStoppedSessionLengthInMinutes,
                               (JSON..=) "SessionBackup" Prelude.<$> sessionBackup,
                               (JSON..=) "SessionPersistenceMode"
                                 Prelude.<$> sessionPersistenceMode,
                               (JSON..=) "SessionStorage" Prelude.<$> sessionStorage,
                               (JSON..=) "VolumeConfiguration" Prelude.<$> volumeConfiguration]))}
instance JSON.ToJSON StreamConfigurationProperty where
  toJSON StreamConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClipboardMode" JSON..= clipboardMode,
               "Ec2InstanceTypes" JSON..= ec2InstanceTypes,
               "StreamingImageIds" JSON..= streamingImageIds]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticTerminationMode"
                    Prelude.<$> automaticTerminationMode,
                  (JSON..=) "MaxSessionLengthInMinutes"
                    Prelude.<$> maxSessionLengthInMinutes,
                  (JSON..=) "MaxStoppedSessionLengthInMinutes"
                    Prelude.<$> maxStoppedSessionLengthInMinutes,
                  (JSON..=) "SessionBackup" Prelude.<$> sessionBackup,
                  (JSON..=) "SessionPersistenceMode"
                    Prelude.<$> sessionPersistenceMode,
                  (JSON..=) "SessionStorage" Prelude.<$> sessionStorage,
                  (JSON..=) "VolumeConfiguration" Prelude.<$> volumeConfiguration])))
instance Property "AutomaticTerminationMode" StreamConfigurationProperty where
  type PropertyType "AutomaticTerminationMode" StreamConfigurationProperty = Value Prelude.Text
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {automaticTerminationMode = Prelude.pure newValue, ..}
instance Property "ClipboardMode" StreamConfigurationProperty where
  type PropertyType "ClipboardMode" StreamConfigurationProperty = Value Prelude.Text
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty {clipboardMode = newValue, ..}
instance Property "Ec2InstanceTypes" StreamConfigurationProperty where
  type PropertyType "Ec2InstanceTypes" StreamConfigurationProperty = ValueList Prelude.Text
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty {ec2InstanceTypes = newValue, ..}
instance Property "MaxSessionLengthInMinutes" StreamConfigurationProperty where
  type PropertyType "MaxSessionLengthInMinutes" StreamConfigurationProperty = Value Prelude.Double
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {maxSessionLengthInMinutes = Prelude.pure newValue, ..}
instance Property "MaxStoppedSessionLengthInMinutes" StreamConfigurationProperty where
  type PropertyType "MaxStoppedSessionLengthInMinutes" StreamConfigurationProperty = Value Prelude.Double
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {maxStoppedSessionLengthInMinutes = Prelude.pure newValue, ..}
instance Property "SessionBackup" StreamConfigurationProperty where
  type PropertyType "SessionBackup" StreamConfigurationProperty = StreamConfigurationSessionBackupProperty
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {sessionBackup = Prelude.pure newValue, ..}
instance Property "SessionPersistenceMode" StreamConfigurationProperty where
  type PropertyType "SessionPersistenceMode" StreamConfigurationProperty = Value Prelude.Text
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {sessionPersistenceMode = Prelude.pure newValue, ..}
instance Property "SessionStorage" StreamConfigurationProperty where
  type PropertyType "SessionStorage" StreamConfigurationProperty = StreamConfigurationSessionStorageProperty
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {sessionStorage = Prelude.pure newValue, ..}
instance Property "StreamingImageIds" StreamConfigurationProperty where
  type PropertyType "StreamingImageIds" StreamConfigurationProperty = ValueList Prelude.Text
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty {streamingImageIds = newValue, ..}
instance Property "VolumeConfiguration" StreamConfigurationProperty where
  type PropertyType "VolumeConfiguration" StreamConfigurationProperty = VolumeConfigurationProperty
  set newValue StreamConfigurationProperty {..}
    = StreamConfigurationProperty
        {volumeConfiguration = Prelude.pure newValue, ..}