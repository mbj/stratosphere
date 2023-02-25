module Stratosphere.Cognito.UserPoolUser (
        module Exports, UserPoolUser(..), mkUserPoolUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolUser.AttributeTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolUser
  = UserPoolUser {clientMetadata :: (Prelude.Maybe JSON.Object),
                  desiredDeliveryMediums :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                  forceAliasCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                  messageAction :: (Prelude.Maybe (Value Prelude.Text)),
                  userAttributes :: (Prelude.Maybe [AttributeTypeProperty]),
                  userPoolId :: (Value Prelude.Text),
                  username :: (Prelude.Maybe (Value Prelude.Text)),
                  validationData :: (Prelude.Maybe [AttributeTypeProperty])}
mkUserPoolUser :: Value Prelude.Text -> UserPoolUser
mkUserPoolUser userPoolId
  = UserPoolUser
      {userPoolId = userPoolId, clientMetadata = Prelude.Nothing,
       desiredDeliveryMediums = Prelude.Nothing,
       forceAliasCreation = Prelude.Nothing,
       messageAction = Prelude.Nothing, userAttributes = Prelude.Nothing,
       username = Prelude.Nothing, validationData = Prelude.Nothing}
instance ToResourceProperties UserPoolUser where
  toResourceProperties UserPoolUser {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolUser",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientMetadata" Prelude.<$> clientMetadata,
                               (JSON..=) "DesiredDeliveryMediums"
                                 Prelude.<$> desiredDeliveryMediums,
                               (JSON..=) "ForceAliasCreation" Prelude.<$> forceAliasCreation,
                               (JSON..=) "MessageAction" Prelude.<$> messageAction,
                               (JSON..=) "UserAttributes" Prelude.<$> userAttributes,
                               (JSON..=) "Username" Prelude.<$> username,
                               (JSON..=) "ValidationData" Prelude.<$> validationData]))}
instance JSON.ToJSON UserPoolUser where
  toJSON UserPoolUser {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "ClientMetadata" Prelude.<$> clientMetadata,
                  (JSON..=) "DesiredDeliveryMediums"
                    Prelude.<$> desiredDeliveryMediums,
                  (JSON..=) "ForceAliasCreation" Prelude.<$> forceAliasCreation,
                  (JSON..=) "MessageAction" Prelude.<$> messageAction,
                  (JSON..=) "UserAttributes" Prelude.<$> userAttributes,
                  (JSON..=) "Username" Prelude.<$> username,
                  (JSON..=) "ValidationData" Prelude.<$> validationData])))
instance Property "ClientMetadata" UserPoolUser where
  type PropertyType "ClientMetadata" UserPoolUser = JSON.Object
  set newValue UserPoolUser {..}
    = UserPoolUser {clientMetadata = Prelude.pure newValue, ..}
instance Property "DesiredDeliveryMediums" UserPoolUser where
  type PropertyType "DesiredDeliveryMediums" UserPoolUser = ValueList (Value Prelude.Text)
  set newValue UserPoolUser {..}
    = UserPoolUser {desiredDeliveryMediums = Prelude.pure newValue, ..}
instance Property "ForceAliasCreation" UserPoolUser where
  type PropertyType "ForceAliasCreation" UserPoolUser = Value Prelude.Bool
  set newValue UserPoolUser {..}
    = UserPoolUser {forceAliasCreation = Prelude.pure newValue, ..}
instance Property "MessageAction" UserPoolUser where
  type PropertyType "MessageAction" UserPoolUser = Value Prelude.Text
  set newValue UserPoolUser {..}
    = UserPoolUser {messageAction = Prelude.pure newValue, ..}
instance Property "UserAttributes" UserPoolUser where
  type PropertyType "UserAttributes" UserPoolUser = [AttributeTypeProperty]
  set newValue UserPoolUser {..}
    = UserPoolUser {userAttributes = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolUser where
  type PropertyType "UserPoolId" UserPoolUser = Value Prelude.Text
  set newValue UserPoolUser {..}
    = UserPoolUser {userPoolId = newValue, ..}
instance Property "Username" UserPoolUser where
  type PropertyType "Username" UserPoolUser = Value Prelude.Text
  set newValue UserPoolUser {..}
    = UserPoolUser {username = Prelude.pure newValue, ..}
instance Property "ValidationData" UserPoolUser where
  type PropertyType "ValidationData" UserPoolUser = [AttributeTypeProperty]
  set newValue UserPoolUser {..}
    = UserPoolUser {validationData = Prelude.pure newValue, ..}