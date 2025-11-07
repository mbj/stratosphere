module Stratosphere.S3Tables.Table.SchemaFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaFieldProperty :: Prelude.Type
instance ToResourceProperties SchemaFieldProperty
instance Prelude.Eq SchemaFieldProperty
instance Prelude.Show SchemaFieldProperty
instance JSON.ToJSON SchemaFieldProperty