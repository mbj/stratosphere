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
  = Account {accountName :: (Value Prelude.Text),
             email :: (Value Prelude.Text),
             parentIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             roleName :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe [Tag])}
mkAccount :: Value Prelude.Text -> Value Prelude.Text -> Account
mkAccount accountName email
  = Account
      {accountName = accountName, email = email,
       parentIds = Prelude.Nothing, roleName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Account where
  toResourceProperties Account {..}
    = ResourceProperties
        {awsType = "AWS::Organizations::Account",
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