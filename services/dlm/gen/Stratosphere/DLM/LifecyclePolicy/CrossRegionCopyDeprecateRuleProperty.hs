module Stratosphere.DLM.LifecyclePolicy.CrossRegionCopyDeprecateRuleProperty (
        CrossRegionCopyDeprecateRuleProperty(..),
        mkCrossRegionCopyDeprecateRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CrossRegionCopyDeprecateRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopydeprecaterule.html>
    CrossRegionCopyDeprecateRuleProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopydeprecaterule.html#cfn-dlm-lifecyclepolicy-crossregioncopydeprecaterule-interval>
                                          interval :: (Value Prelude.Integer),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopydeprecaterule.html#cfn-dlm-lifecyclepolicy-crossregioncopydeprecaterule-intervalunit>
                                          intervalUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossRegionCopyDeprecateRuleProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> CrossRegionCopyDeprecateRuleProperty
mkCrossRegionCopyDeprecateRuleProperty interval intervalUnit
  = CrossRegionCopyDeprecateRuleProperty
      {haddock_workaround_ = (), interval = interval,
       intervalUnit = intervalUnit}
instance ToResourceProperties CrossRegionCopyDeprecateRuleProperty where
  toResourceProperties CrossRegionCopyDeprecateRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CrossRegionCopyDeprecateRule",
         supportsTags = Prelude.False,
         properties = ["Interval" JSON..= interval,
                       "IntervalUnit" JSON..= intervalUnit]}
instance JSON.ToJSON CrossRegionCopyDeprecateRuleProperty where
  toJSON CrossRegionCopyDeprecateRuleProperty {..}
    = JSON.object
        ["Interval" JSON..= interval, "IntervalUnit" JSON..= intervalUnit]
instance Property "Interval" CrossRegionCopyDeprecateRuleProperty where
  type PropertyType "Interval" CrossRegionCopyDeprecateRuleProperty = Value Prelude.Integer
  set newValue CrossRegionCopyDeprecateRuleProperty {..}
    = CrossRegionCopyDeprecateRuleProperty {interval = newValue, ..}
instance Property "IntervalUnit" CrossRegionCopyDeprecateRuleProperty where
  type PropertyType "IntervalUnit" CrossRegionCopyDeprecateRuleProperty = Value Prelude.Text
  set newValue CrossRegionCopyDeprecateRuleProperty {..}
    = CrossRegionCopyDeprecateRuleProperty
        {intervalUnit = newValue, ..}