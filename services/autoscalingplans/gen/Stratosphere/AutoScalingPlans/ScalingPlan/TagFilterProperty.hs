module Stratosphere.AutoScalingPlans.ScalingPlan.TagFilterProperty (
        TagFilterProperty(..), mkTagFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagFilterProperty
  = TagFilterProperty {key :: (Value Prelude.Text),
                       values :: (Prelude.Maybe (ValueList Prelude.Text))}
mkTagFilterProperty :: Value Prelude.Text -> TagFilterProperty
mkTagFilterProperty key
  = TagFilterProperty {key = key, values = Prelude.Nothing}
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