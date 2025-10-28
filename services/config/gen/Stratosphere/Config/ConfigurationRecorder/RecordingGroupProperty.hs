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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html>
    RecordingGroupProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-allsupported>
                            allSupported :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-exclusionbyresourcetypes>
                            exclusionByResourceTypes :: (Prelude.Maybe ExclusionByResourceTypesProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-includeglobalresourcetypes>
                            includeGlobalResourceTypes :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-recordingstrategy>
                            recordingStrategy :: (Prelude.Maybe RecordingStrategyProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationrecorder-recordinggroup.html#cfn-config-configurationrecorder-recordinggroup-resourcetypes>
                            resourceTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingGroupProperty :: RecordingGroupProperty
mkRecordingGroupProperty
  = RecordingGroupProperty
      {haddock_workaround_ = (), allSupported = Prelude.Nothing,
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