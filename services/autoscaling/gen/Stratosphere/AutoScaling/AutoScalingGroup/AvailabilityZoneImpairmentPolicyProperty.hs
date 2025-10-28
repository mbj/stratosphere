module Stratosphere.AutoScaling.AutoScalingGroup.AvailabilityZoneImpairmentPolicyProperty (
        AvailabilityZoneImpairmentPolicyProperty(..),
        mkAvailabilityZoneImpairmentPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailabilityZoneImpairmentPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-availabilityzoneimpairmentpolicy.html>
    AvailabilityZoneImpairmentPolicyProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-availabilityzoneimpairmentpolicy.html#cfn-autoscaling-autoscalinggroup-availabilityzoneimpairmentpolicy-impairedzonehealthcheckbehavior>
                                              impairedZoneHealthCheckBehavior :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-availabilityzoneimpairmentpolicy.html#cfn-autoscaling-autoscalinggroup-availabilityzoneimpairmentpolicy-zonalshiftenabled>
                                              zonalShiftEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailabilityZoneImpairmentPolicyProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> AvailabilityZoneImpairmentPolicyProperty
mkAvailabilityZoneImpairmentPolicyProperty
  impairedZoneHealthCheckBehavior
  zonalShiftEnabled
  = AvailabilityZoneImpairmentPolicyProperty
      {haddock_workaround_ = (),
       impairedZoneHealthCheckBehavior = impairedZoneHealthCheckBehavior,
       zonalShiftEnabled = zonalShiftEnabled}
instance ToResourceProperties AvailabilityZoneImpairmentPolicyProperty where
  toResourceProperties AvailabilityZoneImpairmentPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.AvailabilityZoneImpairmentPolicy",
         supportsTags = Prelude.False,
         properties = ["ImpairedZoneHealthCheckBehavior"
                         JSON..= impairedZoneHealthCheckBehavior,
                       "ZonalShiftEnabled" JSON..= zonalShiftEnabled]}
instance JSON.ToJSON AvailabilityZoneImpairmentPolicyProperty where
  toJSON AvailabilityZoneImpairmentPolicyProperty {..}
    = JSON.object
        ["ImpairedZoneHealthCheckBehavior"
           JSON..= impairedZoneHealthCheckBehavior,
         "ZonalShiftEnabled" JSON..= zonalShiftEnabled]
instance Property "ImpairedZoneHealthCheckBehavior" AvailabilityZoneImpairmentPolicyProperty where
  type PropertyType "ImpairedZoneHealthCheckBehavior" AvailabilityZoneImpairmentPolicyProperty = Value Prelude.Text
  set newValue AvailabilityZoneImpairmentPolicyProperty {..}
    = AvailabilityZoneImpairmentPolicyProperty
        {impairedZoneHealthCheckBehavior = newValue, ..}
instance Property "ZonalShiftEnabled" AvailabilityZoneImpairmentPolicyProperty where
  type PropertyType "ZonalShiftEnabled" AvailabilityZoneImpairmentPolicyProperty = Value Prelude.Bool
  set newValue AvailabilityZoneImpairmentPolicyProperty {..}
    = AvailabilityZoneImpairmentPolicyProperty
        {zonalShiftEnabled = newValue, ..}