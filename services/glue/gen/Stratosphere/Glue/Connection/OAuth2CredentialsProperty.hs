module Stratosphere.Glue.Connection.OAuth2CredentialsProperty (
        OAuth2CredentialsProperty(..), mkOAuth2CredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2CredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2credentials.html>
    OAuth2CredentialsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2credentials.html#cfn-glue-connection-oauth2credentials-accesstoken>
                               accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2credentials.html#cfn-glue-connection-oauth2credentials-jwttoken>
                               jwtToken :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2credentials.html#cfn-glue-connection-oauth2credentials-refreshtoken>
                               refreshToken :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-connection-oauth2credentials.html#cfn-glue-connection-oauth2credentials-usermanagedclientapplicationclientsecret>
                               userManagedClientApplicationClientSecret :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuth2CredentialsProperty :: OAuth2CredentialsProperty
mkOAuth2CredentialsProperty
  = OAuth2CredentialsProperty
      {haddock_workaround_ = (), accessToken = Prelude.Nothing,
       jwtToken = Prelude.Nothing, refreshToken = Prelude.Nothing,
       userManagedClientApplicationClientSecret = Prelude.Nothing}
instance ToResourceProperties OAuth2CredentialsProperty where
  toResourceProperties OAuth2CredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Connection.OAuth2Credentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "JwtToken" Prelude.<$> jwtToken,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken,
                            (JSON..=) "UserManagedClientApplicationClientSecret"
                              Prelude.<$> userManagedClientApplicationClientSecret])}
instance JSON.ToJSON OAuth2CredentialsProperty where
  toJSON OAuth2CredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "JwtToken" Prelude.<$> jwtToken,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken,
               (JSON..=) "UserManagedClientApplicationClientSecret"
                 Prelude.<$> userManagedClientApplicationClientSecret]))
instance Property "AccessToken" OAuth2CredentialsProperty where
  type PropertyType "AccessToken" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "JwtToken" OAuth2CredentialsProperty where
  type PropertyType "JwtToken" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty {jwtToken = Prelude.pure newValue, ..}
instance Property "RefreshToken" OAuth2CredentialsProperty where
  type PropertyType "RefreshToken" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}
instance Property "UserManagedClientApplicationClientSecret" OAuth2CredentialsProperty where
  type PropertyType "UserManagedClientApplicationClientSecret" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {userManagedClientApplicationClientSecret = Prelude.pure newValue,
         ..}