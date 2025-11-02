module Stratosphere.Invoicing.InvoiceUnit.RuleProperty (
        RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-invoicing-invoiceunit-rule.html>
    RuleProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-invoicing-invoiceunit-rule.html#cfn-invoicing-invoiceunit-rule-linkedaccounts>
                  linkedAccounts :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: ValueList Prelude.Text -> RuleProperty
mkRuleProperty linkedAccounts
  = RuleProperty
      {haddock_workaround_ = (), linkedAccounts = linkedAccounts}
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
  set newValue RuleProperty {..}
    = RuleProperty {linkedAccounts = newValue, ..}