module Stratosphere.DynamoDB.GlobalTable.ReplicaSpecificationProperty (
        module Exports, ReplicaSpecificationProperty(..),
        mkReplicaSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ContributorInsightsSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.KinesisStreamSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.PointInTimeRecoverySpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReadOnDemandThroughputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReadProvisionedThroughputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaGlobalSecondaryIndexSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaSSESpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaStreamSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ResourcePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicaSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html>
    ReplicaSpecificationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-contributorinsightsspecification>
                                  contributorInsightsSpecification :: (Prelude.Maybe ContributorInsightsSpecificationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-deletionprotectionenabled>
                                  deletionProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-globalsecondaryindexes>
                                  globalSecondaryIndexes :: (Prelude.Maybe [ReplicaGlobalSecondaryIndexSpecificationProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-kinesisstreamspecification>
                                  kinesisStreamSpecification :: (Prelude.Maybe KinesisStreamSpecificationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-pointintimerecoveryspecification>
                                  pointInTimeRecoverySpecification :: (Prelude.Maybe PointInTimeRecoverySpecificationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-readondemandthroughputsettings>
                                  readOnDemandThroughputSettings :: (Prelude.Maybe ReadOnDemandThroughputSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-readprovisionedthroughputsettings>
                                  readProvisionedThroughputSettings :: (Prelude.Maybe ReadProvisionedThroughputSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-region>
                                  region :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-replicastreamspecification>
                                  replicaStreamSpecification :: (Prelude.Maybe ReplicaStreamSpecificationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-resourcepolicy>
                                  resourcePolicy :: (Prelude.Maybe ResourcePolicyProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-ssespecification>
                                  sSESpecification :: (Prelude.Maybe ReplicaSSESpecificationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-tableclass>
                                  tableClass :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaspecification.html#cfn-dynamodb-globaltable-replicaspecification-tags>
                                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicaSpecificationProperty ::
  Value Prelude.Text -> ReplicaSpecificationProperty
mkReplicaSpecificationProperty region
  = ReplicaSpecificationProperty
      {haddock_workaround_ = (), region = region,
       contributorInsightsSpecification = Prelude.Nothing,
       deletionProtectionEnabled = Prelude.Nothing,
       globalSecondaryIndexes = Prelude.Nothing,
       kinesisStreamSpecification = Prelude.Nothing,
       pointInTimeRecoverySpecification = Prelude.Nothing,
       readOnDemandThroughputSettings = Prelude.Nothing,
       readProvisionedThroughputSettings = Prelude.Nothing,
       replicaStreamSpecification = Prelude.Nothing,
       resourcePolicy = Prelude.Nothing,
       sSESpecification = Prelude.Nothing, tableClass = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ReplicaSpecificationProperty where
  toResourceProperties ReplicaSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReplicaSpecification",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes
                              [(JSON..=) "ContributorInsightsSpecification"
                                 Prelude.<$> contributorInsightsSpecification,
                               (JSON..=) "DeletionProtectionEnabled"
                                 Prelude.<$> deletionProtectionEnabled,
                               (JSON..=) "GlobalSecondaryIndexes"
                                 Prelude.<$> globalSecondaryIndexes,
                               (JSON..=) "KinesisStreamSpecification"
                                 Prelude.<$> kinesisStreamSpecification,
                               (JSON..=) "PointInTimeRecoverySpecification"
                                 Prelude.<$> pointInTimeRecoverySpecification,
                               (JSON..=) "ReadOnDemandThroughputSettings"
                                 Prelude.<$> readOnDemandThroughputSettings,
                               (JSON..=) "ReadProvisionedThroughputSettings"
                                 Prelude.<$> readProvisionedThroughputSettings,
                               (JSON..=) "ReplicaStreamSpecification"
                                 Prelude.<$> replicaStreamSpecification,
                               (JSON..=) "ResourcePolicy" Prelude.<$> resourcePolicy,
                               (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                               (JSON..=) "TableClass" Prelude.<$> tableClass,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ReplicaSpecificationProperty where
  toJSON ReplicaSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region]
              (Prelude.catMaybes
                 [(JSON..=) "ContributorInsightsSpecification"
                    Prelude.<$> contributorInsightsSpecification,
                  (JSON..=) "DeletionProtectionEnabled"
                    Prelude.<$> deletionProtectionEnabled,
                  (JSON..=) "GlobalSecondaryIndexes"
                    Prelude.<$> globalSecondaryIndexes,
                  (JSON..=) "KinesisStreamSpecification"
                    Prelude.<$> kinesisStreamSpecification,
                  (JSON..=) "PointInTimeRecoverySpecification"
                    Prelude.<$> pointInTimeRecoverySpecification,
                  (JSON..=) "ReadOnDemandThroughputSettings"
                    Prelude.<$> readOnDemandThroughputSettings,
                  (JSON..=) "ReadProvisionedThroughputSettings"
                    Prelude.<$> readProvisionedThroughputSettings,
                  (JSON..=) "ReplicaStreamSpecification"
                    Prelude.<$> replicaStreamSpecification,
                  (JSON..=) "ResourcePolicy" Prelude.<$> resourcePolicy,
                  (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                  (JSON..=) "TableClass" Prelude.<$> tableClass,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContributorInsightsSpecification" ReplicaSpecificationProperty where
  type PropertyType "ContributorInsightsSpecification" ReplicaSpecificationProperty = ContributorInsightsSpecificationProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {contributorInsightsSpecification = Prelude.pure newValue, ..}
instance Property "DeletionProtectionEnabled" ReplicaSpecificationProperty where
  type PropertyType "DeletionProtectionEnabled" ReplicaSpecificationProperty = Value Prelude.Bool
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {deletionProtectionEnabled = Prelude.pure newValue, ..}
instance Property "GlobalSecondaryIndexes" ReplicaSpecificationProperty where
  type PropertyType "GlobalSecondaryIndexes" ReplicaSpecificationProperty = [ReplicaGlobalSecondaryIndexSpecificationProperty]
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {globalSecondaryIndexes = Prelude.pure newValue, ..}
instance Property "KinesisStreamSpecification" ReplicaSpecificationProperty where
  type PropertyType "KinesisStreamSpecification" ReplicaSpecificationProperty = KinesisStreamSpecificationProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {kinesisStreamSpecification = Prelude.pure newValue, ..}
instance Property "PointInTimeRecoverySpecification" ReplicaSpecificationProperty where
  type PropertyType "PointInTimeRecoverySpecification" ReplicaSpecificationProperty = PointInTimeRecoverySpecificationProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {pointInTimeRecoverySpecification = Prelude.pure newValue, ..}
instance Property "ReadOnDemandThroughputSettings" ReplicaSpecificationProperty where
  type PropertyType "ReadOnDemandThroughputSettings" ReplicaSpecificationProperty = ReadOnDemandThroughputSettingsProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {readOnDemandThroughputSettings = Prelude.pure newValue, ..}
instance Property "ReadProvisionedThroughputSettings" ReplicaSpecificationProperty where
  type PropertyType "ReadProvisionedThroughputSettings" ReplicaSpecificationProperty = ReadProvisionedThroughputSettingsProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {readProvisionedThroughputSettings = Prelude.pure newValue, ..}
instance Property "Region" ReplicaSpecificationProperty where
  type PropertyType "Region" ReplicaSpecificationProperty = Value Prelude.Text
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty {region = newValue, ..}
instance Property "ReplicaStreamSpecification" ReplicaSpecificationProperty where
  type PropertyType "ReplicaStreamSpecification" ReplicaSpecificationProperty = ReplicaStreamSpecificationProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {replicaStreamSpecification = Prelude.pure newValue, ..}
instance Property "ResourcePolicy" ReplicaSpecificationProperty where
  type PropertyType "ResourcePolicy" ReplicaSpecificationProperty = ResourcePolicyProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {resourcePolicy = Prelude.pure newValue, ..}
instance Property "SSESpecification" ReplicaSpecificationProperty where
  type PropertyType "SSESpecification" ReplicaSpecificationProperty = ReplicaSSESpecificationProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {sSESpecification = Prelude.pure newValue, ..}
instance Property "TableClass" ReplicaSpecificationProperty where
  type PropertyType "TableClass" ReplicaSpecificationProperty = Value Prelude.Text
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {tableClass = Prelude.pure newValue, ..}
instance Property "Tags" ReplicaSpecificationProperty where
  type PropertyType "Tags" ReplicaSpecificationProperty = [Tag]
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty {tags = Prelude.pure newValue, ..}