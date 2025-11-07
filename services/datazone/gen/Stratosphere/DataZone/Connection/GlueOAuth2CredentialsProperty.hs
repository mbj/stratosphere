module Stratosphere.DataZone.Connection.GlueOAuth2CredentialsProperty (
        GlueOAuth2CredentialsProperty(..), mkGlueOAuth2CredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueOAuth2CredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueoauth2credentials.html>
    GlueOAuth2CredentialsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueoauth2credentials.html#cfn-datazone-connection-glueoauth2credentials-accesstoken>
                                   accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueoauth2credentials.html#cfn-datazone-connection-glueoauth2credentials-jwttoken>
                                   jwtToken :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueoauth2credentials.html#cfn-datazone-connection-glueoauth2credentials-refreshtoken>
                                   refreshToken :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-glueoauth2credentials.html#cfn-datazone-connection-glueoauth2credentials-usermanagedclientapplicationclientsecret>
                                   userManagedClientApplicationClientSecret :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueOAuth2CredentialsProperty :: GlueOAuth2CredentialsProperty
mkGlueOAuth2CredentialsProperty
  = GlueOAuth2CredentialsProperty
      {haddock_workaround_ = (), accessToken = Prelude.Nothing,
       jwtToken = Prelude.Nothing, refreshToken = Prelude.Nothing,
       userManagedClientApplicationClientSecret = Prelude.Nothing}
instance ToResourceProperties GlueOAuth2CredentialsProperty where
  toResourceProperties GlueOAuth2CredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.GlueOAuth2Credentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "JwtToken" Prelude.<$> jwtToken,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken,
                            (JSON..=) "UserManagedClientApplicationClientSecret"
                              Prelude.<$> userManagedClientApplicationClientSecret])}
instance JSON.ToJSON GlueOAuth2CredentialsProperty where
  toJSON GlueOAuth2CredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "JwtToken" Prelude.<$> jwtToken,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken,
               (JSON..=) "UserManagedClientApplicationClientSecret"
                 Prelude.<$> userManagedClientApplicationClientSecret]))
instance Property "AccessToken" GlueOAuth2CredentialsProperty where
  type PropertyType "AccessToken" GlueOAuth2CredentialsProperty = Value Prelude.Text
  set newValue GlueOAuth2CredentialsProperty {..}
    = GlueOAuth2CredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "JwtToken" GlueOAuth2CredentialsProperty where
  type PropertyType "JwtToken" GlueOAuth2CredentialsProperty = Value Prelude.Text
  set newValue GlueOAuth2CredentialsProperty {..}
    = GlueOAuth2CredentialsProperty
        {jwtToken = Prelude.pure newValue, ..}
instance Property "RefreshToken" GlueOAuth2CredentialsProperty where
  type PropertyType "RefreshToken" GlueOAuth2CredentialsProperty = Value Prelude.Text
  set newValue GlueOAuth2CredentialsProperty {..}
    = GlueOAuth2CredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}
instance Property "UserManagedClientApplicationClientSecret" GlueOAuth2CredentialsProperty where
  type PropertyType "UserManagedClientApplicationClientSecret" GlueOAuth2CredentialsProperty = Value Prelude.Text
  set newValue GlueOAuth2CredentialsProperty {..}
    = GlueOAuth2CredentialsProperty
        {userManagedClientApplicationClientSecret = Prelude.pure newValue,
         ..}