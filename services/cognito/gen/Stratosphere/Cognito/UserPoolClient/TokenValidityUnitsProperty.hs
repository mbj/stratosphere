module Stratosphere.Cognito.UserPoolClient.TokenValidityUnitsProperty (
        TokenValidityUnitsProperty(..), mkTokenValidityUnitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TokenValidityUnitsProperty
  = TokenValidityUnitsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                idToken :: (Prelude.Maybe (Value Prelude.Text)),
                                refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
mkTokenValidityUnitsProperty :: TokenValidityUnitsProperty
mkTokenValidityUnitsProperty
  = TokenValidityUnitsProperty
      {accessToken = Prelude.Nothing, idToken = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties TokenValidityUnitsProperty where
  toResourceProperties TokenValidityUnitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolClient.TokenValidityUnits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "IdToken" Prelude.<$> idToken,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken])}
instance JSON.ToJSON TokenValidityUnitsProperty where
  toJSON TokenValidityUnitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "IdToken" Prelude.<$> idToken,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))
instance Property "AccessToken" TokenValidityUnitsProperty where
  type PropertyType "AccessToken" TokenValidityUnitsProperty = Value Prelude.Text
  set newValue TokenValidityUnitsProperty {..}
    = TokenValidityUnitsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "IdToken" TokenValidityUnitsProperty where
  type PropertyType "IdToken" TokenValidityUnitsProperty = Value Prelude.Text
  set newValue TokenValidityUnitsProperty {..}
    = TokenValidityUnitsProperty {idToken = Prelude.pure newValue, ..}
instance Property "RefreshToken" TokenValidityUnitsProperty where
  type PropertyType "RefreshToken" TokenValidityUnitsProperty = Value Prelude.Text
  set newValue TokenValidityUnitsProperty {..}
    = TokenValidityUnitsProperty
        {refreshToken = Prelude.pure newValue, ..}