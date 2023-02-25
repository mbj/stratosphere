module Stratosphere.IoT.TopicRule.DynamoDBv2ActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDBv2ActionProperty :: Prelude.Type
instance ToResourceProperties DynamoDBv2ActionProperty
instance JSON.ToJSON DynamoDBv2ActionProperty