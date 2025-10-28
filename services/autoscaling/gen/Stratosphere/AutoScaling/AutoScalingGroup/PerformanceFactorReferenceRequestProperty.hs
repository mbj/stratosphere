module Stratosphere.AutoScaling.AutoScalingGroup.PerformanceFactorReferenceRequestProperty (
        PerformanceFactorReferenceRequestProperty(..),
        mkPerformanceFactorReferenceRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PerformanceFactorReferenceRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-performancefactorreferencerequest.html>
    PerformanceFactorReferenceRequestProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-performancefactorreferencerequest.html#cfn-autoscaling-autoscalinggroup-performancefactorreferencerequest-instancefamily>
                                               instanceFamily :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPerformanceFactorReferenceRequestProperty ::
  PerformanceFactorReferenceRequestProperty
mkPerformanceFactorReferenceRequestProperty
  = PerformanceFactorReferenceRequestProperty
      {haddock_workaround_ = (), instanceFamily = Prelude.Nothing}
instance ToResourceProperties PerformanceFactorReferenceRequestProperty where
  toResourceProperties PerformanceFactorReferenceRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.PerformanceFactorReferenceRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceFamily" Prelude.<$> instanceFamily])}
instance JSON.ToJSON PerformanceFactorReferenceRequestProperty where
  toJSON PerformanceFactorReferenceRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceFamily" Prelude.<$> instanceFamily]))
instance Property "InstanceFamily" PerformanceFactorReferenceRequestProperty where
  type PropertyType "InstanceFamily" PerformanceFactorReferenceRequestProperty = Value Prelude.Text
  set newValue PerformanceFactorReferenceRequestProperty {..}
    = PerformanceFactorReferenceRequestProperty
        {instanceFamily = Prelude.pure newValue, ..}