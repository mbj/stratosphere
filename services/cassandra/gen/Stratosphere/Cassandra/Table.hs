module Stratosphere.Cassandra.Table (
        module Exports, Table(..), mkTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.BillingModeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ClusteringKeyColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.ColumnProperty as Exports
import {-# SOURCE #-} Stratosphere.Cassandra.Table.EncryptionSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Table
  = Table {billingMode :: (Prelude.Maybe BillingModeProperty),
           clientSideTimestampsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           clusteringKeyColumns :: (Prelude.Maybe [ClusteringKeyColumnProperty]),
           defaultTimeToLive :: (Prelude.Maybe (Value Prelude.Integer)),
           encryptionSpecification :: (Prelude.Maybe EncryptionSpecificationProperty),
           keyspaceName :: (Value Prelude.Text),
           partitionKeyColumns :: [ColumnProperty],
           pointInTimeRecoveryEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           regularColumns :: (Prelude.Maybe [ColumnProperty]),
           tableName :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
mkTable :: Value Prelude.Text -> [ColumnProperty] -> Table
mkTable keyspaceName partitionKeyColumns
  = Table
      {keyspaceName = keyspaceName,
       partitionKeyColumns = partitionKeyColumns,
       billingMode = Prelude.Nothing,
       clientSideTimestampsEnabled = Prelude.Nothing,
       clusteringKeyColumns = Prelude.Nothing,
       defaultTimeToLive = Prelude.Nothing,
       encryptionSpecification = Prelude.Nothing,
       pointInTimeRecoveryEnabled = Prelude.Nothing,
       regularColumns = Prelude.Nothing, tableName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Table where
  toResourceProperties Table {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyspaceName" JSON..= keyspaceName,
                            "PartitionKeyColumns" JSON..= partitionKeyColumns]
                           (Prelude.catMaybes
                              [(JSON..=) "BillingMode" Prelude.<$> billingMode,
                               (JSON..=) "ClientSideTimestampsEnabled"
                                 Prelude.<$> clientSideTimestampsEnabled,
                               (JSON..=) "ClusteringKeyColumns" Prelude.<$> clusteringKeyColumns,
                               (JSON..=) "DefaultTimeToLive" Prelude.<$> defaultTimeToLive,
                               (JSON..=) "EncryptionSpecification"
                                 Prelude.<$> encryptionSpecification,
                               (JSON..=) "PointInTimeRecoveryEnabled"
                                 Prelude.<$> pointInTimeRecoveryEnabled,
                               (JSON..=) "RegularColumns" Prelude.<$> regularColumns,
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
                 [(JSON..=) "BillingMode" Prelude.<$> billingMode,
                  (JSON..=) "ClientSideTimestampsEnabled"
                    Prelude.<$> clientSideTimestampsEnabled,
                  (JSON..=) "ClusteringKeyColumns" Prelude.<$> clusteringKeyColumns,
                  (JSON..=) "DefaultTimeToLive" Prelude.<$> defaultTimeToLive,
                  (JSON..=) "EncryptionSpecification"
                    Prelude.<$> encryptionSpecification,
                  (JSON..=) "PointInTimeRecoveryEnabled"
                    Prelude.<$> pointInTimeRecoveryEnabled,
                  (JSON..=) "RegularColumns" Prelude.<$> regularColumns,
                  (JSON..=) "TableName" Prelude.<$> tableName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
instance Property "TableName" Table where
  type PropertyType "TableName" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {tableName = Prelude.pure newValue, ..}
instance Property "Tags" Table where
  type PropertyType "Tags" Table = [Tag]
  set newValue Table {..} = Table {tags = Prelude.pure newValue, ..}