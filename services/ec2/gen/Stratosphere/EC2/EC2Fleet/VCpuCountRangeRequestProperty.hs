module Stratosphere.EC2.EC2Fleet.VCpuCountRangeRequestProperty (
        VCpuCountRangeRequestProperty(..), mkVCpuCountRangeRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VCpuCountRangeRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-vcpucountrangerequest.html>
    VCpuCountRangeRequestProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-vcpucountrangerequest.html#cfn-ec2-ec2fleet-vcpucountrangerequest-max>
                                   max :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-vcpucountrangerequest.html#cfn-ec2-ec2fleet-vcpucountrangerequest-min>
                                   min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVCpuCountRangeRequestProperty :: VCpuCountRangeRequestProperty
mkVCpuCountRangeRequestProperty
  = VCpuCountRangeRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties VCpuCountRangeRequestProperty where
  toResourceProperties VCpuCountRangeRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.VCpuCountRangeRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON VCpuCountRangeRequestProperty where
  toJSON VCpuCountRangeRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" VCpuCountRangeRequestProperty where
  type PropertyType "Max" VCpuCountRangeRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRangeRequestProperty {..}
    = VCpuCountRangeRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" VCpuCountRangeRequestProperty where
  type PropertyType "Min" VCpuCountRangeRequestProperty = Value Prelude.Integer
  set newValue VCpuCountRangeRequestProperty {..}
    = VCpuCountRangeRequestProperty {min = Prelude.pure newValue, ..}