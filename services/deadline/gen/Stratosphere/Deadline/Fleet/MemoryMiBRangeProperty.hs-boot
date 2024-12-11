module Stratosphere.Deadline.Fleet.MemoryMiBRangeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MemoryMiBRangeProperty :: Prelude.Type
instance ToResourceProperties MemoryMiBRangeProperty
instance Prelude.Eq MemoryMiBRangeProperty
instance Prelude.Show MemoryMiBRangeProperty
instance JSON.ToJSON MemoryMiBRangeProperty