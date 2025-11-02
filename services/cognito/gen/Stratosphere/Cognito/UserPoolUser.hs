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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html>
    UserPoolUser {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-clientmetadata>
                  clientMetadata :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-desireddeliverymediums>
                  desiredDeliveryMediums :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-forcealiascreation>
                  forceAliasCreation :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-messageaction>
                  messageAction :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userattributes>
                  userAttributes :: (Prelude.Maybe [AttributeTypeProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-userpoolid>
                  userPoolId :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-username>
                  username :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooluser.html#cfn-cognito-userpooluser-validationdata>
                  validationData :: (Prelude.Maybe [AttributeTypeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolUser :: Value Prelude.Text -> UserPoolUser
mkUserPoolUser userPoolId
  = UserPoolUser
      {haddock_workaround_ = (), userPoolId = userPoolId,
       clientMetadata = Prelude.Nothing,
       desiredDeliveryMediums = Prelude.Nothing,
       forceAliasCreation = Prelude.Nothing,
       messageAction = Prelude.Nothing, userAttributes = Prelude.Nothing,
       username = Prelude.Nothing, validationData = Prelude.Nothing}
instance ToResourceProperties UserPoolUser where
  toResourceProperties UserPoolUser {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolUser",
         supportsTags = Prelude.False,
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
  type PropertyType "ClientMetadata" UserPoolUser = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue UserPoolUser {..}
    = UserPoolUser {clientMetadata = Prelude.pure newValue, ..}
instance Property "DesiredDeliveryMediums" UserPoolUser where
  type PropertyType "DesiredDeliveryMediums" UserPoolUser = ValueList Prelude.Text
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