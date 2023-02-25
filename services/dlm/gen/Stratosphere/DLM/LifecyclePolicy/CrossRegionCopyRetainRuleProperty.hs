module Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyRetainRuleProperty (
        CrossRegionCopyRetainRuleProperty(..),
        mkCrossRegionCopyRetainRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossRegionCopyRetainRuleProperty
  = CrossRegionCopyRetainRuleProperty {interval :: (Value Prelude.Integer),
                                       intervalUnit :: (Value Prelude.Text)}
mkCrossRegionCopyRetainRuleProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> CrossRegionCopyRetainRuleProperty
mkCrossRegionCopyRetainRuleProperty interval intervalUnit
  = CrossRegionCopyRetainRuleProperty
      {interval = interval, intervalUnit = intervalUnit}
instance ToResourceProperties CrossRegionCopyRetainRuleProperty where
  toResourceProperties CrossRegionCopyRetainRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CrossRegionCopyRetainRule",
         properties = ["Interval" JSON..= interval,
                       "IntervalUnit" JSON..= intervalUnit]}
instance JSON.ToJSON CrossRegionCopyRetainRuleProperty where
  toJSON CrossRegionCopyRetainRuleProperty {..}
    = JSON.object
        ["Interval" JSON..= interval, "IntervalUnit" JSON..= intervalUnit]
instance Property "Interval" CrossRegionCopyRetainRuleProperty where
  type PropertyType "Interval" CrossRegionCopyRetainRuleProperty = Value Prelude.Integer
  set newValue CrossRegionCopyRetainRuleProperty {..}
    = CrossRegionCopyRetainRuleProperty {interval = newValue, ..}
instance Property "IntervalUnit" CrossRegionCopyRetainRuleProperty where
  type PropertyType "IntervalUnit" CrossRegionCopyRetainRuleProperty = Value Prelude.Text
  set newValue CrossRegionCopyRetainRuleProperty {..}
    = CrossRegionCopyRetainRuleProperty {intervalUnit = newValue, ..}