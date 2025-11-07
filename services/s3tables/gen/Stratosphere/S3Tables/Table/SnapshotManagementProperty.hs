module Stratosphere.S3Tables.Table.SnapshotManagementProperty (
        SnapshotManagementProperty(..), mkSnapshotManagementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapshotManagementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-snapshotmanagement.html>
    SnapshotManagementProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-snapshotmanagement.html#cfn-s3tables-table-snapshotmanagement-maxsnapshotagehours>
                                maxSnapshotAgeHours :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-snapshotmanagement.html#cfn-s3tables-table-snapshotmanagement-minsnapshotstokeep>
                                minSnapshotsToKeep :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-snapshotmanagement.html#cfn-s3tables-table-snapshotmanagement-status>
                                status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshotManagementProperty :: SnapshotManagementProperty
mkSnapshotManagementProperty
  = SnapshotManagementProperty
      {haddock_workaround_ = (), maxSnapshotAgeHours = Prelude.Nothing,
       minSnapshotsToKeep = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties SnapshotManagementProperty where
  toResourceProperties SnapshotManagementProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Table.SnapshotManagement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxSnapshotAgeHours" Prelude.<$> maxSnapshotAgeHours,
                            (JSON..=) "MinSnapshotsToKeep" Prelude.<$> minSnapshotsToKeep,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON SnapshotManagementProperty where
  toJSON SnapshotManagementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxSnapshotAgeHours" Prelude.<$> maxSnapshotAgeHours,
               (JSON..=) "MinSnapshotsToKeep" Prelude.<$> minSnapshotsToKeep,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "MaxSnapshotAgeHours" SnapshotManagementProperty where
  type PropertyType "MaxSnapshotAgeHours" SnapshotManagementProperty = Value Prelude.Integer
  set newValue SnapshotManagementProperty {..}
    = SnapshotManagementProperty
        {maxSnapshotAgeHours = Prelude.pure newValue, ..}
instance Property "MinSnapshotsToKeep" SnapshotManagementProperty where
  type PropertyType "MinSnapshotsToKeep" SnapshotManagementProperty = Value Prelude.Integer
  set newValue SnapshotManagementProperty {..}
    = SnapshotManagementProperty
        {minSnapshotsToKeep = Prelude.pure newValue, ..}
instance Property "Status" SnapshotManagementProperty where
  type PropertyType "Status" SnapshotManagementProperty = Value Prelude.Text
  set newValue SnapshotManagementProperty {..}
    = SnapshotManagementProperty {status = Prelude.pure newValue, ..}