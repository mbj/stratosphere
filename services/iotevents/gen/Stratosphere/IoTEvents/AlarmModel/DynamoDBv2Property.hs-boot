module Stratosphere.IoTEvents.AlarmModel.DynamoDBv2Property where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDBv2Property :: Prelude.Type
instance ToResourceProperties DynamoDBv2Property
instance Prelude.Eq DynamoDBv2Property
instance Prelude.Show DynamoDBv2Property
instance JSON.ToJSON DynamoDBv2Property