module Stratosphere.S3Tables.Table.CompactionProperty (
        CompactionProperty(..), mkCompactionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CompactionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-compaction.html>
    CompactionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-compaction.html#cfn-s3tables-table-compaction-status>
                        status :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-compaction.html#cfn-s3tables-table-compaction-targetfilesizemb>
                        targetFileSizeMB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompactionProperty :: CompactionProperty
mkCompactionProperty
  = CompactionProperty
      {haddock_workaround_ = (), status = Prelude.Nothing,
       targetFileSizeMB = Prelude.Nothing}
instance ToResourceProperties CompactionProperty where
  toResourceProperties CompactionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Table.Compaction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "TargetFileSizeMB" Prelude.<$> targetFileSizeMB])}
instance JSON.ToJSON CompactionProperty where
  toJSON CompactionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "TargetFileSizeMB" Prelude.<$> targetFileSizeMB]))
instance Property "Status" CompactionProperty where
  type PropertyType "Status" CompactionProperty = Value Prelude.Text
  set newValue CompactionProperty {..}
    = CompactionProperty {status = Prelude.pure newValue, ..}
instance Property "TargetFileSizeMB" CompactionProperty where
  type PropertyType "TargetFileSizeMB" CompactionProperty = Value Prelude.Integer
  set newValue CompactionProperty {..}
    = CompactionProperty {targetFileSizeMB = Prelude.pure newValue, ..}