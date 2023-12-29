module Stratosphere.Glue.Table.SchemaIdProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaIdProperty :: Prelude.Type
instance ToResourceProperties SchemaIdProperty
instance Prelude.Eq SchemaIdProperty
instance Prelude.Show SchemaIdProperty
instance JSON.ToJSON SchemaIdProperty