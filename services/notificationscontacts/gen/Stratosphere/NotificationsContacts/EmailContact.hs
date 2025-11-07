module Stratosphere.NotificationsContacts.EmailContact (
        EmailContact(..), mkEmailContact
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EmailContact
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notificationscontacts-emailcontact.html>
    EmailContact {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notificationscontacts-emailcontact.html#cfn-notificationscontacts-emailcontact-emailaddress>
                  emailAddress :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notificationscontacts-emailcontact.html#cfn-notificationscontacts-emailcontact-name>
                  name :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-notificationscontacts-emailcontact.html#cfn-notificationscontacts-emailcontact-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailContact ::
  Value Prelude.Text -> Value Prelude.Text -> EmailContact
mkEmailContact emailAddress name
  = EmailContact
      {haddock_workaround_ = (), emailAddress = emailAddress,
       name = name, tags = Prelude.Nothing}
instance ToResourceProperties EmailContact where
  toResourceProperties EmailContact {..}
    = ResourceProperties
        {awsType = "AWS::NotificationsContacts::EmailContact",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EmailAddress" JSON..= emailAddress, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON EmailContact where
  toJSON EmailContact {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EmailAddress" JSON..= emailAddress, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EmailAddress" EmailContact where
  type PropertyType "EmailAddress" EmailContact = Value Prelude.Text
  set newValue EmailContact {..}
    = EmailContact {emailAddress = newValue, ..}
instance Property "Name" EmailContact where
  type PropertyType "Name" EmailContact = Value Prelude.Text
  set newValue EmailContact {..} = EmailContact {name = newValue, ..}
instance Property "Tags" EmailContact where
  type PropertyType "Tags" EmailContact = [Tag]
  set newValue EmailContact {..}
    = EmailContact {tags = Prelude.pure newValue, ..}