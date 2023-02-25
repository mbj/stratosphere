module Stratosphere.IoTAnalytics.Datastore.PartitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PartitionProperty :: Prelude.Type
instance ToResourceProperties PartitionProperty
instance JSON.ToJSON PartitionProperty