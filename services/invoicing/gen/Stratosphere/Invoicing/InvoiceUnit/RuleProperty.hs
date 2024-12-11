module Stratosphere.Invoicing.InvoiceUnit.RuleProperty (
        RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {linkedAccounts :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: ValueList Prelude.Text -> RuleProperty
mkRuleProperty linkedAccounts
  = RuleProperty {linkedAccounts = linkedAccounts}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Invoicing::InvoiceUnit.Rule",
         supportsTags = Prelude.False,
         properties = ["LinkedAccounts" JSON..= linkedAccounts]}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object ["LinkedAccounts" JSON..= linkedAccounts]
instance Property "LinkedAccounts" RuleProperty where
  type PropertyType "LinkedAccounts" RuleProperty = ValueList Prelude.Text
  set newValue RuleProperty {}
    = RuleProperty {linkedAccounts = newValue, ..}