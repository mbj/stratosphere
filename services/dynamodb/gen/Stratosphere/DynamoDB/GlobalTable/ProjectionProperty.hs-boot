module Stratosphere.DynamoDB.GlobalTable.ProjectionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ProjectionProperty :: Prelude.Type
instance ToResourceProperties ProjectionProperty
instance JSON.ToJSON ProjectionProperty