module Stratosphere.Config.ConfigurationRecorder.RecordingGroupProperty (
        module Exports, RecordingGroupProperty(..),
        mkRecordingGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConfigurationRecorder.ExclusionByResourceTypesProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConfigurationRecorder.RecordingStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RecordingGroupProperty
  = RecordingGroupProperty {allSupported :: (Prelude.Maybe (Value Prelude.Bool)),
                            exclusionByResourceTypes :: (Prelude.Maybe ExclusionByResourceTypesProperty),
                            includeGlobalResourceTypes :: (Prelude.Maybe (Value Prelude.Bool)),
                            recordingStrategy :: (Prelude.Maybe RecordingStrategyProperty),
                            resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingGroupProperty :: RecordingGroupProperty
mkRecordingGroupProperty
  = RecordingGroupProperty
      {allSupported = Prelude.Nothing,
       exclusionByResourceTypes = Prelude.Nothing,
       includeGlobalResourceTypes = Prelude.Nothing,
       recordingStrategy = Prelude.Nothing,
       resourceTypes = Prelude.Nothing}
instance ToResourceProperties RecordingGroupProperty where
  toResourceProperties RecordingGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConfigurationRecorder.RecordingGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllSupported" Prelude.<$> allSupported,
                            (JSON..=) "ExclusionByResourceTypes"
                              Prelude.<$> exclusionByResourceTypes,
                            (JSON..=) "IncludeGlobalResourceTypes"
                              Prelude.<$> includeGlobalResourceTypes,
                            (JSON..=) "RecordingStrategy" Prelude.<$> recordingStrategy,
                            (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes])}
instance JSON.ToJSON RecordingGroupProperty where
  toJSON RecordingGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllSupported" Prelude.<$> allSupported,
               (JSON..=) "ExclusionByResourceTypes"
                 Prelude.<$> exclusionByResourceTypes,
               (JSON..=) "IncludeGlobalResourceTypes"
                 Prelude.<$> includeGlobalResourceTypes,
               (JSON..=) "RecordingStrategy" Prelude.<$> recordingStrategy,
               (JSON..=) "ResourceTypes" Prelude.<$> resourceTypes]))
instance Property "AllSupported" RecordingGroupProperty where
  type PropertyType "AllSupported" RecordingGroupProperty = Value Prelude.Bool
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty {allSupported = Prelude.pure newValue, ..}
instance Property "ExclusionByResourceTypes" RecordingGroupProperty where
  type PropertyType "ExclusionByResourceTypes" RecordingGroupProperty = ExclusionByResourceTypesProperty
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty
        {exclusionByResourceTypes = Prelude.pure newValue, ..}
instance Property "IncludeGlobalResourceTypes" RecordingGroupProperty where
  type PropertyType "IncludeGlobalResourceTypes" RecordingGroupProperty = Value Prelude.Bool
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty
        {includeGlobalResourceTypes = Prelude.pure newValue, ..}
instance Property "RecordingStrategy" RecordingGroupProperty where
  type PropertyType "RecordingStrategy" RecordingGroupProperty = RecordingStrategyProperty
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty
        {recordingStrategy = Prelude.pure newValue, ..}
instance Property "ResourceTypes" RecordingGroupProperty where
  type PropertyType "ResourceTypes" RecordingGroupProperty = ValueList Prelude.Text
  set newValue RecordingGroupProperty {..}
    = RecordingGroupProperty
        {resourceTypes = Prelude.pure newValue, ..}