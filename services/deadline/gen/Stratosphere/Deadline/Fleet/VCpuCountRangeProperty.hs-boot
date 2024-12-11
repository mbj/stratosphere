module Stratosphere.Deadline.Fleet.VCpuCountRangeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VCpuCountRangeProperty :: Prelude.Type
instance ToResourceProperties VCpuCountRangeProperty
instance Prelude.Eq VCpuCountRangeProperty
instance Prelude.Show VCpuCountRangeProperty
instance JSON.ToJSON VCpuCountRangeProperty