module Stratosphere.SES.MailManagerRuleSet.RuleDmarcExpressionProperty (
        RuleDmarcExpressionProperty(..), mkRuleDmarcExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleDmarcExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruledmarcexpression.html>
    RuleDmarcExpressionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruledmarcexpression.html#cfn-ses-mailmanagerruleset-ruledmarcexpression-operator>
                                 operator :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruledmarcexpression.html#cfn-ses-mailmanagerruleset-ruledmarcexpression-values>
                                 values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleDmarcExpressionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> RuleDmarcExpressionProperty
mkRuleDmarcExpressionProperty operator values
  = RuleDmarcExpressionProperty
      {haddock_workaround_ = (), operator = operator, values = values}
instance ToResourceProperties RuleDmarcExpressionProperty where
  toResourceProperties RuleDmarcExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleDmarcExpression",
         supportsTags = Prelude.False,
         properties = ["Operator" JSON..= operator,
                       "Values" JSON..= values]}
instance JSON.ToJSON RuleDmarcExpressionProperty where
  toJSON RuleDmarcExpressionProperty {..}
    = JSON.object
        ["Operator" JSON..= operator, "Values" JSON..= values]
instance Property "Operator" RuleDmarcExpressionProperty where
  type PropertyType "Operator" RuleDmarcExpressionProperty = Value Prelude.Text
  set newValue RuleDmarcExpressionProperty {..}
    = RuleDmarcExpressionProperty {operator = newValue, ..}
instance Property "Values" RuleDmarcExpressionProperty where
  type PropertyType "Values" RuleDmarcExpressionProperty = ValueList Prelude.Text
  set newValue RuleDmarcExpressionProperty {..}
    = RuleDmarcExpressionProperty {values = newValue, ..}