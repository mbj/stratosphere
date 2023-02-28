module Stratosphere.Cognito.UserPoolIdentityProvider (
        UserPoolIdentityProvider(..), mkUserPoolIdentityProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolIdentityProvider
  = UserPoolIdentityProvider {attributeMapping :: (Prelude.Maybe JSON.Object),
                              idpIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                              providerDetails :: (Prelude.Maybe JSON.Object),
                              providerName :: (Value Prelude.Text),
                              providerType :: (Value Prelude.Text),
                              userPoolId :: (Value Prelude.Text)}
mkUserPoolIdentityProvider ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> UserPoolIdentityProvider
mkUserPoolIdentityProvider providerName providerType userPoolId
  = UserPoolIdentityProvider
      {providerName = providerName, providerType = providerType,
       userPoolId = userPoolId, attributeMapping = Prelude.Nothing,
       idpIdentifiers = Prelude.Nothing,
       providerDetails = Prelude.Nothing}
instance ToResourceProperties UserPoolIdentityProvider where
  toResourceProperties UserPoolIdentityProvider {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolIdentityProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderName" JSON..= providerName,
                            "ProviderType" JSON..= providerType,
                            "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeMapping" Prelude.<$> attributeMapping,
                               (JSON..=) "IdpIdentifiers" Prelude.<$> idpIdentifiers,
                               (JSON..=) "ProviderDetails" Prelude.<$> providerDetails]))}
instance JSON.ToJSON UserPoolIdentityProvider where
  toJSON UserPoolIdentityProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderName" JSON..= providerName,
               "ProviderType" JSON..= providerType,
               "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeMapping" Prelude.<$> attributeMapping,
                  (JSON..=) "IdpIdentifiers" Prelude.<$> idpIdentifiers,
                  (JSON..=) "ProviderDetails" Prelude.<$> providerDetails])))
instance Property "AttributeMapping" UserPoolIdentityProvider where
  type PropertyType "AttributeMapping" UserPoolIdentityProvider = JSON.Object
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider
        {attributeMapping = Prelude.pure newValue, ..}
instance Property "IdpIdentifiers" UserPoolIdentityProvider where
  type PropertyType "IdpIdentifiers" UserPoolIdentityProvider = ValueList Prelude.Text
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider
        {idpIdentifiers = Prelude.pure newValue, ..}
instance Property "ProviderDetails" UserPoolIdentityProvider where
  type PropertyType "ProviderDetails" UserPoolIdentityProvider = JSON.Object
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider
        {providerDetails = Prelude.pure newValue, ..}
instance Property "ProviderName" UserPoolIdentityProvider where
  type PropertyType "ProviderName" UserPoolIdentityProvider = Value Prelude.Text
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider {providerName = newValue, ..}
instance Property "ProviderType" UserPoolIdentityProvider where
  type PropertyType "ProviderType" UserPoolIdentityProvider = Value Prelude.Text
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider {providerType = newValue, ..}
instance Property "UserPoolId" UserPoolIdentityProvider where
  type PropertyType "UserPoolId" UserPoolIdentityProvider = Value Prelude.Text
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider {userPoolId = newValue, ..}