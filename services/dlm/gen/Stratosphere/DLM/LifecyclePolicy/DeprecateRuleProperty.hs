module Stratosphere.DLM.LifecyclePolicy.DeprecateRuleProperty (
        DeprecateRuleProperty(..), mkDeprecateRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeprecateRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-deprecaterule.html>
    DeprecateRuleProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-deprecaterule.html#cfn-dlm-lifecyclepolicy-deprecaterule-count>
                           count :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-deprecaterule.html#cfn-dlm-lifecyclepolicy-deprecaterule-interval>
                           interval :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-deprecaterule.html#cfn-dlm-lifecyclepolicy-deprecaterule-intervalunit>
                           intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeprecateRuleProperty :: DeprecateRuleProperty
mkDeprecateRuleProperty
  = DeprecateRuleProperty
      {haddock_workaround_ = (), count = Prelude.Nothing,
       interval = Prelude.Nothing, intervalUnit = Prelude.Nothing}
instance ToResourceProperties DeprecateRuleProperty where
  toResourceProperties DeprecateRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.DeprecateRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON DeprecateRuleProperty where
  toJSON DeprecateRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "Count" DeprecateRuleProperty where
  type PropertyType "Count" DeprecateRuleProperty = Value Prelude.Integer
  set newValue DeprecateRuleProperty {..}
    = DeprecateRuleProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" DeprecateRuleProperty where
  type PropertyType "Interval" DeprecateRuleProperty = Value Prelude.Integer
  set newValue DeprecateRuleProperty {..}
    = DeprecateRuleProperty {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" DeprecateRuleProperty where
  type PropertyType "IntervalUnit" DeprecateRuleProperty = Value Prelude.Text
  set newValue DeprecateRuleProperty {..}
    = DeprecateRuleProperty {intervalUnit = Prelude.pure newValue, ..}