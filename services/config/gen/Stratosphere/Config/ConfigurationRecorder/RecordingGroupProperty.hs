module Stratosphere.Config.ConfigurationRecorder.RecordingGroupProperty (
        RecordingGroupProperty(..), mkRecordingGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordingGroupProperty
  = RecordingGroupProperty {allSupported :: (Prelude.Maybe (Value Prelude.Bool)),
                            includeGlobalResourceTypes :: (Prelude.Maybe (Value Prelude.Bool)),
                            resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
mkRecordingGroupProperty :: RecordingGroupProperty
mkRecordingGroupProperty
  = RecordingGroupProperty
      {allSupported = Prelude.Nothing,
       includeGlobalResourceTypes = Prelude.Nothing,
       resourceTypes = Prelude.Nothing}
instance ToResourceProperties RecordingGroupProperty where
  toResourceProperties RecordingGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.RecordingGroup",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllSupported" Prelude.<$> allSupported,
                            (JSON..=) "IncludeGlobalResourceTypes"
                              Prelude.<$> includeGlobalResourceTypes,
                            (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes])}
instance JSON.ToJSON RecordingGroupProperty where
  toJSON RecordingGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllSupported" Prelude.<$> allSupported,
               (JSON..=) "IncludeGlobalResourceTypes"
                 Prelude.<$> includeGlobalResourceTypes,
               (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes]))
instance Property "AllSupported" RecordingGroupProperty where
  type PropertyType "AllSupported" RecordingGroupProperty = Value Prelude.Bool
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty {allSupported = Prelude.pure newValue, ..}
instance Property "IncludeGlobalResourceTypes" RecordingGroupProperty where
  type PropertyType "IncludeGlobalResourceTypes" RecordingGroupProperty = Value Prelude.Bool
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty
        {includeGlobalResourceTypes = Prelude.pure newValue, ..}
instance Property "ResourceTypes" RecordingGroupProperty where
  type PropertyType "ResourceTypes" RecordingGroupProperty = ValueList Prelude.Text
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty
        {resourceTypes = Prelude.pure newValue, ..}