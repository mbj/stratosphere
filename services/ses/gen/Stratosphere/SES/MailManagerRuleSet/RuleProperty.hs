module Stratosphere.SES.MailManagerRuleSet.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleActionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rule.html>
    RuleProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rule.html#cfn-ses-mailmanagerruleset-rule-actions>
                  actions :: [RuleActionProperty],
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rule.html#cfn-ses-mailmanagerruleset-rule-conditions>
                  conditions :: (Prelude.Maybe [RuleConditionProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rule.html#cfn-ses-mailmanagerruleset-rule-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rule.html#cfn-ses-mailmanagerruleset-rule-unless>
                  unless :: (Prelude.Maybe [RuleConditionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: [RuleActionProperty] -> RuleProperty
mkRuleProperty actions
  = RuleProperty
      {haddock_workaround_ = (), actions = actions,
       conditions = Prelude.Nothing, name = Prelude.Nothing,
       unless = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.Rule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions]
                           (Prelude.catMaybes
                              [(JSON..=) "Conditions" Prelude.<$> conditions,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Unless" Prelude.<$> unless]))}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions]
              (Prelude.catMaybes
                 [(JSON..=) "Conditions" Prelude.<$> conditions,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Unless" Prelude.<$> unless])))
instance Property "Actions" RuleProperty where
  type PropertyType "Actions" RuleProperty = [RuleActionProperty]
  set newValue RuleProperty {..}
    = RuleProperty {actions = newValue, ..}
instance Property "Conditions" RuleProperty where
  type PropertyType "Conditions" RuleProperty = [RuleConditionProperty]
  set newValue RuleProperty {..}
    = RuleProperty {conditions = Prelude.pure newValue, ..}
instance Property "Name" RuleProperty where
  type PropertyType "Name" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {name = Prelude.pure newValue, ..}
instance Property "Unless" RuleProperty where
  type PropertyType "Unless" RuleProperty = [RuleConditionProperty]
  set newValue RuleProperty {..}
    = RuleProperty {unless = Prelude.pure newValue, ..}