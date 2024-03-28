module Stratosphere.Timestream.Table.PartitionKeyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PartitionKeyProperty :: Prelude.Type
instance ToResourceProperties PartitionKeyProperty
instance Prelude.Eq PartitionKeyProperty
instance Prelude.Show PartitionKeyProperty
instance JSON.ToJSON PartitionKeyProperty