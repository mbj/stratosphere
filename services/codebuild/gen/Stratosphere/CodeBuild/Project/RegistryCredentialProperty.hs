module Stratosphere.CodeBuild.Project.RegistryCredentialProperty (
        RegistryCredentialProperty(..), mkRegistryCredentialProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistryCredentialProperty
  = RegistryCredentialProperty {credential :: (Value Prelude.Text),
                                credentialProvider :: (Value Prelude.Text)}
mkRegistryCredentialProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RegistryCredentialProperty
mkRegistryCredentialProperty credential credentialProvider
  = RegistryCredentialProperty
      {credential = credential, credentialProvider = credentialProvider}
instance ToResourceProperties RegistryCredentialProperty where
  toResourceProperties RegistryCredentialProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.RegistryCredential",
         properties = ["Credential" JSON..= credential,
                       "CredentialProvider" JSON..= credentialProvider]}
instance JSON.ToJSON RegistryCredentialProperty where
  toJSON RegistryCredentialProperty {..}
    = JSON.object
        ["Credential" JSON..= credential,
         "CredentialProvider" JSON..= credentialProvider]
instance Property "Credential" RegistryCredentialProperty where
  type PropertyType "Credential" RegistryCredentialProperty = Value Prelude.Text
  set newValue RegistryCredentialProperty {..}
    = RegistryCredentialProperty {credential = newValue, ..}
instance Property "CredentialProvider" RegistryCredentialProperty where
  type PropertyType "CredentialProvider" RegistryCredentialProperty = Value Prelude.Text
  set newValue RegistryCredentialProperty {..}
    = RegistryCredentialProperty {credentialProvider = newValue, ..}