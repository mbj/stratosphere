module Stratosphere.EC2.Instance.CpuOptionsProperty (
        CpuOptionsProperty(..), mkCpuOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CpuOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html>
    CpuOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-corecount>
                        coreCount :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-threadspercore>
                        threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCpuOptionsProperty :: CpuOptionsProperty
mkCpuOptionsProperty
  = CpuOptionsProperty
      {haddock_workaround_ = (), coreCount = Prelude.Nothing,
       threadsPerCore = Prelude.Nothing}
instance ToResourceProperties CpuOptionsProperty where
  toResourceProperties CpuOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.CpuOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CoreCount" Prelude.<$> coreCount,
                            (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore])}
instance JSON.ToJSON CpuOptionsProperty where
  toJSON CpuOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CoreCount" Prelude.<$> coreCount,
               (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore]))
instance Property "CoreCount" CpuOptionsProperty where
  type PropertyType "CoreCount" CpuOptionsProperty = Value Prelude.Integer
  set newValue CpuOptionsProperty {..}
    = CpuOptionsProperty {coreCount = Prelude.pure newValue, ..}
instance Property "ThreadsPerCore" CpuOptionsProperty where
  type PropertyType "ThreadsPerCore" CpuOptionsProperty = Value Prelude.Integer
  set newValue CpuOptionsProperty {..}
    = CpuOptionsProperty {threadsPerCore = Prelude.pure newValue, ..}