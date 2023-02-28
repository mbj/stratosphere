module Stratosphere.RedshiftServerless.Namespace.NamespaceProperty (
        NamespaceProperty(..), mkNamespaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamespaceProperty
  = NamespaceProperty {adminUsername :: (Prelude.Maybe (Value Prelude.Text)),
                       creationDate :: (Prelude.Maybe (Value Prelude.Text)),
                       dbName :: (Prelude.Maybe (Value Prelude.Text)),
                       defaultIamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                       iamRoles :: (Prelude.Maybe (ValueList Prelude.Text)),
                       kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                       logExports :: (Prelude.Maybe (ValueList Prelude.Text)),
                       namespaceArn :: (Prelude.Maybe (Value Prelude.Text)),
                       namespaceId :: (Prelude.Maybe (Value Prelude.Text)),
                       namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
                       status :: (Prelude.Maybe (Value Prelude.Text))}
mkNamespaceProperty :: NamespaceProperty
mkNamespaceProperty
  = NamespaceProperty
      {adminUsername = Prelude.Nothing, creationDate = Prelude.Nothing,
       dbName = Prelude.Nothing, defaultIamRoleArn = Prelude.Nothing,
       iamRoles = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       logExports = Prelude.Nothing, namespaceArn = Prelude.Nothing,
       namespaceId = Prelude.Nothing, namespaceName = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties NamespaceProperty where
  toResourceProperties NamespaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Namespace.Namespace",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdminUsername" Prelude.<$> adminUsername,
                            (JSON..=) "CreationDate" Prelude.<$> creationDate,
                            (JSON..=) "DbName" Prelude.<$> dbName,
                            (JSON..=) "DefaultIamRoleArn" Prelude.<$> defaultIamRoleArn,
                            (JSON..=) "IamRoles" Prelude.<$> iamRoles,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LogExports" Prelude.<$> logExports,
                            (JSON..=) "NamespaceArn" Prelude.<$> namespaceArn,
                            (JSON..=) "NamespaceId" Prelude.<$> namespaceId,
                            (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON NamespaceProperty where
  toJSON NamespaceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdminUsername" Prelude.<$> adminUsername,
               (JSON..=) "CreationDate" Prelude.<$> creationDate,
               (JSON..=) "DbName" Prelude.<$> dbName,
               (JSON..=) "DefaultIamRoleArn" Prelude.<$> defaultIamRoleArn,
               (JSON..=) "IamRoles" Prelude.<$> iamRoles,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LogExports" Prelude.<$> logExports,
               (JSON..=) "NamespaceArn" Prelude.<$> namespaceArn,
               (JSON..=) "NamespaceId" Prelude.<$> namespaceId,
               (JSON..=) "NamespaceName" Prelude.<$> namespaceName,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "AdminUsername" NamespaceProperty where
  type PropertyType "AdminUsername" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {adminUsername = Prelude.pure newValue, ..}
instance Property "CreationDate" NamespaceProperty where
  type PropertyType "CreationDate" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {creationDate = Prelude.pure newValue, ..}
instance Property "DbName" NamespaceProperty where
  type PropertyType "DbName" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {dbName = Prelude.pure newValue, ..}
instance Property "DefaultIamRoleArn" NamespaceProperty where
  type PropertyType "DefaultIamRoleArn" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {defaultIamRoleArn = Prelude.pure newValue, ..}
instance Property "IamRoles" NamespaceProperty where
  type PropertyType "IamRoles" NamespaceProperty = ValueList Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {iamRoles = Prelude.pure newValue, ..}
instance Property "KmsKeyId" NamespaceProperty where
  type PropertyType "KmsKeyId" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LogExports" NamespaceProperty where
  type PropertyType "LogExports" NamespaceProperty = ValueList Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {logExports = Prelude.pure newValue, ..}
instance Property "NamespaceArn" NamespaceProperty where
  type PropertyType "NamespaceArn" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {namespaceArn = Prelude.pure newValue, ..}
instance Property "NamespaceId" NamespaceProperty where
  type PropertyType "NamespaceId" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {namespaceId = Prelude.pure newValue, ..}
instance Property "NamespaceName" NamespaceProperty where
  type PropertyType "NamespaceName" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {namespaceName = Prelude.pure newValue, ..}
instance Property "Status" NamespaceProperty where
  type PropertyType "Status" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty {status = Prelude.pure newValue, ..}