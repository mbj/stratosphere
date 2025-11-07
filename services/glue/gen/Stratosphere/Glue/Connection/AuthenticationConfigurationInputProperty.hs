module Stratosphere.Glue.Connection.AuthenticationConfigurationInputProperty (
        module Exports, AuthenticationConfigurationInputProperty(..),
        mkAuthenticationConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Connection.BasicAuthenticationCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Connection.OAuth2PropertiesInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html>
    AuthenticationConfigurationInputProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html#cfn-glue-connection-authenticationconfigurationinput-authenticationtype>
                                              authenticationType :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html#cfn-glue-connection-authenticationconfigurationinput-basicauthenticationcredentials>
                                              basicAuthenticationCredentials :: (Prelude.Maybe BasicAuthenticationCredentialsProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html#cfn-glue-connection-authenticationconfigurationinput-customauthenticationcredentials>
                                              customAuthenticationCredentials :: (Prelude.Maybe JSON.Object),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html#cfn-glue-connection-authenticationconfigurationinput-kmskeyarn>
                                              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html#cfn-glue-connection-authenticationconfigurationinput-oauth2properties>
                                              oAuth2Properties :: (Prelude.Maybe OAuth2PropertiesInputProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-authenticationconfigurationinput.html#cfn-glue-connection-authenticationconfigurationinput-secretarn>
                                              secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticationConfigurationInputProperty ::
  Value Prelude.Text -> AuthenticationConfigurationInputProperty
mkAuthenticationConfigurationInputProperty authenticationType
  = AuthenticationConfigurationInputProperty
      {haddock_workaround_ = (), authenticationType = authenticationType,
       basicAuthenticationCredentials = Prelude.Nothing,
       customAuthenticationCredentials = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, oAuth2Properties = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties AuthenticationConfigurationInputProperty where
  toResourceProperties AuthenticationConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.AuthenticationConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType]
                           (Prelude.catMaybes
                              [(JSON..=) "BasicAuthenticationCredentials"
                                 Prelude.<$> basicAuthenticationCredentials,
                               (JSON..=) "CustomAuthenticationCredentials"
                                 Prelude.<$> customAuthenticationCredentials,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "OAuth2Properties" Prelude.<$> oAuth2Properties,
                               (JSON..=) "SecretArn" Prelude.<$> secretArn]))}
instance JSON.ToJSON AuthenticationConfigurationInputProperty where
  toJSON AuthenticationConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType]
              (Prelude.catMaybes
                 [(JSON..=) "BasicAuthenticationCredentials"
                    Prelude.<$> basicAuthenticationCredentials,
                  (JSON..=) "CustomAuthenticationCredentials"
                    Prelude.<$> customAuthenticationCredentials,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "OAuth2Properties" Prelude.<$> oAuth2Properties,
                  (JSON..=) "SecretArn" Prelude.<$> secretArn])))
instance Property "AuthenticationType" AuthenticationConfigurationInputProperty where
  type PropertyType "AuthenticationType" AuthenticationConfigurationInputProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {authenticationType = newValue, ..}
instance Property "BasicAuthenticationCredentials" AuthenticationConfigurationInputProperty where
  type PropertyType "BasicAuthenticationCredentials" AuthenticationConfigurationInputProperty = BasicAuthenticationCredentialsProperty
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {basicAuthenticationCredentials = Prelude.pure newValue, ..}
instance Property "CustomAuthenticationCredentials" AuthenticationConfigurationInputProperty where
  type PropertyType "CustomAuthenticationCredentials" AuthenticationConfigurationInputProperty = JSON.Object
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {customAuthenticationCredentials = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" AuthenticationConfigurationInputProperty where
  type PropertyType "KmsKeyArn" AuthenticationConfigurationInputProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "OAuth2Properties" AuthenticationConfigurationInputProperty where
  type PropertyType "OAuth2Properties" AuthenticationConfigurationInputProperty = OAuth2PropertiesInputProperty
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {oAuth2Properties = Prelude.pure newValue, ..}
instance Property "SecretArn" AuthenticationConfigurationInputProperty where
  type PropertyType "SecretArn" AuthenticationConfigurationInputProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {secretArn = Prelude.pure newValue, ..}