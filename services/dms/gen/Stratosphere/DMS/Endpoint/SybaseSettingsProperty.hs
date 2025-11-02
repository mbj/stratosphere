module Stratosphere.DMS.Endpoint.SybaseSettingsProperty (
        SybaseSettingsProperty(..), mkSybaseSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SybaseSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-sybasesettings.html>
    SybaseSettingsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-sybasesettings.html#cfn-dms-endpoint-sybasesettings-secretsmanageraccessrolearn>
                            secretsManagerAccessRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-endpoint-sybasesettings.html#cfn-dms-endpoint-sybasesettings-secretsmanagersecretid>
                            secretsManagerSecretId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSybaseSettingsProperty :: SybaseSettingsProperty
mkSybaseSettingsProperty
  = SybaseSettingsProperty
      {haddock_workaround_ = (),
       secretsManagerAccessRoleArn = Prelude.Nothing,
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