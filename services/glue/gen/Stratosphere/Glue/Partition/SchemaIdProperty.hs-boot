module Stratosphere.Glue.Partition.SchemaIdProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaIdProperty :: Prelude.Type
instance ToResourceProperties SchemaIdProperty
instance JSON.ToJSON SchemaIdProperty