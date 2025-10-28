module Stratosphere.CodeBuild.Project.RegistryCredentialProperty (
        RegistryCredentialProperty(..), mkRegistryCredentialProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistryCredentialProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html>
    RegistryCredentialProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credential>
                                credential :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credentialprovider>
                                credentialProvider :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegistryCredentialProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RegistryCredentialProperty
mkRegistryCredentialProperty credential credentialProvider
  = RegistryCredentialProperty
      {haddock_workaround_ = (), credential = credential,
       credentialProvider = credentialProvider}
instance ToResourceProperties RegistryCredentialProperty where
  toResourceProperties RegistryCredentialProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project.RegistryCredential",
         supportsTags = Prelude.False,
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