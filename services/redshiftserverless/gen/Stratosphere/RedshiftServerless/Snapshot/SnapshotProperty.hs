module Stratosphere.RedshiftServerless.Snapshot.SnapshotProperty (
        SnapshotProperty(..), mkSnapshotProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapshotProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html>
    SnapshotProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-adminusername>
                      adminUsername :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-kmskeyid>
                      kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-namespacearn>
                      namespaceArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-namespacename>
                      namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-owneraccount>
                      ownerAccount :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-retentionperiod>
                      retentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-snapshotarn>
                      snapshotArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-snapshotcreatetime>
                      snapshotCreateTime :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-snapshotname>
                      snapshotName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-snapshot-snapshot.html#cfn-redshiftserverless-snapshot-snapshot-status>
                      status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshotProperty :: SnapshotProperty
mkSnapshotProperty
  = SnapshotProperty
      {haddock_workaround_ = (), adminUsername = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, namespaceArn = Prelude.Nothing,
       namespaceName = Prelude.Nothing, ownerAccount = Prelude.Nothing,
       retentionPeriod = Prelude.Nothing, snapshotArn = Prelude.Nothing,
       snapshotCreateTime = Prelude.Nothing,
       snapshotName = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties SnapshotProperty where
  toResourceProperties SnapshotProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Snapshot.Snapshot",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdminUsername" Prelude.<$> adminUsername,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "NamespaceArn" Prelude.<$> namespaceArn,
                            (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                            (JSON..=) "OwnerAccount" Prelude.<$> ownerAccount,
                            (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                            (JSON..=) "SnapshotArn" Prelude.<$> snapshotArn,
                            (JSON..=) "SnapshotCreateTime" Prelude.<$> snapshotCreateTime,
                            (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON SnapshotProperty where
  toJSON SnapshotProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdminUsername" Prelude.<$> adminUsername,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "NamespaceArn" Prelude.<$> namespaceArn,
               (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
               (JSON..=) "OwnerAccount" Prelude.<$> ownerAccount,
               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
               (JSON..=) "SnapshotArn" Prelude.<$> snapshotArn,
               (JSON..=) "SnapshotCreateTime" Prelude.<$> snapshotCreateTime,
               (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "AdminUsername" SnapshotProperty where
  type PropertyType "AdminUsername" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {adminUsername = Prelude.pure newValue, ..}
instance Property "KmsKeyId" SnapshotProperty where
  type PropertyType "KmsKeyId" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "NamespaceArn" SnapshotProperty where
  type PropertyType "NamespaceArn" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {namespaceArn = Prelude.pure newValue, ..}
instance Property "NamespaceName" SnapshotProperty where
  type PropertyType "NamespaceName" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {namespaceName = Prelude.pure newValue, ..}
instance Property "OwnerAccount" SnapshotProperty where
  type PropertyType "OwnerAccount" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {ownerAccount = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" SnapshotProperty where
  type PropertyType "RetentionPeriod" SnapshotProperty = Value Prelude.Integer
  set newValue SnapshotProperty {..}
    = SnapshotProperty {retentionPeriod = Prelude.pure newValue, ..}
instance Property "SnapshotArn" SnapshotProperty where
  type PropertyType "SnapshotArn" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {snapshotArn = Prelude.pure newValue, ..}
instance Property "SnapshotCreateTime" SnapshotProperty where
  type PropertyType "SnapshotCreateTime" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {snapshotCreateTime = Prelude.pure newValue, ..}
instance Property "SnapshotName" SnapshotProperty where
  type PropertyType "SnapshotName" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {snapshotName = Prelude.pure newValue, ..}
instance Property "Status" SnapshotProperty where
  type PropertyType "Status" SnapshotProperty = Value Prelude.Text
  set newValue SnapshotProperty {..}
    = SnapshotProperty {status = Prelude.pure newValue, ..}