module Stratosphere.Cognito.UserPoolIdentityProvider (
        UserPoolIdentityProvider(..), mkUserPoolIdentityProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolIdentityProvider
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html>
    UserPoolIdentityProvider {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-attributemapping>
                              attributeMapping :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-idpidentifiers>
                              idpIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providerdetails>
                              providerDetails :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providername>
                              providerName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-providertype>
                              providerType :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolidentityprovider.html#cfn-cognito-userpoolidentityprovider-userpoolid>
                              userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolIdentityProvider ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> UserPoolIdentityProvider
mkUserPoolIdentityProvider
  providerDetails
  providerName
  providerType
  userPoolId
  = UserPoolIdentityProvider
      {haddock_workaround_ = (), providerDetails = providerDetails,
       providerName = providerName, providerType = providerType,
       userPoolId = userPoolId, attributeMapping = Prelude.Nothing,
       idpIdentifiers = Prelude.Nothing}
instance ToResourceProperties UserPoolIdentityProvider where
  toResourceProperties UserPoolIdentityProvider {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolIdentityProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderDetails" JSON..= providerDetails,
                            "ProviderName" JSON..= providerName,
                            "ProviderType" JSON..= providerType,
                            "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeMapping" Prelude.<$> attributeMapping,
                               (JSON..=) "IdpIdentifiers" Prelude.<$> idpIdentifiers]))}
instance JSON.ToJSON UserPoolIdentityProvider where
  toJSON UserPoolIdentityProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderDetails" JSON..= providerDetails,
               "ProviderName" JSON..= providerName,
               "ProviderType" JSON..= providerType,
               "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeMapping" Prelude.<$> attributeMapping,
                  (JSON..=) "IdpIdentifiers" Prelude.<$> idpIdentifiers])))
instance Property "AttributeMapping" UserPoolIdentityProvider where
  type PropertyType "AttributeMapping" UserPoolIdentityProvider = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider
        {attributeMapping = Prelude.pure newValue, ..}
instance Property "IdpIdentifiers" UserPoolIdentityProvider where
  type PropertyType "IdpIdentifiers" UserPoolIdentityProvider = ValueList Prelude.Text
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider
        {idpIdentifiers = Prelude.pure newValue, ..}
instance Property "ProviderDetails" UserPoolIdentityProvider where
  type PropertyType "ProviderDetails" UserPoolIdentityProvider = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue UserPoolIdentityProvider {..}
    = UserPoolIdentityProvider {providerDetails = newValue, ..}
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