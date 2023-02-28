module Stratosphere.ASK.Skill.AuthenticationConfigurationProperty (
        AuthenticationConfigurationProperty(..),
        mkAuthenticationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthenticationConfigurationProperty
  = AuthenticationConfigurationProperty {clientId :: (Value Prelude.Text),
                                         clientSecret :: (Value Prelude.Text),
                                         refreshToken :: (Value Prelude.Text)}
mkAuthenticationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> AuthenticationConfigurationProperty
mkAuthenticationConfigurationProperty
  clientId
  clientSecret
  refreshToken
  = AuthenticationConfigurationProperty
      {clientId = clientId, clientSecret = clientSecret,
       refreshToken = refreshToken}
instance ToResourceProperties AuthenticationConfigurationProperty where
  toResourceProperties AuthenticationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "Alexa::ASK::Skill.AuthenticationConfiguration",
         supportsTags = Prelude.False,
         properties = ["ClientId" JSON..= clientId,
                       "ClientSecret" JSON..= clientSecret,
                       "RefreshToken" JSON..= refreshToken]}
instance JSON.ToJSON AuthenticationConfigurationProperty where
  toJSON AuthenticationConfigurationProperty {..}
    = JSON.object
        ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret,
         "RefreshToken" JSON..= refreshToken]
instance Property "ClientId" AuthenticationConfigurationProperty where
  type PropertyType "ClientId" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty {clientId = newValue, ..}
instance Property "ClientSecret" AuthenticationConfigurationProperty where
  type PropertyType "ClientSecret" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty {clientSecret = newValue, ..}
instance Property "RefreshToken" AuthenticationConfigurationProperty where
  type PropertyType "RefreshToken" AuthenticationConfigurationProperty = Value Prelude.Text
  set newValue AuthenticationConfigurationProperty {..}
    = AuthenticationConfigurationProperty {refreshToken = newValue, ..}