module Stratosphere.SES.MailManagerRuleSet.RuleIpToEvaluateProperty (
        RuleIpToEvaluateProperty(..), mkRuleIpToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleIpToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleiptoevaluate.html>
    RuleIpToEvaluateProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleiptoevaluate.html#cfn-ses-mailmanagerruleset-ruleiptoevaluate-attribute>
                              attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleIpToEvaluateProperty ::
  Value Prelude.Text -> RuleIpToEvaluateProperty
mkRuleIpToEvaluateProperty attribute
  = RuleIpToEvaluateProperty
      {haddock_workaround_ = (), attribute = attribute}
instance ToResourceProperties RuleIpToEvaluateProperty where
  toResourceProperties RuleIpToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleIpToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON RuleIpToEvaluateProperty where
  toJSON RuleIpToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" RuleIpToEvaluateProperty where
  type PropertyType "Attribute" RuleIpToEvaluateProperty = Value Prelude.Text
  set newValue RuleIpToEvaluateProperty {..}
    = RuleIpToEvaluateProperty {attribute = newValue, ..}