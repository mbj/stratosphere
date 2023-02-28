module Stratosphere.AutoScaling.AutoScalingGroup.TagPropertyProperty (
        TagPropertyProperty(..), mkTagPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagPropertyProperty
  = TagPropertyProperty {key :: (Value Prelude.Text),
                         propagateAtLaunch :: (Value Prelude.Bool),
                         value :: (Value Prelude.Text)}
mkTagPropertyProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> Value Prelude.Text -> TagPropertyProperty
mkTagPropertyProperty key propagateAtLaunch value
  = TagPropertyProperty
      {key = key, propagateAtLaunch = propagateAtLaunch, value = value}
instance ToResourceProperties TagPropertyProperty where
  toResourceProperties TagPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.TagProperty",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key,
                       "PropagateAtLaunch" JSON..= propagateAtLaunch,
                       "Value" JSON..= value]}
instance JSON.ToJSON TagPropertyProperty where
  toJSON TagPropertyProperty {..}
    = JSON.object
        ["Key" JSON..= key, "PropagateAtLaunch" JSON..= propagateAtLaunch,
         "Value" JSON..= value]
instance Property "Key" TagPropertyProperty where
  type PropertyType "Key" TagPropertyProperty = Value Prelude.Text
  set newValue TagPropertyProperty {..}
    = TagPropertyProperty {key = newValue, ..}
instance Property "PropagateAtLaunch" TagPropertyProperty where
  type PropertyType "PropagateAtLaunch" TagPropertyProperty = Value Prelude.Bool
  set newValue TagPropertyProperty {..}
    = TagPropertyProperty {propagateAtLaunch = newValue, ..}
instance Property "Value" TagPropertyProperty where
  type PropertyType "Value" TagPropertyProperty = Value Prelude.Text
  set newValue TagPropertyProperty {..}
    = TagPropertyProperty {value = newValue, ..}