module Stratosphere.SES.ContactList (
        module Exports, ContactList(..), mkContactList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ContactList.TopicProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ContactList
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-contactlist.html>
    ContactList {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-contactlist.html#cfn-ses-contactlist-contactlistname>
                 contactListName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-contactlist.html#cfn-ses-contactlist-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-contactlist.html#cfn-ses-contactlist-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-contactlist.html#cfn-ses-contactlist-topics>
                 topics :: (Prelude.Maybe [TopicProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContactList :: ContactList
mkContactList
  = ContactList
      {haddock_workaround_ = (), contactListName = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing,
       topics = Prelude.Nothing}
instance ToResourceProperties ContactList where
  toResourceProperties ContactList {..}
    = ResourceProperties
        {awsType = "AWS::SES::ContactList", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContactListName" Prelude.<$> contactListName,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Topics" Prelude.<$> topics])}
instance JSON.ToJSON ContactList where
  toJSON ContactList {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContactListName" Prelude.<$> contactListName,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Topics" Prelude.<$> topics]))
instance Property "ContactListName" ContactList where
  type PropertyType "ContactListName" ContactList = Value Prelude.Text
  set newValue ContactList {..}
    = ContactList {contactListName = Prelude.pure newValue, ..}
instance Property "Description" ContactList where
  type PropertyType "Description" ContactList = Value Prelude.Text
  set newValue ContactList {..}
    = ContactList {description = Prelude.pure newValue, ..}
instance Property "Tags" ContactList where
  type PropertyType "Tags" ContactList = [Tag]
  set newValue ContactList {..}
    = ContactList {tags = Prelude.pure newValue, ..}
instance Property "Topics" ContactList where
  type PropertyType "Topics" ContactList = [TopicProperty]
  set newValue ContactList {..}
    = ContactList {topics = Prelude.pure newValue, ..}