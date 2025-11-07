module Stratosphere.SES.MailManagerAddressList (
        MailManagerAddressList(..), mkMailManagerAddressList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerAddressList
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageraddresslist.html>
    MailManagerAddressList {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageraddresslist.html#cfn-ses-mailmanageraddresslist-addresslistname>
                            addressListName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-mailmanageraddresslist.html#cfn-ses-mailmanageraddresslist-tags>
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerAddressList :: MailManagerAddressList
mkMailManagerAddressList
  = MailManagerAddressList
      {haddock_workaround_ = (), addressListName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MailManagerAddressList where
  toResourceProperties MailManagerAddressList {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerAddressList",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddressListName" Prelude.<$> addressListName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON MailManagerAddressList where
  toJSON MailManagerAddressList {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddressListName" Prelude.<$> addressListName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AddressListName" MailManagerAddressList where
  type PropertyType "AddressListName" MailManagerAddressList = Value Prelude.Text
  set newValue MailManagerAddressList {..}
    = MailManagerAddressList
        {addressListName = Prelude.pure newValue, ..}
instance Property "Tags" MailManagerAddressList where
  type PropertyType "Tags" MailManagerAddressList = [Tag]
  set newValue MailManagerAddressList {..}
    = MailManagerAddressList {tags = Prelude.pure newValue, ..}