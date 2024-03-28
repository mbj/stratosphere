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
  = DataProviderDescriptorProperty {dataProviderArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    dataProviderIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                    dataProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                                    secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                    secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataProviderDescriptorProperty :: DataProviderDescriptorProperty
mkDataProviderDescriptorProperty
  = DataProviderDescriptorProperty
      {dataProviderArn = Prelude.Nothing,
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