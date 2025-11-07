module Stratosphere.RedshiftServerless.Snapshot (
        Snapshot(..), mkSnapshot
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Snapshot
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-snapshot.html>
    Snapshot {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-snapshot.html#cfn-redshiftserverless-snapshot-namespacename>
              namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-snapshot.html#cfn-redshiftserverless-snapshot-retentionperiod>
              retentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-snapshot.html#cfn-redshiftserverless-snapshot-snapshotname>
              snapshotName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshiftserverless-snapshot.html#cfn-redshiftserverless-snapshot-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshot :: Value Prelude.Text -> Snapshot
mkSnapshot snapshotName
  = Snapshot
      {haddock_workaround_ = (), snapshotName = snapshotName,
       namespaceName = Prelude.Nothing, retentionPeriod = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Snapshot where
  toResourceProperties Snapshot {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Snapshot",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SnapshotName" JSON..= snapshotName]
                           (Prelude.catMaybes
                              [(JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Snapshot where
  toJSON Snapshot {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SnapshotName" JSON..= snapshotName]
              (Prelude.catMaybes
                 [(JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                  (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "NamespaceName" Snapshot where
  type PropertyType "NamespaceName" Snapshot = Value Prelude.Text
  set newValue Snapshot {..}
    = Snapshot {namespaceName = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" Snapshot where
  type PropertyType "RetentionPeriod" Snapshot = Value Prelude.Integer
  set newValue Snapshot {..}
    = Snapshot {retentionPeriod = Prelude.pure newValue, ..}
instance Property "SnapshotName" Snapshot where
  type PropertyType "SnapshotName" Snapshot = Value Prelude.Text
  set newValue Snapshot {..} = Snapshot {snapshotName = newValue, ..}
instance Property "Tags" Snapshot where
  type PropertyType "Tags" Snapshot = [Tag]
  set newValue Snapshot {..}
    = Snapshot {tags = Prelude.pure newValue, ..}