module Stratosphere.AutoScalingPlans.ScalingPlan.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html>
    TagFilterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-key>
                       key :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-values>
                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagFilterProperty :: Value Prelude.Text -> TagFilterProperty
mkTagFilterProperty key
  = TagFilterProperty
      {haddock_workaround_ = (), key = key, values = Prelude.Nothing}
instance ToResourceProperties TagFilterProperty where
  toResourceProperties TagFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.TagFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Key" JSON..= key]
                           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))}
instance JSON.ToJSON TagFilterProperty where
  toJSON TagFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Key" JSON..= key]
              (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])))
instance Property "Key" TagFilterProperty where
  type PropertyType "Key" TagFilterProperty = Value Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {key = newValue, ..}
instance Property "Values" TagFilterProperty where
  type PropertyType "Values" TagFilterProperty = ValueList Prelude.Text
  set newValue TagFilterProperty {..}
    = TagFilterProperty {values = Prelude.pure newValue, ..}