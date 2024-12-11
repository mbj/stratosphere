module Stratosphere.SES.MailManagerRuleSet.RuleIpToEvaluateProperty (
        RuleIpToEvaluateProperty(..), mkRuleIpToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleIpToEvaluateProperty
  = RuleIpToEvaluateProperty {attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleIpToEvaluateProperty ::
  Value Prelude.Text -> RuleIpToEvaluateProperty
mkRuleIpToEvaluateProperty attribute
  = RuleIpToEvaluateProperty {attribute = attribute}
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
  set newValue RuleIpToEvaluateProperty {}
    = RuleIpToEvaluateProperty {attribute = newValue, ..}