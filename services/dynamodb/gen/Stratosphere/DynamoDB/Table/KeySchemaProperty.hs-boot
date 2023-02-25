module Stratosphere.DynamoDB.Table.KeySchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KeySchemaProperty :: Prelude.Type
instance ToResourceProperties KeySchemaProperty
instance JSON.ToJSON KeySchemaProperty