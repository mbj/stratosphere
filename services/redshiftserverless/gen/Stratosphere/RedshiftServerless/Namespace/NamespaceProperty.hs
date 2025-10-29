module Stratosphere.RedshiftServerless.Namespace.NamespaceProperty (
        NamespaceProperty(..), mkNamespaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamespaceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html>
    NamespaceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-adminpasswordsecretarn>
                       adminPasswordSecretArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-adminpasswordsecretkmskeyid>
                       adminPasswordSecretKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-adminusername>
                       adminUsername :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-creationdate>
                       creationDate :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-dbname>
                       dbName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-defaultiamrolearn>
                       defaultIamRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-iamroles>
                       iamRoles :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-kmskeyid>
                       kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-logexports>
                       logExports :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-namespacearn>
                       namespaceArn :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-namespaceid>
                       namespaceId :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-namespacename>
                       namespaceName :: (Prelude.Maybe (Value Prelude.Text)),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-namespace.html#cfn-redshiftserverless-namespace-namespace-status>
                       status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamespaceProperty :: NamespaceProperty
mkNamespaceProperty
  = NamespaceProperty
      {adminPasswordSecretArn = Prelude.Nothing,
       adminPasswordSecretKmsKeyId = Prelude.Nothing,
       adminUsername = Prelude.Nothing, creationDate = Prelude.Nothing,
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
                           [(JSON..=) "AdminPasswordSecretArn"
                              Prelude.<$> adminPasswordSecretArn,
                            (JSON..=) "AdminPasswordSecretKmsKeyId"
                              Prelude.<$> adminPasswordSecretKmsKeyId,
                            (JSON..=) "AdminUsername" Prelude.<$> adminUsername,
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
              [(JSON..=) "AdminPasswordSecretArn"
                 Prelude.<$> adminPasswordSecretArn,
               (JSON..=) "AdminPasswordSecretKmsKeyId"
                 Prelude.<$> adminPasswordSecretKmsKeyId,
               (JSON..=) "AdminUsername" Prelude.<$> adminUsername,
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
instance Property "AdminPasswordSecretArn" NamespaceProperty where
  type PropertyType "AdminPasswordSecretArn" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty
        {adminPasswordSecretArn = Prelude.pure newValue, ..}
instance Property "AdminPasswordSecretKmsKeyId" NamespaceProperty where
  type PropertyType "AdminPasswordSecretKmsKeyId" NamespaceProperty = Value Prelude.Text
  set newValue NamespaceProperty {..}
    = NamespaceProperty
        {adminPasswordSecretKmsKeyId = Prelude.pure newValue, ..}
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