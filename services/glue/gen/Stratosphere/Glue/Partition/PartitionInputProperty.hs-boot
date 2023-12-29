module Stratosphere.Glue.Partition.PartitionInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PartitionInputProperty :: Prelude.Type
instance ToResourceProperties PartitionInputProperty
instance Prelude.Eq PartitionInputProperty
instance Prelude.Show PartitionInputProperty
instance JSON.ToJSON PartitionInputProperty