module Stratosphere.DLM.LifecyclePolicy.FastRestoreRuleProperty (
        FastRestoreRuleProperty(..), mkFastRestoreRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FastRestoreRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html>
    FastRestoreRuleProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-availabilityzones>
                             availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-count>
                             count :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-interval>
                             interval :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-intervalunit>
                             intervalUnit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFastRestoreRuleProperty :: FastRestoreRuleProperty
mkFastRestoreRuleProperty
  = FastRestoreRuleProperty
      {haddock_workaround_ = (), availabilityZones = Prelude.Nothing,
       count = Prelude.Nothing, interval = Prelude.Nothing,
       intervalUnit = Prelude.Nothing}
instance ToResourceProperties FastRestoreRuleProperty where
  toResourceProperties FastRestoreRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.FastRestoreRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                            (JSON..=) "Count" Prelude.<$> count,
                            (JSON..=) "Interval" Prelude.<$> interval,
                            (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit])}
instance JSON.ToJSON FastRestoreRuleProperty where
  toJSON FastRestoreRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
               (JSON..=) "Count" Prelude.<$> count,
               (JSON..=) "Interval" Prelude.<$> interval,
               (JSON..=) "IntervalUnit" Prelude.<$> intervalUnit]))
instance Property "AvailabilityZones" FastRestoreRuleProperty where
  type PropertyType "AvailabilityZones" FastRestoreRuleProperty = ValueList Prelude.Text
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty
        {availabilityZones = Prelude.pure newValue, ..}
instance Property "Count" FastRestoreRuleProperty where
  type PropertyType "Count" FastRestoreRuleProperty = Value Prelude.Integer
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty {count = Prelude.pure newValue, ..}
instance Property "Interval" FastRestoreRuleProperty where
  type PropertyType "Interval" FastRestoreRuleProperty = Value Prelude.Integer
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty {interval = Prelude.pure newValue, ..}
instance Property "IntervalUnit" FastRestoreRuleProperty where
  type PropertyType "IntervalUnit" FastRestoreRuleProperty = Value Prelude.Text
  set newValue FastRestoreRuleProperty {..}
    = FastRestoreRuleProperty
        {intervalUnit = Prelude.pure newValue, ..}