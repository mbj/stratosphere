module Stratosphere.EC2.LaunchTemplate.CpuOptionsProperty (
        CpuOptionsProperty(..), mkCpuOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CpuOptionsProperty
  = CpuOptionsProperty {amdSevSnp :: (Prelude.Maybe (Value Prelude.Text)),
                        coreCount :: (Prelude.Maybe (Value Prelude.Integer)),
                        threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer))}
mkCpuOptionsProperty :: CpuOptionsProperty
mkCpuOptionsProperty
  = CpuOptionsProperty
      {amdSevSnp = Prelude.Nothing, coreCount = Prelude.Nothing,
       threadsPerCore = Prelude.Nothing}
instance ToResourceProperties CpuOptionsProperty where
  toResourceProperties CpuOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.CpuOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AmdSevSnp" Prelude.<$> amdSevSnp,
                            (JSON..=) "CoreCount" Prelude.<$> coreCount,
                            (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore])}
instance JSON.ToJSON CpuOptionsProperty where
  toJSON CpuOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AmdSevSnp" Prelude.<$> amdSevSnp,
               (JSON..=) "CoreCount" Prelude.<$> coreCount,
               (JSON..=) "ThreadsPerCore" Prelude.<$> threadsPerCore]))
instance Property "AmdSevSnp" CpuOptionsProperty where
  type PropertyType "AmdSevSnp" CpuOptionsProperty = Value Prelude.Text
  set newValue CpuOptionsProperty {..}
    = CpuOptionsProperty {amdSevSnp = Prelude.pure newValue, ..}
instance Property "CoreCount" CpuOptionsProperty where
  type PropertyType "CoreCount" CpuOptionsProperty = Value Prelude.Integer
  set newValue CpuOptionsProperty {..}
    = CpuOptionsProperty {coreCount = Prelude.pure newValue, ..}
instance Property "ThreadsPerCore" CpuOptionsProperty where
  type PropertyType "ThreadsPerCore" CpuOptionsProperty = Value Prelude.Integer
  set newValue CpuOptionsProperty {..}
    = CpuOptionsProperty {threadsPerCore = Prelude.pure newValue, ..}