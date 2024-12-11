module Stratosphere.SES.MailManagerRuleSet (
        module Exports, MailManagerRuleSet(..), mkMailManagerRuleSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MailManagerRuleSet
  = MailManagerRuleSet {ruleSetName :: (Prelude.Maybe (Value Prelude.Text)),
                        rules :: [RuleProperty],
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMailManagerRuleSet :: [RuleProperty] -> MailManagerRuleSet
mkMailManagerRuleSet rules
  = MailManagerRuleSet
      {rules = rules, ruleSetName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MailManagerRuleSet where
  toResourceProperties MailManagerRuleSet {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "RuleSetName" Prelude.<$> ruleSetName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MailManagerRuleSet where
  toJSON MailManagerRuleSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "RuleSetName" Prelude.<$> ruleSetName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "RuleSetName" MailManagerRuleSet where
  type PropertyType "RuleSetName" MailManagerRuleSet = Value Prelude.Text
  set newValue MailManagerRuleSet {..}
    = MailManagerRuleSet {ruleSetName = Prelude.pure newValue, ..}
instance Property "Rules" MailManagerRuleSet where
  type PropertyType "Rules" MailManagerRuleSet = [RuleProperty]
  set newValue MailManagerRuleSet {..}
    = MailManagerRuleSet {rules = newValue, ..}
instance Property "Tags" MailManagerRuleSet where
  type PropertyType "Tags" MailManagerRuleSet = [Tag]
  set newValue MailManagerRuleSet {..}
    = MailManagerRuleSet {tags = Prelude.pure newValue, ..}