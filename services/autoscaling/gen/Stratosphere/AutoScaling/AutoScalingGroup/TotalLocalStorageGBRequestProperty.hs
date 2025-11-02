module Stratosphere.AutoScaling.AutoScalingGroup.TotalLocalStorageGBRequestProperty (
        TotalLocalStorageGBRequestProperty(..),
        mkTotalLocalStorageGBRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TotalLocalStorageGBRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-totallocalstoragegbrequest.html>
    TotalLocalStorageGBRequestProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-totallocalstoragegbrequest.html#cfn-autoscaling-autoscalinggroup-totallocalstoragegbrequest-max>
                                        max :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-totallocalstoragegbrequest.html#cfn-autoscaling-autoscalinggroup-totallocalstoragegbrequest-min>
                                        min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTotalLocalStorageGBRequestProperty ::
  TotalLocalStorageGBRequestProperty
mkTotalLocalStorageGBRequestProperty
  = TotalLocalStorageGBRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties TotalLocalStorageGBRequestProperty where
  toResourceProperties TotalLocalStorageGBRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.TotalLocalStorageGBRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON TotalLocalStorageGBRequestProperty where
  toJSON TotalLocalStorageGBRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" TotalLocalStorageGBRequestProperty where
  type PropertyType "Max" TotalLocalStorageGBRequestProperty = Value Prelude.Double
  set newValue TotalLocalStorageGBRequestProperty {..}
    = TotalLocalStorageGBRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" TotalLocalStorageGBRequestProperty where
  type PropertyType "Min" TotalLocalStorageGBRequestProperty = Value Prelude.Double
  set newValue TotalLocalStorageGBRequestProperty {..}
    = TotalLocalStorageGBRequestProperty
        {min = Prelude.pure newValue, ..}