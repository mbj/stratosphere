module Stratosphere.DMS.MigrationProject.DataProviderDescriptorProperty (
        DataProviderDescriptorProperty(..),
        mkDataProviderDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataProviderDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-dataproviderdescriptor.html>
    DataProviderDescriptorProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-dataproviderdescriptor.html#cfn-dms-migrationproject-dataproviderdescriptor-dataproviderarn>
                                    dataProviderArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-dataproviderdescriptor.html#cfn-dms-migrationproject-dataproviderdescriptor-dataprovideridentifier>
                                    dataProviderIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-dataproviderdescriptor.html#cfn-dms-migrationproject-dataproviderdescriptor-dataprovidername>
                                    dataProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-dataproviderdescriptor.html#cfn-dms-migrationproject-dataproviderdescriptor-secretsmanageraccessrolearn>
                                    secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-migrationproject-dataproviderdescriptor.html#cfn-dms-migrationproject-dataproviderdescriptor-secretsmanagersecretid>
                                    secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProviderDescriptorProperty :: DataProviderDescriptorProperty
mkDataProviderDescriptorProperty
  = DataProviderDescriptorProperty
      {haddock_workaround_ = (), dataProviderArn = Prelude.Nothing,
       dataProviderIdentifier = Prelude.Nothing,
       dataProviderName = Prelude.Nothing,
       secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing}
instance ToResourceProperties DataProviderDescriptorProperty where
  toResourceProperties DataProviderDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::MigrationProject.DataProviderDescriptor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataProviderArn" Prelude.<$> dataProviderArn,
                            (JSON..=) "DataProviderIdentifier"
                              Prelude.<$> dataProviderIdentifier,
                            (JSON..=) "DataProviderName" Prelude.<$> dataProviderName,
                            (JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId])}
instance JSON.ToJSON DataProviderDescriptorProperty where
  toJSON DataProviderDescriptorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataProviderArn" Prelude.<$> dataProviderArn,
               (JSON..=) "DataProviderIdentifier"
                 Prelude.<$> dataProviderIdentifier,
               (JSON..=) "DataProviderName" Prelude.<$> dataProviderName,
               (JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId]))
instance Property "DataProviderArn" DataProviderDescriptorProperty where
  type PropertyType "DataProviderArn" DataProviderDescriptorProperty = Value Prelude.Text
  set newValue DataProviderDescriptorProperty {..}
    = DataProviderDescriptorProperty
        {dataProviderArn = Prelude.pure newValue, ..}
instance Property "DataProviderIdentifier" DataProviderDescriptorProperty where
  type PropertyType "DataProviderIdentifier" DataProviderDescriptorProperty = Value Prelude.Text
  set newValue DataProviderDescriptorProperty {..}
    = DataProviderDescriptorProperty
        {dataProviderIdentifier = Prelude.pure newValue, ..}
instance Property "DataProviderName" DataProviderDescriptorProperty where
  type PropertyType "DataProviderName" DataProviderDescriptorProperty = Value Prelude.Text
  set newValue DataProviderDescriptorProperty {..}
    = DataProviderDescriptorProperty
        {dataProviderName = Prelude.pure newValue, ..}
instance Property "SecretsManagerAccessRoleArn" DataProviderDescriptorProperty where
  type PropertyType "SecretsManagerAccessRoleArn" DataProviderDescriptorProperty = Value Prelude.Text
  set newValue DataProviderDescriptorProperty {..}
    = DataProviderDescriptorProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" DataProviderDescriptorProperty where
  type PropertyType "SecretsManagerSecretId" DataProviderDescriptorProperty = Value Prelude.Text
  set newValue DataProviderDescriptorProperty {..}
    = DataProviderDescriptorProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}