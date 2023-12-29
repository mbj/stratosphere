module Stratosphere.EC2.LaunchTemplate.MemoryGiBPerVCpuProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MemoryGiBPerVCpuProperty :: Prelude.Type
instance ToResourceProperties MemoryGiBPerVCpuProperty
instance Prelude.Eq MemoryGiBPerVCpuProperty
instance Prelude.Show MemoryGiBPerVCpuProperty
instance JSON.ToJSON MemoryGiBPerVCpuProperty