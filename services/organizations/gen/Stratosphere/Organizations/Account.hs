module Stratosphere.Organizations.Account (
        Account(..), mkAccount
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Account
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-account.html>
    Account {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-account.html#cfn-organizations-account-accountname>
             accountName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-account.html#cfn-organizations-account-email>
             email :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-account.html#cfn-organizations-account-parentids>
             parentIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-account.html#cfn-organizations-account-rolename>
             roleName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-organizations-account.html#cfn-organizations-account-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccount :: Value Prelude.Text -> Value Prelude.Text -> Account
mkAccount accountName email
  = Account
      {haddock_workaround_ = (), accountName = accountName,
       email = email, parentIds = Prelude.Nothing,
       roleName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Account where
  toResourceProperties Account {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::Account",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountName" JSON..= accountName, "Email" JSON..= email]
                           (Prelude.catMaybes
                              [(JSON..=) "ParentIds" Prelude.<$> parentIds,
                               (JSON..=) "RoleName" Prelude.<$> roleName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Account where
  toJSON Account {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountName" JSON..= accountName, "Email" JSON..= email]
              (Prelude.catMaybes
                 [(JSON..=) "ParentIds" Prelude.<$> parentIds,
                  (JSON..=) "RoleName" Prelude.<$> roleName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccountName" Account where
  type PropertyType "AccountName" Account = Value Prelude.Text
  set newValue Account {..} = Account {accountName = newValue, ..}
instance Property "Email" Account where
  type PropertyType "Email" Account = Value Prelude.Text
  set newValue Account {..} = Account {email = newValue, ..}
instance Property "ParentIds" Account where
  type PropertyType "ParentIds" Account = ValueList Prelude.Text
  set newValue Account {..}
    = Account {parentIds = Prelude.pure newValue, ..}
instance Property "RoleName" Account where
  type PropertyType "RoleName" Account = Value Prelude.Text
  set newValue Account {..}
    = Account {roleName = Prelude.pure newValue, ..}
instance Property "Tags" Account where
  type PropertyType "Tags" Account = [Tag]
  set newValue Account {..}
    = Account {tags = Prelude.pure newValue, ..}