module Stratosphere.CloudTrail.EventDataStore (
        module Exports, EventDataStore(..), mkEventDataStore
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.EventDataStore.AdvancedEventSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudTrail.EventDataStore.InsightSelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EventDataStore
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html>
    EventDataStore {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-advancedeventselectors>
                    advancedEventSelectors :: (Prelude.Maybe [AdvancedEventSelectorProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-billingmode>
                    billingMode :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-federationenabled>
                    federationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-federationrolearn>
                    federationRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-ingestionenabled>
                    ingestionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-insightselectors>
                    insightSelectors :: (Prelude.Maybe [InsightSelectorProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-insightsdestination>
                    insightsDestination :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-kmskeyid>
                    kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-multiregionenabled>
                    multiRegionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-organizationenabled>
                    organizationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-retentionperiod>
                    retentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-eventdatastore.html#cfn-cloudtrail-eventdatastore-terminationprotectionenabled>
                    terminationProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEventDataStore :: EventDataStore
mkEventDataStore
  = EventDataStore
      {haddock_workaround_ = (),
       advancedEventSelectors = Prelude.Nothing,
       billingMode = Prelude.Nothing, federationEnabled = Prelude.Nothing,
       federationRoleArn = Prelude.Nothing,
       ingestionEnabled = Prelude.Nothing,
       insightSelectors = Prelude.Nothing,
       insightsDestination = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
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
                            (JSON..=) "BillingMode" Prelude.<$> billingMode,
                            (JSON..=) "FederationEnabled" Prelude.<$> federationEnabled,
                            (JSON..=) "FederationRoleArn" Prelude.<$> federationRoleArn,
                            (JSON..=) "IngestionEnabled" Prelude.<$> ingestionEnabled,
                            (JSON..=) "InsightSelectors" Prelude.<$> insightSelectors,
                            (JSON..=) "InsightsDestination" Prelude.<$> insightsDestination,
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
               (JSON..=) "BillingMode" Prelude.<$> billingMode,
               (JSON..=) "FederationEnabled" Prelude.<$> federationEnabled,
               (JSON..=) "FederationRoleArn" Prelude.<$> federationRoleArn,
               (JSON..=) "IngestionEnabled" Prelude.<$> ingestionEnabled,
               (JSON..=) "InsightSelectors" Prelude.<$> insightSelectors,
               (JSON..=) "InsightsDestination" Prelude.<$> insightsDestination,
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
instance Property "BillingMode" EventDataStore where
  type PropertyType "BillingMode" EventDataStore = Value Prelude.Text
  set newValue EventDataStore {..}
    = EventDataStore {billingMode = Prelude.pure newValue, ..}
instance Property "FederationEnabled" EventDataStore where
  type PropertyType "FederationEnabled" EventDataStore = Value Prelude.Bool
  set newValue EventDataStore {..}
    = EventDataStore {federationEnabled = Prelude.pure newValue, ..}
instance Property "FederationRoleArn" EventDataStore where
  type PropertyType "FederationRoleArn" EventDataStore = Value Prelude.Text
  set newValue EventDataStore {..}
    = EventDataStore {federationRoleArn = Prelude.pure newValue, ..}
instance Property "IngestionEnabled" EventDataStore where
  type PropertyType "IngestionEnabled" EventDataStore = Value Prelude.Bool
  set newValue EventDataStore {..}
    = EventDataStore {ingestionEnabled = Prelude.pure newValue, ..}
instance Property "InsightSelectors" EventDataStore where
  type PropertyType "InsightSelectors" EventDataStore = [InsightSelectorProperty]
  set newValue EventDataStore {..}
    = EventDataStore {insightSelectors = Prelude.pure newValue, ..}
instance Property "InsightsDestination" EventDataStore where
  type PropertyType "InsightsDestination" EventDataStore = Value Prelude.Text
  set newValue EventDataStore {..}
    = EventDataStore {insightsDestination = Prelude.pure newValue, ..}
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