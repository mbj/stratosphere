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
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReadProvisionedThroughputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaGlobalSecondaryIndexSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaSSESpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicaSpecificationProperty
  = ReplicaSpecificationProperty {contributorInsightsSpecification :: (Prelude.Maybe ContributorInsightsSpecificationProperty),
                                  globalSecondaryIndexes :: (Prelude.Maybe [ReplicaGlobalSecondaryIndexSpecificationProperty]),
                                  kinesisStreamSpecification :: (Prelude.Maybe KinesisStreamSpecificationProperty),
                                  pointInTimeRecoverySpecification :: (Prelude.Maybe PointInTimeRecoverySpecificationProperty),
                                  readProvisionedThroughputSettings :: (Prelude.Maybe ReadProvisionedThroughputSettingsProperty),
                                  region :: (Value Prelude.Text),
                                  sSESpecification :: (Prelude.Maybe ReplicaSSESpecificationProperty),
                                  tableClass :: (Prelude.Maybe (Value Prelude.Text)),
                                  tags :: (Prelude.Maybe [Tag])}
mkReplicaSpecificationProperty ::
  Value Prelude.Text -> ReplicaSpecificationProperty
mkReplicaSpecificationProperty region
  = ReplicaSpecificationProperty
      {region = region,
       contributorInsightsSpecification = Prelude.Nothing,
       globalSecondaryIndexes = Prelude.Nothing,
       kinesisStreamSpecification = Prelude.Nothing,
       pointInTimeRecoverySpecification = Prelude.Nothing,
       readProvisionedThroughputSettings = Prelude.Nothing,
       sSESpecification = Prelude.Nothing, tableClass = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ReplicaSpecificationProperty where
  toResourceProperties ReplicaSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReplicaSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes
                              [(JSON..=) "ContributorInsightsSpecification"
                                 Prelude.<$> contributorInsightsSpecification,
                               (JSON..=) "GlobalSecondaryIndexes"
                                 Prelude.<$> globalSecondaryIndexes,
                               (JSON..=) "KinesisStreamSpecification"
                                 Prelude.<$> kinesisStreamSpecification,
                               (JSON..=) "PointInTimeRecoverySpecification"
                                 Prelude.<$> pointInTimeRecoverySpecification,
                               (JSON..=) "ReadProvisionedThroughputSettings"
                                 Prelude.<$> readProvisionedThroughputSettings,
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
                  (JSON..=) "GlobalSecondaryIndexes"
                    Prelude.<$> globalSecondaryIndexes,
                  (JSON..=) "KinesisStreamSpecification"
                    Prelude.<$> kinesisStreamSpecification,
                  (JSON..=) "PointInTimeRecoverySpecification"
                    Prelude.<$> pointInTimeRecoverySpecification,
                  (JSON..=) "ReadProvisionedThroughputSettings"
                    Prelude.<$> readProvisionedThroughputSettings,
                  (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                  (JSON..=) "TableClass" Prelude.<$> tableClass,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ContributorInsightsSpecification" ReplicaSpecificationProperty where
  type PropertyType "ContributorInsightsSpecification" ReplicaSpecificationProperty = ContributorInsightsSpecificationProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {contributorInsightsSpecification = Prelude.pure newValue, ..}
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
instance Property "ReadProvisionedThroughputSettings" ReplicaSpecificationProperty where
  type PropertyType "ReadProvisionedThroughputSettings" ReplicaSpecificationProperty = ReadProvisionedThroughputSettingsProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {readProvisionedThroughputSettings = Prelude.pure newValue, ..}
instance Property "Region" ReplicaSpecificationProperty where
  type PropertyType "Region" ReplicaSpecificationProperty = Value Prelude.Text
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty {region = newValue, ..}
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