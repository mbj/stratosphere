module Stratosphere.IoT.TopicRule.PutItemInputProperty (
        PutItemInputProperty(..), mkPutItemInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PutItemInputProperty
  = PutItemInputProperty {tableName :: (Value Prelude.Text)}
mkPutItemInputProperty ::
  Value Prelude.Text -> PutItemInputProperty
mkPutItemInputProperty tableName
  = PutItemInputProperty {tableName = tableName}
instance ToResourceProperties PutItemInputProperty where
  toResourceProperties PutItemInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.PutItemInput",
         supportsTags = Prelude.False,
         properties = ["TableName" JSON..= tableName]}
instance JSON.ToJSON PutItemInputProperty where
  toJSON PutItemInputProperty {..}
    = JSON.object ["TableName" JSON..= tableName]
instance Property "TableName" PutItemInputProperty where
  type PropertyType "TableName" PutItemInputProperty = Value Prelude.Text
  set newValue PutItemInputProperty {}
    = PutItemInputProperty {tableName = newValue, ..}