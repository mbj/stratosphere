module Stratosphere.RedshiftServerless.Namespace (
        module Exports, Namespace(..), mkNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RedshiftServerless.Namespace.SnapshotCopyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Namespace
  = Namespace {adminPasswordSecretKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               adminUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
               adminUsername :: (Prelude.Maybe (Value Prelude.Text)),
               dbName :: (Prelude.Maybe (Value Prelude.Text)),
               defaultIamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
               finalSnapshotName :: (Prelude.Maybe (Value Prelude.Text)),
               finalSnapshotRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
               iamRoles :: (Prelude.Maybe (ValueList Prelude.Text)),
               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               logExports :: (Prelude.Maybe (ValueList Prelude.Text)),
               manageAdminPassword :: (Prelude.Maybe (Value Prelude.Bool)),
               namespaceName :: (Value Prelude.Text),
               namespaceResourcePolicy :: (Prelude.Maybe JSON.Object),
               redshiftIdcApplicationArn :: (Prelude.Maybe (Value Prelude.Text)),
               snapshotCopyConfigurations :: (Prelude.Maybe [SnapshotCopyConfigurationProperty]),
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespace :: Value Prelude.Text -> Namespace
mkNamespace namespaceName
  = Namespace
      {namespaceName = namespaceName,
       adminPasswordSecretKmsKeyId = Prelude.Nothing,
       adminUserPassword = Prelude.Nothing,
       adminUsername = Prelude.Nothing, dbName = Prelude.Nothing,
       defaultIamRoleArn = Prelude.Nothing,
       finalSnapshotName = Prelude.Nothing,
       finalSnapshotRetentionPeriod = Prelude.Nothing,
       iamRoles = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       logExports = Prelude.Nothing,
       manageAdminPassword = Prelude.Nothing,
       namespaceResourcePolicy = Prelude.Nothing,
       redshiftIdcApplicationArn = Prelude.Nothing,
       snapshotCopyConfigurations = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Namespace where
  toResourceProperties Namespace {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Namespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["NamespaceName" JSON..= namespaceName]
                           (Prelude.catMaybes
                              [(JSON..=) "AdminPasswordSecretKmsKeyId"
                                 Prelude.<$> adminPasswordSecretKmsKeyId,
                               (JSON..=) "AdminUserPassword" Prelude.<$> adminUserPassword,
                               (JSON..=) "AdminUsername" Prelude.<$> adminUsername,
                               (JSON..=) "DbName" Prelude.<$> dbName,
                               (JSON..=) "DefaultIamRoleArn" Prelude.<$> defaultIamRoleArn,
                               (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                               (JSON..=) "FinalSnapshotRetentionPeriod"
                                 Prelude.<$> finalSnapshotRetentionPeriod,
                               (JSON..=) "IamRoles" Prelude.<$> iamRoles,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "LogExports" Prelude.<$> logExports,
                               (JSON..=) "ManageAdminPassword" Prelude.<$> manageAdminPassword,
                               (JSON..=) "NamespaceResourcePolicy"
                                 Prelude.<$> namespaceResourcePolicy,
                               (JSON..=) "RedshiftIdcApplicationArn"
                                 Prelude.<$> redshiftIdcApplicationArn,
                               (JSON..=) "SnapshotCopyConfigurations"
                                 Prelude.<$> snapshotCopyConfigurations,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Namespace where
  toJSON Namespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["NamespaceName" JSON..= namespaceName]
              (Prelude.catMaybes
                 [(JSON..=) "AdminPasswordSecretKmsKeyId"
                    Prelude.<$> adminPasswordSecretKmsKeyId,
                  (JSON..=) "AdminUserPassword" Prelude.<$> adminUserPassword,
                  (JSON..=) "AdminUsername" Prelude.<$> adminUsername,
                  (JSON..=) "DbName" Prelude.<$> dbName,
                  (JSON..=) "DefaultIamRoleArn" Prelude.<$> defaultIamRoleArn,
                  (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                  (JSON..=) "FinalSnapshotRetentionPeriod"
                    Prelude.<$> finalSnapshotRetentionPeriod,
                  (JSON..=) "IamRoles" Prelude.<$> iamRoles,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "LogExports" Prelude.<$> logExports,
                  (JSON..=) "ManageAdminPassword" Prelude.<$> manageAdminPassword,
                  (JSON..=) "NamespaceResourcePolicy"
                    Prelude.<$> namespaceResourcePolicy,
                  (JSON..=) "RedshiftIdcApplicationArn"
                    Prelude.<$> redshiftIdcApplicationArn,
                  (JSON..=) "SnapshotCopyConfigurations"
                    Prelude.<$> snapshotCopyConfigurations,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AdminPasswordSecretKmsKeyId" Namespace where
  type PropertyType "AdminPasswordSecretKmsKeyId" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace
        {adminPasswordSecretKmsKeyId = Prelude.pure newValue, ..}
instance Property "AdminUserPassword" Namespace where
  type PropertyType "AdminUserPassword" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {adminUserPassword = Prelude.pure newValue, ..}
instance Property "AdminUsername" Namespace where
  type PropertyType "AdminUsername" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {adminUsername = Prelude.pure newValue, ..}
instance Property "DbName" Namespace where
  type PropertyType "DbName" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {dbName = Prelude.pure newValue, ..}
instance Property "DefaultIamRoleArn" Namespace where
  type PropertyType "DefaultIamRoleArn" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {defaultIamRoleArn = Prelude.pure newValue, ..}
instance Property "FinalSnapshotName" Namespace where
  type PropertyType "FinalSnapshotName" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {finalSnapshotName = Prelude.pure newValue, ..}
instance Property "FinalSnapshotRetentionPeriod" Namespace where
  type PropertyType "FinalSnapshotRetentionPeriod" Namespace = Value Prelude.Integer
  set newValue Namespace {..}
    = Namespace
        {finalSnapshotRetentionPeriod = Prelude.pure newValue, ..}
instance Property "IamRoles" Namespace where
  type PropertyType "IamRoles" Namespace = ValueList Prelude.Text
  set newValue Namespace {..}
    = Namespace {iamRoles = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Namespace where
  type PropertyType "KmsKeyId" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LogExports" Namespace where
  type PropertyType "LogExports" Namespace = ValueList Prelude.Text
  set newValue Namespace {..}
    = Namespace {logExports = Prelude.pure newValue, ..}
instance Property "ManageAdminPassword" Namespace where
  type PropertyType "ManageAdminPassword" Namespace = Value Prelude.Bool
  set newValue Namespace {..}
    = Namespace {manageAdminPassword = Prelude.pure newValue, ..}
instance Property "NamespaceName" Namespace where
  type PropertyType "NamespaceName" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {namespaceName = newValue, ..}
instance Property "NamespaceResourcePolicy" Namespace where
  type PropertyType "NamespaceResourcePolicy" Namespace = JSON.Object
  set newValue Namespace {..}
    = Namespace {namespaceResourcePolicy = Prelude.pure newValue, ..}
instance Property "RedshiftIdcApplicationArn" Namespace where
  type PropertyType "RedshiftIdcApplicationArn" Namespace = Value Prelude.Text
  set newValue Namespace {..}
    = Namespace {redshiftIdcApplicationArn = Prelude.pure newValue, ..}
instance Property "SnapshotCopyConfigurations" Namespace where
  type PropertyType "SnapshotCopyConfigurations" Namespace = [SnapshotCopyConfigurationProperty]
  set newValue Namespace {..}
    = Namespace
        {snapshotCopyConfigurations = Prelude.pure newValue, ..}
instance Property "Tags" Namespace where
  type PropertyType "Tags" Namespace = [Tag]
  set newValue Namespace {..}
    = Namespace {tags = Prelude.pure newValue, ..}