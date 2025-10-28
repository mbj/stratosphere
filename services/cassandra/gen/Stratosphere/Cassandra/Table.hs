module Stratosphere.Cassandra.Table (
        module Exports, Table(..), mkTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.AutoScalingSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.BillingModeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ClusteringKeyColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.EncryptionSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ReplicaSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Table
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html>
    Table {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-autoscalingspecifications>
           autoScalingSpecifications :: (Prelude.Maybe AutoScalingSpecificationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-billingmode>
           billingMode :: (Prelude.Maybe BillingModeProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-clientsidetimestampsenabled>
           clientSideTimestampsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-clusteringkeycolumns>
           clusteringKeyColumns :: (Prelude.Maybe [ClusteringKeyColumnProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-defaulttimetolive>
           defaultTimeToLive :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-encryptionspecification>
           encryptionSpecification :: (Prelude.Maybe EncryptionSpecificationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-keyspacename>
           keyspaceName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-partitionkeycolumns>
           partitionKeyColumns :: [ColumnProperty],
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-pointintimerecoveryenabled>
           pointInTimeRecoveryEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-regularcolumns>
           regularColumns :: (Prelude.Maybe [ColumnProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-replicaspecifications>
           replicaSpecifications :: (Prelude.Maybe [ReplicaSpecificationProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-tablename>
           tableName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTable :: Value Prelude.Text -> [ColumnProperty] -> Table
mkTable keyspaceName partitionKeyColumns
  = Table
      {haddock_workaround_ = (), keyspaceName = keyspaceName,
       partitionKeyColumns = partitionKeyColumns,
       autoScalingSpecifications = Prelude.Nothing,
       billingMode = Prelude.Nothing,
       clientSideTimestampsEnabled = Prelude.Nothing,
       clusteringKeyColumns = Prelude.Nothing,
       defaultTimeToLive = Prelude.Nothing,
       encryptionSpecification = Prelude.Nothing,
       pointInTimeRecoveryEnabled = Prelude.Nothing,
       regularColumns = Prelude.Nothing,
       replicaSpecifications = Prelude.Nothing,
       tableName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Table where
  toResourceProperties Table {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyspaceName" JSON..= keyspaceName,
                            "PartitionKeyColumns" JSON..= partitionKeyColumns]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingSpecifications"
                                 Prelude.<$> autoScalingSpecifications,
                               (JSON..=) "BillingMode" Prelude.<$> billingMode,
                               (JSON..=) "ClientSideTimestampsEnabled"
                                 Prelude.<$> clientSideTimestampsEnabled,
                               (JSON..=) "ClusteringKeyColumns" Prelude.<$> clusteringKeyColumns,
                               (JSON..=) "DefaultTimeToLive" Prelude.<$> defaultTimeToLive,
                               (JSON..=) "EncryptionSpecification"
                                 Prelude.<$> encryptionSpecification,
                               (JSON..=) "PointInTimeRecoveryEnabled"
                                 Prelude.<$> pointInTimeRecoveryEnabled,
                               (JSON..=) "RegularColumns" Prelude.<$> regularColumns,
                               (JSON..=) "ReplicaSpecifications"
                                 Prelude.<$> replicaSpecifications,
                               (JSON..=) "TableName" Prelude.<$> tableName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Table where
  toJSON Table {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyspaceName" JSON..= keyspaceName,
               "PartitionKeyColumns" JSON..= partitionKeyColumns]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingSpecifications"
                    Prelude.<$> autoScalingSpecifications,
                  (JSON..=) "BillingMode" Prelude.<$> billingMode,
                  (JSON..=) "ClientSideTimestampsEnabled"
                    Prelude.<$> clientSideTimestampsEnabled,
                  (JSON..=) "ClusteringKeyColumns" Prelude.<$> clusteringKeyColumns,
                  (JSON..=) "DefaultTimeToLive" Prelude.<$> defaultTimeToLive,
                  (JSON..=) "EncryptionSpecification"
                    Prelude.<$> encryptionSpecification,
                  (JSON..=) "PointInTimeRecoveryEnabled"
                    Prelude.<$> pointInTimeRecoveryEnabled,
                  (JSON..=) "RegularColumns" Prelude.<$> regularColumns,
                  (JSON..=) "ReplicaSpecifications"
                    Prelude.<$> replicaSpecifications,
                  (JSON..=) "TableName" Prelude.<$> tableName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutoScalingSpecifications" Table where
  type PropertyType "AutoScalingSpecifications" Table = AutoScalingSpecificationProperty
  set newValue Table {..}
    = Table {autoScalingSpecifications = Prelude.pure newValue, ..}
instance Property "BillingMode" Table where
  type PropertyType "BillingMode" Table = BillingModeProperty
  set newValue Table {..}
    = Table {billingMode = Prelude.pure newValue, ..}
instance Property "ClientSideTimestampsEnabled" Table where
  type PropertyType "ClientSideTimestampsEnabled" Table = Value Prelude.Bool
  set newValue Table {..}
    = Table {clientSideTimestampsEnabled = Prelude.pure newValue, ..}
instance Property "ClusteringKeyColumns" Table where
  type PropertyType "ClusteringKeyColumns" Table = [ClusteringKeyColumnProperty]
  set newValue Table {..}
    = Table {clusteringKeyColumns = Prelude.pure newValue, ..}
instance Property "DefaultTimeToLive" Table where
  type PropertyType "DefaultTimeToLive" Table = Value Prelude.Integer
  set newValue Table {..}
    = Table {defaultTimeToLive = Prelude.pure newValue, ..}
instance Property "EncryptionSpecification" Table where
  type PropertyType "EncryptionSpecification" Table = EncryptionSpecificationProperty
  set newValue Table {..}
    = Table {encryptionSpecification = Prelude.pure newValue, ..}
instance Property "KeyspaceName" Table where
  type PropertyType "KeyspaceName" Table = Value Prelude.Text
  set newValue Table {..} = Table {keyspaceName = newValue, ..}
instance Property "PartitionKeyColumns" Table where
  type PropertyType "PartitionKeyColumns" Table = [ColumnProperty]
  set newValue Table {..}
    = Table {partitionKeyColumns = newValue, ..}
instance Property "PointInTimeRecoveryEnabled" Table where
  type PropertyType "PointInTimeRecoveryEnabled" Table = Value Prelude.Bool
  set newValue Table {..}
    = Table {pointInTimeRecoveryEnabled = Prelude.pure newValue, ..}
instance Property "RegularColumns" Table where
  type PropertyType "RegularColumns" Table = [ColumnProperty]
  set newValue Table {..}
    = Table {regularColumns = Prelude.pure newValue, ..}
instance Property "ReplicaSpecifications" Table where
  type PropertyType "ReplicaSpecifications" Table = [ReplicaSpecificationProperty]
  set newValue Table {..}
    = Table {replicaSpecifications = Prelude.pure newValue, ..}
instance Property "TableName" Table where
  type PropertyType "TableName" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {tableName = Prelude.pure newValue, ..}
instance Property "Tags" Table where
  type PropertyType "Tags" Table = [Tag]
  set newValue Table {..} = Table {tags = Prelude.pure newValue, ..}