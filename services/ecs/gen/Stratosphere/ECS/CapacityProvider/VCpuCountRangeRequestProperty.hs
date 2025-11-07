module Stratosphere.ECS.CapacityProvider.VCpuCountRangeRequestProperty (
        VCpuCountRangeRequestProperty(..), mkVCpuCountRangeRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VCpuCountRangeRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-vcpucountrangerequest.html>
    VCpuCountRangeRequestProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-vcpucountrangerequest.html#cfn-ecs-capacityprovider-vcpucountrangerequest-max>
                                   max :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-vcpucountrangerequest.html#cfn-ecs-capacityprovider-vcpucountrangerequest-min>
                                   min :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVCpuCountRangeRequestProperty ::
  Value Prelude.Integer -> VCpuCountRangeRequestProperty
mkVCpuCountRangeRequestProperty min
  = VCpuCountRangeRequestProperty
      {haddock_workaround_ = (), min = min, max = Prelude.Nothing}
instance ToResourceProperties VCpuCountRangeRequestProperty where
  toResourceProperties VCpuCountRangeRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.VCpuCountRangeRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON VCpuCountRangeRequestProperty where
  toJSON VCpuCountRangeRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" VCpuCountRangeRequestProperty where
  type PropertyType "Max" VCpuCountRangeRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRangeRequestProperty {..}
    = VCpuCountRangeRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" VCpuCountRangeRequestProperty where
  type PropertyType "Min" VCpuCountRangeRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRangeRequestProperty {..}
    = VCpuCountRangeRequestProperty {min = newValue, ..}