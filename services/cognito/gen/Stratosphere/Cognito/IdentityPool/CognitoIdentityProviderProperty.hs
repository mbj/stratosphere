module Stratosphere.Cognito.IdentityPool.CognitoIdentityProviderProperty (
        CognitoIdentityProviderProperty(..),
        mkCognitoIdentityProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoIdentityProviderProperty
  = CognitoIdentityProviderProperty {clientId :: (Prelude.Maybe (Value Prelude.Text)),
                                     providerName :: (Prelude.Maybe (Value Prelude.Text)),
                                     serverSideTokenCheck :: (Prelude.Maybe (Value Prelude.Bool))}
mkCognitoIdentityProviderProperty ::
  CognitoIdentityProviderProperty
mkCognitoIdentityProviderProperty
  = CognitoIdentityProviderProperty
      {clientId = Prelude.Nothing, providerName = Prelude.Nothing,
       serverSideTokenCheck = Prelude.Nothing}
instance ToResourceProperties CognitoIdentityProviderProperty where
  toResourceProperties CognitoIdentityProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPool.CognitoIdentityProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "ProviderName" Prelude.<$> providerName,
                            (JSON..=) "ServerSideTokenCheck"
                              Prelude.<$> serverSideTokenCheck])}
instance JSON.ToJSON CognitoIdentityProviderProperty where
  toJSON CognitoIdentityProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "ProviderName" Prelude.<$> providerName,
               (JSON..=) "ServerSideTokenCheck"
                 Prelude.<$> serverSideTokenCheck]))
instance Property "ClientId" CognitoIdentityProviderProperty where
  type PropertyType "ClientId" CognitoIdentityProviderProperty = Value Prelude.Text
  set newValue CognitoIdentityProviderProperty {..}
    = CognitoIdentityProviderProperty
        {clientId = Prelude.pure newValue, ..}
instance Property "ProviderName" CognitoIdentityProviderProperty where
  type PropertyType "ProviderName" CognitoIdentityProviderProperty = Value Prelude.Text
  set newValue CognitoIdentityProviderProperty {..}
    = CognitoIdentityProviderProperty
        {providerName = Prelude.pure newValue, ..}
instance Property "ServerSideTokenCheck" CognitoIdentityProviderProperty where
  type PropertyType "ServerSideTokenCheck" CognitoIdentityProviderProperty = Value Prelude.Bool
  set newValue CognitoIdentityProviderProperty {..}
    = CognitoIdentityProviderProperty
        {serverSideTokenCheck = Prelude.pure newValue, ..}