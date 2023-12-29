module Stratosphere.EC2.LaunchTemplate.CpuOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CpuOptionsProperty :: Prelude.Type
instance ToResourceProperties CpuOptionsProperty
instance Prelude.Eq CpuOptionsProperty
instance Prelude.Show CpuOptionsProperty
instance JSON.ToJSON CpuOptionsProperty