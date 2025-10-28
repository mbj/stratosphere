module Stratosphere.EC2.EC2Fleet.MemoryGiBPerVCpuRequestProperty (
        MemoryGiBPerVCpuRequestProperty(..),
        mkMemoryGiBPerVCpuRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryGiBPerVCpuRequestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-memorygibpervcpurequest.html>
    MemoryGiBPerVCpuRequestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-memorygibpervcpurequest.html#cfn-ec2-ec2fleet-memorygibpervcpurequest-max>
                                     max :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-memorygibpervcpurequest.html#cfn-ec2-ec2fleet-memorygibpervcpurequest-min>
                                     min :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryGiBPerVCpuRequestProperty ::
  MemoryGiBPerVCpuRequestProperty
mkMemoryGiBPerVCpuRequestProperty
  = MemoryGiBPerVCpuRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties MemoryGiBPerVCpuRequestProperty where
  toResourceProperties MemoryGiBPerVCpuRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.MemoryGiBPerVCpuRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON MemoryGiBPerVCpuRequestProperty where
  toJSON MemoryGiBPerVCpuRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" MemoryGiBPerVCpuRequestProperty where
  type PropertyType "Max" MemoryGiBPerVCpuRequestProperty = Value Prelude.Double
  set newValue MemoryGiBPerVCpuRequestProperty {..}
    = MemoryGiBPerVCpuRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryGiBPerVCpuRequestProperty where
  type PropertyType "Min" MemoryGiBPerVCpuRequestProperty = Value Prelude.Double
  set newValue MemoryGiBPerVCpuRequestProperty {..}
    = MemoryGiBPerVCpuRequestProperty {min = Prelude.pure newValue, ..}