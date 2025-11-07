module Stratosphere.S3Tables.Table.IcebergSchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IcebergSchemaProperty :: Prelude.Type
instance ToResourceProperties IcebergSchemaProperty
instance Prelude.Eq IcebergSchemaProperty
instance Prelude.Show IcebergSchemaProperty
instance JSON.ToJSON IcebergSchemaProperty