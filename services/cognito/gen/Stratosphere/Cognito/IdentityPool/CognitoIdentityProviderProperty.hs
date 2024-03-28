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
  = CognitoIdentityProviderProperty {clientId :: (Value Prelude.Text),
                                     providerName :: (Value Prelude.Text),
                                     serverSideTokenCheck :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCognitoIdentityProviderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CognitoIdentityProviderProperty
mkCognitoIdentityProviderProperty clientId providerName
  = CognitoIdentityProviderProperty
      {clientId = clientId, providerName = providerName,
       serverSideTokenCheck = Prelude.Nothing}
instance ToResourceProperties CognitoIdentityProviderProperty where
  toResourceProperties CognitoIdentityProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPool.CognitoIdentityProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "ProviderName" JSON..= providerName]
                           (Prelude.catMaybes
                              [(JSON..=) "ServerSideTokenCheck"
                                 Prelude.<$> serverSideTokenCheck]))}
instance JSON.ToJSON CognitoIdentityProviderProperty where
  toJSON CognitoIdentityProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "ProviderName" JSON..= providerName]
              (Prelude.catMaybes
                 [(JSON..=) "ServerSideTokenCheck"
                    Prelude.<$> serverSideTokenCheck])))
instance Property "ClientId" CognitoIdentityProviderProperty where
  type PropertyType "ClientId" CognitoIdentityProviderProperty = Value Prelude.Text
  set newValue CognitoIdentityProviderProperty {..}
    = CognitoIdentityProviderProperty {clientId = newValue, ..}
instance Property "ProviderName" CognitoIdentityProviderProperty where
  type PropertyType "ProviderName" CognitoIdentityProviderProperty = Value Prelude.Text
  set newValue CognitoIdentityProviderProperty {..}
    = CognitoIdentityProviderProperty {providerName = newValue, ..}
instance Property "ServerSideTokenCheck" CognitoIdentityProviderProperty where
  type PropertyType "ServerSideTokenCheck" CognitoIdentityProviderProperty = Value Prelude.Bool
  set newValue CognitoIdentityProviderProperty {..}
    = CognitoIdentityProviderProperty
        {serverSideTokenCheck = Prelude.pure newValue, ..}