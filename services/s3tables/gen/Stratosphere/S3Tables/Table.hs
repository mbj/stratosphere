module Stratosphere.S3Tables.Table (
        module Exports, Table(..), mkTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Tables.Table.CompactionProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Tables.Table.IcebergMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Tables.Table.SnapshotManagementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Table
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html>
    Table {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-compaction>
           compaction :: (Prelude.Maybe CompactionProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-icebergmetadata>
           icebergMetadata :: (Prelude.Maybe IcebergMetadataProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-namespace>
           namespace :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-opentableformat>
           openTableFormat :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-snapshotmanagement>
           snapshotManagement :: (Prelude.Maybe SnapshotManagementProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-tablebucketarn>
           tableBucketARN :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-tablename>
           tableName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-table.html#cfn-s3tables-table-withoutmetadata>
           withoutMetadata :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTable ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Table
mkTable namespace openTableFormat tableBucketARN tableName
  = Table
      {haddock_workaround_ = (), namespace = namespace,
       openTableFormat = openTableFormat, tableBucketARN = tableBucketARN,
       tableName = tableName, compaction = Prelude.Nothing,
       icebergMetadata = Prelude.Nothing,
       snapshotManagement = Prelude.Nothing,
       withoutMetadata = Prelude.Nothing}
instance ToResourceProperties Table where
  toResourceProperties Table {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Table", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Namespace" JSON..= namespace,
                            "OpenTableFormat" JSON..= openTableFormat,
                            "TableBucketARN" JSON..= tableBucketARN,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "Compaction" Prelude.<$> compaction,
                               (JSON..=) "IcebergMetadata" Prelude.<$> icebergMetadata,
                               (JSON..=) "SnapshotManagement" Prelude.<$> snapshotManagement,
                               (JSON..=) "WithoutMetadata" Prelude.<$> withoutMetadata]))}
instance JSON.ToJSON Table where
  toJSON Table {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Namespace" JSON..= namespace,
               "OpenTableFormat" JSON..= openTableFormat,
               "TableBucketARN" JSON..= tableBucketARN,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "Compaction" Prelude.<$> compaction,
                  (JSON..=) "IcebergMetadata" Prelude.<$> icebergMetadata,
                  (JSON..=) "SnapshotManagement" Prelude.<$> snapshotManagement,
                  (JSON..=) "WithoutMetadata" Prelude.<$> withoutMetadata])))
instance Property "Compaction" Table where
  type PropertyType "Compaction" Table = CompactionProperty
  set newValue Table {..}
    = Table {compaction = Prelude.pure newValue, ..}
instance Property "IcebergMetadata" Table where
  type PropertyType "IcebergMetadata" Table = IcebergMetadataProperty
  set newValue Table {..}
    = Table {icebergMetadata = Prelude.pure newValue, ..}
instance Property "Namespace" Table where
  type PropertyType "Namespace" Table = Value Prelude.Text
  set newValue Table {..} = Table {namespace = newValue, ..}
instance Property "OpenTableFormat" Table where
  type PropertyType "OpenTableFormat" Table = Value Prelude.Text
  set newValue Table {..} = Table {openTableFormat = newValue, ..}
instance Property "SnapshotManagement" Table where
  type PropertyType "SnapshotManagement" Table = SnapshotManagementProperty
  set newValue Table {..}
    = Table {snapshotManagement = Prelude.pure newValue, ..}
instance Property "TableBucketARN" Table where
  type PropertyType "TableBucketARN" Table = Value Prelude.Text
  set newValue Table {..} = Table {tableBucketARN = newValue, ..}
instance Property "TableName" Table where
  type PropertyType "TableName" Table = Value Prelude.Text
  set newValue Table {..} = Table {tableName = newValue, ..}
instance Property "WithoutMetadata" Table where
  type PropertyType "WithoutMetadata" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {withoutMetadata = Prelude.pure newValue, ..}