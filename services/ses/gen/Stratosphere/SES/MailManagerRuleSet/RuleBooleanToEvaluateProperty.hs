module Stratosphere.SES.MailManagerRuleSet.RuleBooleanToEvaluateProperty (
        RuleBooleanToEvaluateProperty(..), mkRuleBooleanToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleBooleanToEvaluateProperty
  = RuleBooleanToEvaluateProperty {attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleBooleanToEvaluateProperty ::
  Value Prelude.Text -> RuleBooleanToEvaluateProperty
mkRuleBooleanToEvaluateProperty attribute
  = RuleBooleanToEvaluateProperty {attribute = attribute}
instance ToResourceProperties RuleBooleanToEvaluateProperty where
  toResourceProperties RuleBooleanToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleBooleanToEvaluate",
         supportsTags = Prelude.False,
         properties = ["Attribute" JSON..= attribute]}
instance JSON.ToJSON RuleBooleanToEvaluateProperty where
  toJSON RuleBooleanToEvaluateProperty {..}
    = JSON.object ["Attribute" JSON..= attribute]
instance Property "Attribute" RuleBooleanToEvaluateProperty where
  type PropertyType "Attribute" RuleBooleanToEvaluateProperty = Value Prelude.Text
  set newValue RuleBooleanToEvaluateProperty {}
    = RuleBooleanToEvaluateProperty {attribute = newValue, ..}