module Stratosphere.MemoryDB.ACL (
        ACL(..), mkACL
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ACL
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-acl.html>
    ACL {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-acl.html#cfn-memorydb-acl-aclname>
         aCLName :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-acl.html#cfn-memorydb-acl-tags>
         tags :: (Prelude.Maybe [Tag]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-acl.html#cfn-memorydb-acl-usernames>
         userNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkACL :: Value Prelude.Text -> ACL
mkACL aCLName
  = ACL
      {haddock_workaround_ = (), aCLName = aCLName,
       tags = Prelude.Nothing, userNames = Prelude.Nothing}
instance ToResourceProperties ACL where
  toResourceProperties ACL {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::ACL", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ACLName" JSON..= aCLName]
                           (Prelude.catMaybes
                              [(JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserNames" Prelude.<$> userNames]))}
instance JSON.ToJSON ACL where
  toJSON ACL {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ACLName" JSON..= aCLName]
              (Prelude.catMaybes
                 [(JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserNames" Prelude.<$> userNames])))
instance Property "ACLName" ACL where
  type PropertyType "ACLName" ACL = Value Prelude.Text
  set newValue ACL {..} = ACL {aCLName = newValue, ..}
instance Property "Tags" ACL where
  type PropertyType "Tags" ACL = [Tag]
  set newValue ACL {..} = ACL {tags = Prelude.pure newValue, ..}
instance Property "UserNames" ACL where
  type PropertyType "UserNames" ACL = ValueList Prelude.Text
  set newValue ACL {..} = ACL {userNames = Prelude.pure newValue, ..}