module Stratosphere.Deadline.Fleet.VCpuCountRangeProperty (
        VCpuCountRangeProperty(..), mkVCpuCountRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VCpuCountRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-vcpucountrange.html>
    VCpuCountRangeProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-vcpucountrange.html#cfn-deadline-fleet-vcpucountrange-max>
                            max :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-vcpucountrange.html#cfn-deadline-fleet-vcpucountrange-min>
                            min :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVCpuCountRangeProperty ::
  Value Prelude.Integer -> VCpuCountRangeProperty
mkVCpuCountRangeProperty min
  = VCpuCountRangeProperty
      {haddock_workaround_ = (), min = min, max = Prelude.Nothing}
instance ToResourceProperties VCpuCountRangeProperty where
  toResourceProperties VCpuCountRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.VCpuCountRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON VCpuCountRangeProperty where
  toJSON VCpuCountRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" VCpuCountRangeProperty where
  type PropertyType "Max" VCpuCountRangeProperty = Value Prelude.Integer
  set newValue VCpuCountRangeProperty {..}
    = VCpuCountRangeProperty {max = Prelude.pure newValue, ..}
instance Property "Min" VCpuCountRangeProperty where
  type PropertyType "Min" VCpuCountRangeProperty = Value Prelude.Integer
  set newValue VCpuCountRangeProperty {..}
    = VCpuCountRangeProperty {min = newValue, ..}