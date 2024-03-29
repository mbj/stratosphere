module Stratosphere.IoT.TopicRule.DynamoDBActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDBActionProperty :: Prelude.Type
instance ToResourceProperties DynamoDBActionProperty
instance Prelude.Eq DynamoDBActionProperty
instance Prelude.Show DynamoDBActionProperty
instance JSON.ToJSON DynamoDBActionProperty