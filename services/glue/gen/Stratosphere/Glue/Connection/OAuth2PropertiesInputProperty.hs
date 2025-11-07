module Stratosphere.Glue.Connection.OAuth2PropertiesInputProperty (
        module Exports, OAuth2PropertiesInputProperty(..),
        mkOAuth2PropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Connection.AuthorizationCodePropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Connection.OAuth2ClientApplicationProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Connection.OAuth2CredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2PropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html>
    OAuth2PropertiesInputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html#cfn-glue-connection-oauth2propertiesinput-authorizationcodeproperties>
                                   authorizationCodeProperties :: (Prelude.Maybe AuthorizationCodePropertiesProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html#cfn-glue-connection-oauth2propertiesinput-oauth2clientapplication>
                                   oAuth2ClientApplication :: (Prelude.Maybe OAuth2ClientApplicationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html#cfn-glue-connection-oauth2propertiesinput-oauth2credentials>
                                   oAuth2Credentials :: (Prelude.Maybe OAuth2CredentialsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html#cfn-glue-connection-oauth2propertiesinput-oauth2granttype>
                                   oAuth2GrantType :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html#cfn-glue-connection-oauth2propertiesinput-tokenurl>
                                   tokenUrl :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2propertiesinput.html#cfn-glue-connection-oauth2propertiesinput-tokenurlparametersmap>
                                   tokenUrlParametersMap :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuth2PropertiesInputProperty :: OAuth2PropertiesInputProperty
mkOAuth2PropertiesInputProperty
  = OAuth2PropertiesInputProperty
      {haddock_workaround_ = (),
       authorizationCodeProperties = Prelude.Nothing,
       oAuth2ClientApplication = Prelude.Nothing,
       oAuth2Credentials = Prelude.Nothing,
       oAuth2GrantType = Prelude.Nothing, tokenUrl = Prelude.Nothing,
       tokenUrlParametersMap = Prelude.Nothing}
instance ToResourceProperties OAuth2PropertiesInputProperty where
  toResourceProperties OAuth2PropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.OAuth2PropertiesInput",
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
instance JSON.ToJSON OAuth2PropertiesInputProperty where
  toJSON OAuth2PropertiesInputProperty {..}
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
instance Property "AuthorizationCodeProperties" OAuth2PropertiesInputProperty where
  type PropertyType "AuthorizationCodeProperties" OAuth2PropertiesInputProperty = AuthorizationCodePropertiesProperty
  set newValue OAuth2PropertiesInputProperty {..}
    = OAuth2PropertiesInputProperty
        {authorizationCodeProperties = Prelude.pure newValue, ..}
instance Property "OAuth2ClientApplication" OAuth2PropertiesInputProperty where
  type PropertyType "OAuth2ClientApplication" OAuth2PropertiesInputProperty = OAuth2ClientApplicationProperty
  set newValue OAuth2PropertiesInputProperty {..}
    = OAuth2PropertiesInputProperty
        {oAuth2ClientApplication = Prelude.pure newValue, ..}
instance Property "OAuth2Credentials" OAuth2PropertiesInputProperty where
  type PropertyType "OAuth2Credentials" OAuth2PropertiesInputProperty = OAuth2CredentialsProperty
  set newValue OAuth2PropertiesInputProperty {..}
    = OAuth2PropertiesInputProperty
        {oAuth2Credentials = Prelude.pure newValue, ..}
instance Property "OAuth2GrantType" OAuth2PropertiesInputProperty where
  type PropertyType "OAuth2GrantType" OAuth2PropertiesInputProperty = Value Prelude.Text
  set newValue OAuth2PropertiesInputProperty {..}
    = OAuth2PropertiesInputProperty
        {oAuth2GrantType = Prelude.pure newValue, ..}
instance Property "TokenUrl" OAuth2PropertiesInputProperty where
  type PropertyType "TokenUrl" OAuth2PropertiesInputProperty = Value Prelude.Text
  set newValue OAuth2PropertiesInputProperty {..}
    = OAuth2PropertiesInputProperty
        {tokenUrl = Prelude.pure newValue, ..}
instance Property "TokenUrlParametersMap" OAuth2PropertiesInputProperty where
  type PropertyType "TokenUrlParametersMap" OAuth2PropertiesInputProperty = JSON.Object
  set newValue OAuth2PropertiesInputProperty {..}
    = OAuth2PropertiesInputProperty
        {tokenUrlParametersMap = Prelude.pure newValue, ..}