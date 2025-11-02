module Stratosphere.SystemsManagerSAP.Application.CredentialProperty (
        CredentialProperty(..), mkCredentialProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CredentialProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-credential.html>
    CredentialProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-credential.html#cfn-systemsmanagersap-application-credential-credentialtype>
                        credentialType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-credential.html#cfn-systemsmanagersap-application-credential-databasename>
                        databaseName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-systemsmanagersap-application-credential.html#cfn-systemsmanagersap-application-credential-secretid>
                        secretId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCredentialProperty :: CredentialProperty
mkCredentialProperty
  = CredentialProperty
      {haddock_workaround_ = (), credentialType = Prelude.Nothing,
       databaseName = Prelude.Nothing, secretId = Prelude.Nothing}
instance ToResourceProperties CredentialProperty where
  toResourceProperties CredentialProperty {..}
    = ResourceProperties
        {awsType = "AWS::SystemsManagerSAP::Application.Credential",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CredentialType" Prelude.<$> credentialType,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "SecretId" Prelude.<$> secretId])}
instance JSON.ToJSON CredentialProperty where
  toJSON CredentialProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CredentialType" Prelude.<$> credentialType,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "SecretId" Prelude.<$> secretId]))
instance Property "CredentialType" CredentialProperty where
  type PropertyType "CredentialType" CredentialProperty = Value Prelude.Text
  set newValue CredentialProperty {..}
    = CredentialProperty {credentialType = Prelude.pure newValue, ..}
instance Property "DatabaseName" CredentialProperty where
  type PropertyType "DatabaseName" CredentialProperty = Value Prelude.Text
  set newValue CredentialProperty {..}
    = CredentialProperty {databaseName = Prelude.pure newValue, ..}
instance Property "SecretId" CredentialProperty where
  type PropertyType "SecretId" CredentialProperty = Value Prelude.Text
  set newValue CredentialProperty {..}
    = CredentialProperty {secretId = Prelude.pure newValue, ..}