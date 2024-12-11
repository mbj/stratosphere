module Stratosphere.EC2.LaunchTemplate.CpuProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CpuProperty :: Prelude.Type
instance ToResourceProperties CpuProperty
instance Prelude.Eq CpuProperty
instance Prelude.Show CpuProperty
instance JSON.ToJSON CpuProperty