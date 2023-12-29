module Stratosphere.Glue.Schema.SchemaVersionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaVersionProperty :: Prelude.Type
instance ToResourceProperties SchemaVersionProperty
instance Prelude.Eq SchemaVersionProperty
instance Prelude.Show SchemaVersionProperty
instance JSON.ToJSON SchemaVersionProperty