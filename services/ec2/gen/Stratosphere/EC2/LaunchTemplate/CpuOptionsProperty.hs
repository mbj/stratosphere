module Stratosphere.EC2.LaunchTemplate.CpuOptionsProperty (
        CpuOptionsProperty(..), mkCpuOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CpuOptionsProperty
  = CpuOptionsProperty {coreCount :: (Prelude.Maybe (Value Prelude.Integer)),
                        threadsPerCore :: (Prelude.Maybe (Value Prelude.Integer))}
mkCpuOptionsProperty :: CpuOptionsProperty
mkCpuOptionsProperty
  = CpuOptionsProperty
      {coreCount = Prelude.Nothing, threadsPerCore = Prelude.Nothing}
instance ToResourceProperties CpuOptionsProperty where
  toResourceProperties CpuOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.CpuOptions",
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