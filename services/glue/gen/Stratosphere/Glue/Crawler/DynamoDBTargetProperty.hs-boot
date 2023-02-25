module Stratosphere.Glue.Crawler.DynamoDBTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDBTargetProperty :: Prelude.Type
instance ToResourceProperties DynamoDBTargetProperty
instance JSON.ToJSON DynamoDBTargetProperty