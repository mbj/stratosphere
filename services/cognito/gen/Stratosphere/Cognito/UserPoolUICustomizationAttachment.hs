module Stratosphere.Cognito.UserPoolUICustomizationAttachment (
        UserPoolUICustomizationAttachment(..),
        mkUserPoolUICustomizationAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolUICustomizationAttachment
  = UserPoolUICustomizationAttachment {cSS :: (Prelude.Maybe (Value Prelude.Text)),
                                       clientId :: (Value Prelude.Text),
                                       userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolUICustomizationAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> UserPoolUICustomizationAttachment
mkUserPoolUICustomizationAttachment clientId userPoolId
  = UserPoolUICustomizationAttachment
      {clientId = clientId, userPoolId = userPoolId,
       cSS = Prelude.Nothing}
instance ToResourceProperties UserPoolUICustomizationAttachment where
  toResourceProperties UserPoolUICustomizationAttachment {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolUICustomizationAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes [(JSON..=) "CSS" Prelude.<$> cSS]))}
instance JSON.ToJSON UserPoolUICustomizationAttachment where
  toJSON UserPoolUICustomizationAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes [(JSON..=) "CSS" Prelude.<$> cSS])))
instance Property "CSS" UserPoolUICustomizationAttachment where
  type PropertyType "CSS" UserPoolUICustomizationAttachment = Value Prelude.Text
  set newValue UserPoolUICustomizationAttachment {..}
    = UserPoolUICustomizationAttachment
        {cSS = Prelude.pure newValue, ..}
instance Property "ClientId" UserPoolUICustomizationAttachment where
  type PropertyType "ClientId" UserPoolUICustomizationAttachment = Value Prelude.Text
  set newValue UserPoolUICustomizationAttachment {..}
    = UserPoolUICustomizationAttachment {clientId = newValue, ..}
instance Property "UserPoolId" UserPoolUICustomizationAttachment where
  type PropertyType "UserPoolId" UserPoolUICustomizationAttachment = Value Prelude.Text
  set newValue UserPoolUICustomizationAttachment {..}
    = UserPoolUICustomizationAttachment {userPoolId = newValue, ..}