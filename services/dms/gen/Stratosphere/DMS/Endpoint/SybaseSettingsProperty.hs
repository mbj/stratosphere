module Stratosphere.DMS.Endpoint.SybaseSettingsProperty (
        SybaseSettingsProperty(..), mkSybaseSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SybaseSettingsProperty
  = SybaseSettingsProperty {secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text))}
mkSybaseSettingsProperty :: SybaseSettingsProperty
mkSybaseSettingsProperty
  = SybaseSettingsProperty
      {secretsManagerAccessRoleArn = Prelude.Nothing,
       secretsManagerSecretId = Prelude.Nothing}
instance ToResourceProperties SybaseSettingsProperty where
  toResourceProperties SybaseSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DMS::Endpoint.SybaseSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecretsManagerAccessRoleArn"
                              Prelude.<$> secretsManagerAccessRoleArn,
                            (JSON..=) "SecretsManagerSecretId"
                              Prelude.<$> secretsManagerSecretId])}
instance JSON.ToJSON SybaseSettingsProperty where
  toJSON SybaseSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecretsManagerAccessRoleArn"
                 Prelude.<$> secretsManagerAccessRoleArn,
               (JSON..=) "SecretsManagerSecretId"
                 Prelude.<$> secretsManagerSecretId]))
instance Property "SecretsManagerAccessRoleArn" SybaseSettingsProperty where
  type PropertyType "SecretsManagerAccessRoleArn" SybaseSettingsProperty = Value Prelude.Text
  set newValue SybaseSettingsProperty {..}
    = SybaseSettingsProperty
        {secretsManagerAccessRoleArn = Prelude.pure newValue, ..}
instance Property "SecretsManagerSecretId" SybaseSettingsProperty where
  type PropertyType "SecretsManagerSecretId" SybaseSettingsProperty = Value Prelude.Text
  set newValue SybaseSettingsProperty {..}
    = SybaseSettingsProperty
        {secretsManagerSecretId = Prelude.pure newValue, ..}