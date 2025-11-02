module Stratosphere.SES.MailManagerRuleSet.RuleConditionProperty (
        module Exports, RuleConditionProperty(..), mkRuleConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleBooleanExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleDmarcExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleIpExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleNumberExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleStringExpressionProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleVerdictExpressionProperty as Exports
import Stratosphere.ResourceProperties
data RuleConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html>
    RuleConditionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-booleanexpression>
                           booleanExpression :: (Prelude.Maybe RuleBooleanExpressionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-dmarcexpression>
                           dmarcExpression :: (Prelude.Maybe RuleDmarcExpressionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-ipexpression>
                           ipExpression :: (Prelude.Maybe RuleIpExpressionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-numberexpression>
                           numberExpression :: (Prelude.Maybe RuleNumberExpressionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-stringexpression>
                           stringExpression :: (Prelude.Maybe RuleStringExpressionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulecondition.html#cfn-ses-mailmanagerruleset-rulecondition-verdictexpression>
                           verdictExpression :: (Prelude.Maybe RuleVerdictExpressionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleConditionProperty :: RuleConditionProperty
mkRuleConditionProperty
  = RuleConditionProperty
      {haddock_workaround_ = (), booleanExpression = Prelude.Nothing,
       dmarcExpression = Prelude.Nothing, ipExpression = Prelude.Nothing,
       numberExpression = Prelude.Nothing,
       stringExpression = Prelude.Nothing,
       verdictExpression = Prelude.Nothing}
instance ToResourceProperties RuleConditionProperty where
  toResourceProperties RuleConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleCondition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BooleanExpression" Prelude.<$> booleanExpression,
                            (JSON..=) "DmarcExpression" Prelude.<$> dmarcExpression,
                            (JSON..=) "IpExpression" Prelude.<$> ipExpression,
                            (JSON..=) "NumberExpression" Prelude.<$> numberExpression,
                            (JSON..=) "StringExpression" Prelude.<$> stringExpression,
                            (JSON..=) "VerdictExpression" Prelude.<$> verdictExpression])}
instance JSON.ToJSON RuleConditionProperty where
  toJSON RuleConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BooleanExpression" Prelude.<$> booleanExpression,
               (JSON..=) "DmarcExpression" Prelude.<$> dmarcExpression,
               (JSON..=) "IpExpression" Prelude.<$> ipExpression,
               (JSON..=) "NumberExpression" Prelude.<$> numberExpression,
               (JSON..=) "StringExpression" Prelude.<$> stringExpression,
               (JSON..=) "VerdictExpression" Prelude.<$> verdictExpression]))
instance Property "BooleanExpression" RuleConditionProperty where
  type PropertyType "BooleanExpression" RuleConditionProperty = RuleBooleanExpressionProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {booleanExpression = Prelude.pure newValue, ..}
instance Property "DmarcExpression" RuleConditionProperty where
  type PropertyType "DmarcExpression" RuleConditionProperty = RuleDmarcExpressionProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {dmarcExpression = Prelude.pure newValue, ..}
instance Property "IpExpression" RuleConditionProperty where
  type PropertyType "IpExpression" RuleConditionProperty = RuleIpExpressionProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty {ipExpression = Prelude.pure newValue, ..}
instance Property "NumberExpression" RuleConditionProperty where
  type PropertyType "NumberExpression" RuleConditionProperty = RuleNumberExpressionProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {numberExpression = Prelude.pure newValue, ..}
instance Property "StringExpression" RuleConditionProperty where
  type PropertyType "StringExpression" RuleConditionProperty = RuleStringExpressionProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {stringExpression = Prelude.pure newValue, ..}
instance Property "VerdictExpression" RuleConditionProperty where
  type PropertyType "VerdictExpression" RuleConditionProperty = RuleVerdictExpressionProperty
  set newValue RuleConditionProperty {..}
    = RuleConditionProperty
        {verdictExpression = Prelude.pure newValue, ..}