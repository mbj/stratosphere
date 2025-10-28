module Stratosphere.DLM.LifecyclePolicy.RetainRuleProperty (
        RetainRuleProperty(..), mkRetainRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetainRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html>
    RetainRuleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-count>
                        count :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-interval>
                        interval :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-intervalunit>
                        intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetainRuleProperty :: RetainRuleProperty
mkRetainRuleProperty
  = RetainRuleProperty
      {haddock_workaround_ = (), count = Prelude.Nothing,
       interval = Prelude.Nothing, intervalUnit = Prelude.Nothing}
instance ToResourceProperties RetainRuleProperty where
  toResourceProperties RetainRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.RetainRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON RetainRuleProperty where
  toJSON RetainRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "Count" RetainRuleProperty where
  type PropertyType "Count" RetainRuleProperty = Value Prelude.Integer
  set newValue RetainRuleProperty {..}
    = RetainRuleProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" RetainRuleProperty where
  type PropertyType "Interval" RetainRuleProperty = Value Prelude.Integer
  set newValue RetainRuleProperty {..}
    = RetainRuleProperty {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" RetainRuleProperty where
  type PropertyType "IntervalUnit" RetainRuleProperty = Value Prelude.Text
  set newValue RetainRuleProperty {..}
    = RetainRuleProperty {intervalUnit = Prelude.pure newValue, ..}