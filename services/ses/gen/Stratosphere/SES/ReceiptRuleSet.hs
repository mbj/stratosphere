module Stratosphere.SES.ReceiptRuleSet (
        ReceiptRuleSet(..), mkReceiptRuleSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReceiptRuleSet
  = ReceiptRuleSet {ruleSetName :: (Prelude.Maybe (Value Prelude.Text))}
mkReceiptRuleSet :: ReceiptRuleSet
mkReceiptRuleSet = ReceiptRuleSet {ruleSetName = Prelude.Nothing}
instance ToResourceProperties ReceiptRuleSet where
  toResourceProperties ReceiptRuleSet {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRuleSet",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RuleSetName" Prelude.<$> ruleSetName])}
instance JSON.ToJSON ReceiptRuleSet where
  toJSON ReceiptRuleSet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RuleSetName" Prelude.<$> ruleSetName]))
instance Property "RuleSetName" ReceiptRuleSet where
  type PropertyType "RuleSetName" ReceiptRuleSet = Value Prelude.Text
  set newValue ReceiptRuleSet {}
    = ReceiptRuleSet {ruleSetName = Prelude.pure newValue, ..}