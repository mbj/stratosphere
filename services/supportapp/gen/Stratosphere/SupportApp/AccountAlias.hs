module Stratosphere.SupportApp.AccountAlias (
        AccountAlias(..), mkAccountAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountAlias
  = AccountAlias {accountAlias :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountAlias :: Value Prelude.Text -> AccountAlias
mkAccountAlias accountAlias
  = AccountAlias {accountAlias = accountAlias}
instance ToResourceProperties AccountAlias where
  toResourceProperties AccountAlias {..}
    = ResourceProperties
        {awsType = "AWS::SupportApp::AccountAlias",
         supportsTags = Prelude.False,
         properties = ["AccountAlias" JSON..= accountAlias]}
instance JSON.ToJSON AccountAlias where
  toJSON AccountAlias {..}
    = JSON.object ["AccountAlias" JSON..= accountAlias]
instance Property "AccountAlias" AccountAlias where
  type PropertyType "AccountAlias" AccountAlias = Value Prelude.Text
  set newValue AccountAlias {}
    = AccountAlias {accountAlias = newValue, ..}