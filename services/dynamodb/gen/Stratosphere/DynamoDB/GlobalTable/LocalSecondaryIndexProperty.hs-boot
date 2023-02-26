module Stratosphere.DynamoDB.GlobalTable.LocalSecondaryIndexProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LocalSecondaryIndexProperty :: Prelude.Type
instance ToResourceProperties LocalSecondaryIndexProperty
instance JSON.ToJSON LocalSecondaryIndexProperty