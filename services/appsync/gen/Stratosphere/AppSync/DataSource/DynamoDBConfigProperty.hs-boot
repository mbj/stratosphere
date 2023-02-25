module Stratosphere.AppSync.DataSource.DynamoDBConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDBConfigProperty :: Prelude.Type
instance ToResourceProperties DynamoDBConfigProperty
instance JSON.ToJSON DynamoDBConfigProperty