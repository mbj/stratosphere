module Stratosphere.NotificationsContacts.EmailContact.EmailContactProperty (
        EmailContactProperty(..), mkEmailContactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailContactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html>
    EmailContactProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html#cfn-notificationscontacts-emailcontact-emailcontact-address>
                          address :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html#cfn-notificationscontacts-emailcontact-emailcontact-arn>
                          arn :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html#cfn-notificationscontacts-emailcontact-emailcontact-creationtime>
                          creationTime :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html#cfn-notificationscontacts-emailcontact-emailcontact-name>
                          name :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html#cfn-notificationscontacts-emailcontact-emailcontact-status>
                          status :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-notificationscontacts-emailcontact-emailcontact.html#cfn-notificationscontacts-emailcontact-emailcontact-updatetime>
                          updateTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailContactProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> Value Prelude.Text -> EmailContactProperty
mkEmailContactProperty
  address
  arn
  creationTime
  name
  status
  updateTime
  = EmailContactProperty
      {haddock_workaround_ = (), address = address, arn = arn,
       creationTime = creationTime, name = name, status = status,
       updateTime = updateTime}
instance ToResourceProperties EmailContactProperty where
  toResourceProperties EmailContactProperty {..}
    = ResourceProperties
        {awsType = "AWS::NotificationsContacts::EmailContact.EmailContact",
         supportsTags = Prelude.False,
         properties = ["Address" JSON..= address, "Arn" JSON..= arn,
                       "CreationTime" JSON..= creationTime, "Name" JSON..= name,
                       "Status" JSON..= status, "UpdateTime" JSON..= updateTime]}
instance JSON.ToJSON EmailContactProperty where
  toJSON EmailContactProperty {..}
    = JSON.object
        ["Address" JSON..= address, "Arn" JSON..= arn,
         "CreationTime" JSON..= creationTime, "Name" JSON..= name,
         "Status" JSON..= status, "UpdateTime" JSON..= updateTime]
instance Property "Address" EmailContactProperty where
  type PropertyType "Address" EmailContactProperty = Value Prelude.Text
  set newValue EmailContactProperty {..}
    = EmailContactProperty {address = newValue, ..}
instance Property "Arn" EmailContactProperty where
  type PropertyType "Arn" EmailContactProperty = Value Prelude.Text
  set newValue EmailContactProperty {..}
    = EmailContactProperty {arn = newValue, ..}
instance Property "CreationTime" EmailContactProperty where
  type PropertyType "CreationTime" EmailContactProperty = Value Prelude.Text
  set newValue EmailContactProperty {..}
    = EmailContactProperty {creationTime = newValue, ..}
instance Property "Name" EmailContactProperty where
  type PropertyType "Name" EmailContactProperty = Value Prelude.Text
  set newValue EmailContactProperty {..}
    = EmailContactProperty {name = newValue, ..}
instance Property "Status" EmailContactProperty where
  type PropertyType "Status" EmailContactProperty = Value Prelude.Text
  set newValue EmailContactProperty {..}
    = EmailContactProperty {status = newValue, ..}
instance Property "UpdateTime" EmailContactProperty where
  type PropertyType "UpdateTime" EmailContactProperty = Value Prelude.Text
  set newValue EmailContactProperty {..}
    = EmailContactProperty {updateTime = newValue, ..}