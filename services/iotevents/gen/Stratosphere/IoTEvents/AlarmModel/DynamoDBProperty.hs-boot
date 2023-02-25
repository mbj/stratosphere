module Stratosphere.IoTEvents.AlarmModel.DynamoDBProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDBProperty :: Prelude.Type
instance ToResourceProperties DynamoDBProperty
instance JSON.ToJSON DynamoDBProperty