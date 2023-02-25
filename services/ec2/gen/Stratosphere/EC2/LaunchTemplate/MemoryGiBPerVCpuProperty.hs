module Stratosphere.EC2.LaunchTemplate.MemoryGiBPerVCpuProperty (
        MemoryGiBPerVCpuProperty(..), mkMemoryGiBPerVCpuProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryGiBPerVCpuProperty
  = MemoryGiBPerVCpuProperty {max :: (Prelude.Maybe (Value Prelude.Double)),
                              min :: (Prelude.Maybe (Value Prelude.Double))}
mkMemoryGiBPerVCpuProperty :: MemoryGiBPerVCpuProperty
mkMemoryGiBPerVCpuProperty
  = MemoryGiBPerVCpuProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties MemoryGiBPerVCpuProperty where
  toResourceProperties MemoryGiBPerVCpuProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.MemoryGiBPerVCpu",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON MemoryGiBPerVCpuProperty where
  toJSON MemoryGiBPerVCpuProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" MemoryGiBPerVCpuProperty where
  type PropertyType "Max" MemoryGiBPerVCpuProperty = Value Prelude.Double
  set newValue MemoryGiBPerVCpuProperty {..}
    = MemoryGiBPerVCpuProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryGiBPerVCpuProperty where
  type PropertyType "Min" MemoryGiBPerVCpuProperty = Value Prelude.Double
  set newValue MemoryGiBPerVCpuProperty {..}
    = MemoryGiBPerVCpuProperty {min = Prelude.pure newValue, ..}