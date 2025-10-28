module Stratosphere.Bedrock.DataSource.ConfluenceSourceConfigurationProperty (
        ConfluenceSourceConfigurationProperty(..),
        mkConfluenceSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencesourceconfiguration.html>
    ConfluenceSourceConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencesourceconfiguration.html#cfn-bedrock-datasource-confluencesourceconfiguration-authtype>
                                           authType :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencesourceconfiguration.html#cfn-bedrock-datasource-confluencesourceconfiguration-credentialssecretarn>
                                           credentialsSecretArn :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencesourceconfiguration.html#cfn-bedrock-datasource-confluencesourceconfiguration-hosttype>
                                           hostType :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-confluencesourceconfiguration.html#cfn-bedrock-datasource-confluencesourceconfiguration-hosturl>
                                           hostUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceSourceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> ConfluenceSourceConfigurationProperty
mkConfluenceSourceConfigurationProperty
  authType
  credentialsSecretArn
  hostType
  hostUrl
  = ConfluenceSourceConfigurationProperty
      {haddock_workaround_ = (), authType = authType,
       credentialsSecretArn = credentialsSecretArn, hostType = hostType,
       hostUrl = hostUrl}
instance ToResourceProperties ConfluenceSourceConfigurationProperty where
  toResourceProperties ConfluenceSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ConfluenceSourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["AuthType" JSON..= authType,
                       "CredentialsSecretArn" JSON..= credentialsSecretArn,
                       "HostType" JSON..= hostType, "HostUrl" JSON..= hostUrl]}
instance JSON.ToJSON ConfluenceSourceConfigurationProperty where
  toJSON ConfluenceSourceConfigurationProperty {..}
    = JSON.object
        ["AuthType" JSON..= authType,
         "CredentialsSecretArn" JSON..= credentialsSecretArn,
         "HostType" JSON..= hostType, "HostUrl" JSON..= hostUrl]
instance Property "AuthType" ConfluenceSourceConfigurationProperty where
  type PropertyType "AuthType" ConfluenceSourceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceSourceConfigurationProperty {..}
    = ConfluenceSourceConfigurationProperty {authType = newValue, ..}
instance Property "CredentialsSecretArn" ConfluenceSourceConfigurationProperty where
  type PropertyType "CredentialsSecretArn" ConfluenceSourceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceSourceConfigurationProperty {..}
    = ConfluenceSourceConfigurationProperty
        {credentialsSecretArn = newValue, ..}
instance Property "HostType" ConfluenceSourceConfigurationProperty where
  type PropertyType "HostType" ConfluenceSourceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceSourceConfigurationProperty {..}
    = ConfluenceSourceConfigurationProperty {hostType = newValue, ..}
instance Property "HostUrl" ConfluenceSourceConfigurationProperty where
  type PropertyType "HostUrl" ConfluenceSourceConfigurationProperty = Value Prelude.Text
  set newValue ConfluenceSourceConfigurationProperty {..}
    = ConfluenceSourceConfigurationProperty {hostUrl = newValue, ..}