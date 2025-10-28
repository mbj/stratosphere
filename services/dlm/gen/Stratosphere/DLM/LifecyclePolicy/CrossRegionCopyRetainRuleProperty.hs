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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html>
    CrossRegionCopyRetainRuleProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-interval>
                                       interval :: (Value Prelude.Integer),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-intervalunit>
                                       intervalUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCrossRegionCopyRetainRuleProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> CrossRegionCopyRetainRuleProperty
mkCrossRegionCopyRetainRuleProperty interval intervalUnit
  = CrossRegionCopyRetainRuleProperty
      {haddock_workaround_ = (), interval = interval,
       intervalUnit = intervalUnit}
instance ToResourceProperties CrossRegionCopyRetainRuleProperty where
  toResourceProperties CrossRegionCopyRetainRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.CrossRegionCopyRetainRule",
         supportsTags = Prelude.False,
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