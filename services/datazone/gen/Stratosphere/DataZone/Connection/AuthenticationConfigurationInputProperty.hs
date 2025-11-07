module Stratosphere.DataZone.Connection.AuthenticationConfigurationInputProperty (
        module Exports, AuthenticationConfigurationInputProperty(..),
        mkAuthenticationConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.BasicAuthenticationCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.OAuth2PropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html>
    AuthenticationConfigurationInputProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-authenticationtype>
                                              authenticationType :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-basicauthenticationcredentials>
                                              basicAuthenticationCredentials :: (Prelude.Maybe BasicAuthenticationCredentialsProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-customauthenticationcredentials>
                                              customAuthenticationCredentials :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-kmskeyarn>
                                              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-oauth2properties>
                                              oAuth2Properties :: (Prelude.Maybe OAuth2PropertiesProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-authenticationconfigurationinput.html#cfn-datazone-connection-authenticationconfigurationinput-secretarn>
                                              secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthenticationConfigurationInputProperty ::
  AuthenticationConfigurationInputProperty
mkAuthenticationConfigurationInputProperty
  = AuthenticationConfigurationInputProperty
      {haddock_workaround_ = (), authenticationType = Prelude.Nothing,
       basicAuthenticationCredentials = Prelude.Nothing,
       customAuthenticationCredentials = Prelude.Nothing,
       kmsKeyArn = Prelude.Nothing, oAuth2Properties = Prelude.Nothing,
       secretArn = Prelude.Nothing}
instance ToResourceProperties AuthenticationConfigurationInputProperty where
  toResourceProperties AuthenticationConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.AuthenticationConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
                            (JSON..=) "BasicAuthenticationCredentials"
                              Prelude.<$> basicAuthenticationCredentials,
                            (JSON..=) "CustomAuthenticationCredentials"
                              Prelude.<$> customAuthenticationCredentials,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                            (JSON..=) "OAuth2Properties" Prelude.<$> oAuth2Properties,
                            (JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON AuthenticationConfigurationInputProperty where
  toJSON AuthenticationConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthenticationType" Prelude.<$> authenticationType,
               (JSON..=) "BasicAuthenticationCredentials"
                 Prelude.<$> basicAuthenticationCredentials,
               (JSON..=) "CustomAuthenticationCredentials"
                 Prelude.<$> customAuthenticationCredentials,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
               (JSON..=) "OAuth2Properties" Prelude.<$> oAuth2Properties,
               (JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "AuthenticationType" AuthenticationConfigurationInputProperty where
  type PropertyType "AuthenticationType" AuthenticationConfigurationInputProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {authenticationType = Prelude.pure newValue, ..}
instance Property "BasicAuthenticationCredentials" AuthenticationConfigurationInputProperty where
  type PropertyType "BasicAuthenticationCredentials" AuthenticationConfigurationInputProperty = BasicAuthenticationCredentialsProperty
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {basicAuthenticationCredentials = Prelude.pure newValue, ..}
instance Property "CustomAuthenticationCredentials" AuthenticationConfigurationInputProperty where
  type PropertyType "CustomAuthenticationCredentials" AuthenticationConfigurationInputProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {customAuthenticationCredentials = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" AuthenticationConfigurationInputProperty where
  type PropertyType "KmsKeyArn" AuthenticationConfigurationInputProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "OAuth2Properties" AuthenticationConfigurationInputProperty where
  type PropertyType "OAuth2Properties" AuthenticationConfigurationInputProperty = OAuth2PropertiesProperty
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {oAuth2Properties = Prelude.pure newValue, ..}
instance Property "SecretArn" AuthenticationConfigurationInputProperty where
  type PropertyType "SecretArn" AuthenticationConfigurationInputProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationInputProperty {..}
    = AuthenticationConfigurationInputProperty
        {secretArn = Prelude.pure newValue, ..}