module Stratosphere.SSMContacts.Contact.ContactTargetInfoProperty (
        ContactTargetInfoProperty(..), mkContactTargetInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContactTargetInfoProperty
  = ContactTargetInfoProperty {contactId :: (Value Prelude.Text),
                               isEssential :: (Value Prelude.Bool)}
mkContactTargetInfoProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> ContactTargetInfoProperty
mkContactTargetInfoProperty contactId isEssential
  = ContactTargetInfoProperty
      {contactId = contactId, isEssential = isEssential}
instance ToResourceProperties ContactTargetInfoProperty where
  toResourceProperties ContactTargetInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Contact.ContactTargetInfo",
         supportsTags = Prelude.False,
         properties = ["ContactId" JSON..= contactId,
                       "IsEssential" JSON..= isEssential]}
instance JSON.ToJSON ContactTargetInfoProperty where
  toJSON ContactTargetInfoProperty {..}
    = JSON.object
        ["ContactId" JSON..= contactId, "IsEssential" JSON..= isEssential]
instance Property "ContactId" ContactTargetInfoProperty where
  type PropertyType "ContactId" ContactTargetInfoProperty = Value Prelude.Text
  set newValue ContactTargetInfoProperty {..}
    = ContactTargetInfoProperty {contactId = newValue, ..}
instance Property "IsEssential" ContactTargetInfoProperty where
  type PropertyType "IsEssential" ContactTargetInfoProperty = Value Prelude.Bool
  set newValue ContactTargetInfoProperty {..}
    = ContactTargetInfoProperty {isEssential = newValue, ..}