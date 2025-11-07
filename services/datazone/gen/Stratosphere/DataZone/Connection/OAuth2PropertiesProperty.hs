module Stratosphere.DataZone.Connection.OAuth2PropertiesProperty (
        module Exports, OAuth2PropertiesProperty(..),
        mkOAuth2PropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Connection.AuthorizationCodePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.GlueOAuth2CredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Connection.OAuth2ClientApplicationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2PropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html>
    OAuth2PropertiesProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-authorizationcodeproperties>
                              authorizationCodeProperties :: (Prelude.Maybe AuthorizationCodePropertiesProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-oauth2clientapplication>
                              oAuth2ClientApplication :: (Prelude.Maybe OAuth2ClientApplicationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-oauth2credentials>
                              oAuth2Credentials :: (Prelude.Maybe GlueOAuth2CredentialsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-oauth2granttype>
                              oAuth2GrantType :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-tokenurl>
                              tokenUrl :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-oauth2properties.html#cfn-datazone-connection-oauth2properties-tokenurlparametersmap>
                              tokenUrlParametersMap :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuth2PropertiesProperty :: OAuth2PropertiesProperty
mkOAuth2PropertiesProperty
  = OAuth2PropertiesProperty
      {haddock_workaround_ = (),
       authorizationCodeProperties = Prelude.Nothing,
       oAuth2ClientApplication = Prelude.Nothing,
       oAuth2Credentials = Prelude.Nothing,
       oAuth2GrantType = Prelude.Nothing, tokenUrl = Prelude.Nothing,
       tokenUrlParametersMap = Prelude.Nothing}
instance ToResourceProperties OAuth2PropertiesProperty where
  toResourceProperties OAuth2PropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.OAuth2Properties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AuthorizationCodeProperties"
                              Prelude.<$> authorizationCodeProperties,
                            (JSON..=) "OAuth2ClientApplication"
                              Prelude.<$> oAuth2ClientApplication,
                            (JSON..=) "OAuth2Credentials" Prelude.<$> oAuth2Credentials,
                            (JSON..=) "OAuth2GrantType" Prelude.<$> oAuth2GrantType,
                            (JSON..=) "TokenUrl" Prelude.<$> tokenUrl,
                            (JSON..=) "TokenUrlParametersMap"
                              Prelude.<$> tokenUrlParametersMap])}
instance JSON.ToJSON OAuth2PropertiesProperty where
  toJSON OAuth2PropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AuthorizationCodeProperties"
                 Prelude.<$> authorizationCodeProperties,
               (JSON..=) "OAuth2ClientApplication"
                 Prelude.<$> oAuth2ClientApplication,
               (JSON..=) "OAuth2Credentials" Prelude.<$> oAuth2Credentials,
               (JSON..=) "OAuth2GrantType" Prelude.<$> oAuth2GrantType,
               (JSON..=) "TokenUrl" Prelude.<$> tokenUrl,
               (JSON..=) "TokenUrlParametersMap"
                 Prelude.<$> tokenUrlParametersMap]))
instance Property "AuthorizationCodeProperties" OAuth2PropertiesProperty where
  type PropertyType "AuthorizationCodeProperties" OAuth2PropertiesProperty = AuthorizationCodePropertiesProperty
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {authorizationCodeProperties = Prelude.pure newValue, ..}
instance Property "OAuth2ClientApplication" OAuth2PropertiesProperty where
  type PropertyType "OAuth2ClientApplication" OAuth2PropertiesProperty = OAuth2ClientApplicationProperty
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {oAuth2ClientApplication = Prelude.pure newValue, ..}
instance Property "OAuth2Credentials" OAuth2PropertiesProperty where
  type PropertyType "OAuth2Credentials" OAuth2PropertiesProperty = GlueOAuth2CredentialsProperty
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {oAuth2Credentials = Prelude.pure newValue, ..}
instance Property "OAuth2GrantType" OAuth2PropertiesProperty where
  type PropertyType "OAuth2GrantType" OAuth2PropertiesProperty = Value Prelude.Text
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {oAuth2GrantType = Prelude.pure newValue, ..}
instance Property "TokenUrl" OAuth2PropertiesProperty where
  type PropertyType "TokenUrl" OAuth2PropertiesProperty = Value Prelude.Text
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty {tokenUrl = Prelude.pure newValue, ..}
instance Property "TokenUrlParametersMap" OAuth2PropertiesProperty where
  type PropertyType "TokenUrlParametersMap" OAuth2PropertiesProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue OAuth2PropertiesProperty {..}
    = OAuth2PropertiesProperty
        {tokenUrlParametersMap = Prelude.pure newValue, ..}