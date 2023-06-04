module Stratosphere.CloudTrail.EventDataStore (
        module Exports, EventDataStore(..), mkEventDataStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.EventDataStore.AdvancedEventSelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventDataStore
  = EventDataStore {advancedEventSelectors :: (Prelude.Maybe [AdvancedEventSelectorProperty]),
                    ingestionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                    multiRegionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    organizationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    retentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                    tags :: (Prelude.Maybe [Tag]),
                    terminationProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkEventDataStore :: EventDataStore
mkEventDataStore
  = EventDataStore
      {advancedEventSelectors = Prelude.Nothing,
       ingestionEnabled = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       multiRegionEnabled = Prelude.Nothing, name = Prelude.Nothing,
       organizationEnabled = Prelude.Nothing,
       retentionPeriod = Prelude.Nothing, tags = Prelude.Nothing,
       terminationProtectionEnabled = Prelude.Nothing}
instance ToResourceProperties EventDataStore where
  toResourceProperties EventDataStore {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::EventDataStore",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdvancedEventSelectors"
                              Prelude.<$> advancedEventSelectors,
                            (JSON..=) "IngestionEnabled" Prelude.<$> ingestionEnabled,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "MultiRegionEnabled" Prelude.<$> multiRegionEnabled,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "OrganizationEnabled" Prelude.<$> organizationEnabled,
                            (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TerminationProtectionEnabled"
                              Prelude.<$> terminationProtectionEnabled])}
instance JSON.ToJSON EventDataStore where
  toJSON EventDataStore {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdvancedEventSelectors"
                 Prelude.<$> advancedEventSelectors,
               (JSON..=) "IngestionEnabled" Prelude.<$> ingestionEnabled,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "MultiRegionEnabled" Prelude.<$> multiRegionEnabled,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "OrganizationEnabled" Prelude.<$> organizationEnabled,
               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TerminationProtectionEnabled"
                 Prelude.<$> terminationProtectionEnabled]))
instance Property "AdvancedEventSelectors" EventDataStore where
  type PropertyType "AdvancedEventSelectors" EventDataStore = [AdvancedEventSelectorProperty]
  set newValue EventDataStore {..}
    = EventDataStore
        {advancedEventSelectors = Prelude.pure newValue, ..}
instance Property "IngestionEnabled" EventDataStore where
  type PropertyType "IngestionEnabled" EventDataStore = Value Prelude.Bool
  set newValue EventDataStore {..}
    = EventDataStore {ingestionEnabled = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EventDataStore where
  type PropertyType "KmsKeyId" EventDataStore = Value Prelude.Text
  set newValue EventDataStore {..}
    = EventDataStore {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MultiRegionEnabled" EventDataStore where
  type PropertyType "MultiRegionEnabled" EventDataStore = Value Prelude.Bool
  set newValue EventDataStore {..}
    = EventDataStore {multiRegionEnabled = Prelude.pure newValue, ..}
instance Property "Name" EventDataStore where
  type PropertyType "Name" EventDataStore = Value Prelude.Text
  set newValue EventDataStore {..}
    = EventDataStore {name = Prelude.pure newValue, ..}
instance Property "OrganizationEnabled" EventDataStore where
  type PropertyType "OrganizationEnabled" EventDataStore = Value Prelude.Bool
  set newValue EventDataStore {..}
    = EventDataStore {organizationEnabled = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" EventDataStore where
  type PropertyType "RetentionPeriod" EventDataStore = Value Prelude.Integer
  set newValue EventDataStore {..}
    = EventDataStore {retentionPeriod = Prelude.pure newValue, ..}
instance Property "Tags" EventDataStore where
  type PropertyType "Tags" EventDataStore = [Tag]
  set newValue EventDataStore {..}
    = EventDataStore {tags = Prelude.pure newValue, ..}
instance Property "TerminationProtectionEnabled" EventDataStore where
  type PropertyType "TerminationProtectionEnabled" EventDataStore = Value Prelude.Bool
  set newValue EventDataStore {..}
    = EventDataStore
        {terminationProtectionEnabled = Prelude.pure newValue, ..}