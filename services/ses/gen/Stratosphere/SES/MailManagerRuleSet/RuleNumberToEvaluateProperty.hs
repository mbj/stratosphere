module Stratosphere.SES.MailManagerRuleSet.RuleNumberToEvaluateProperty (
        RuleNumberToEvaluateProperty(..), mkRuleNumberToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleNumberToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulenumbertoevaluate.html>
    RuleNumberToEvaluateProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulenumbertoevaluate.html#cfn-ses-mailmanagerruleset-rulenumbertoevaluate-attribute>
                                  attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleNumberToEvaluateProperty ::
  Value Prelude.Text -> RuleNumberToEvaluateProperty
mkRuleNumberToEvaluateProperty attribute
  = RuleNumberToEvaluateProperty
      {haddock_workaround_ = (), attribute = attribute}
instance ToResourceProperties RuleNumberToEvaluateProperty where
  toResourceProperties RuleNumberToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleNumberToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON RuleNumberToEvaluateProperty where
  toJSON RuleNumberToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" RuleNumberToEvaluateProperty where
  type PropertyType "Attribute" RuleNumberToEvaluateProperty = Value Prelude.Text
  set newValue RuleNumberToEvaluateProperty {..}
    = RuleNumberToEvaluateProperty {attribute = newValue, ..}