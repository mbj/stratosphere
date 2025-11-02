module Stratosphere.IoT.TopicRule.PutItemInputProperty (
        PutItemInputProperty(..), mkPutItemInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PutItemInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putiteminput.html>
    PutItemInputProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putiteminput.html#cfn-iot-topicrule-putiteminput-tablename>
                          tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPutItemInputProperty ::
  Value Prelude.Text -> PutItemInputProperty
mkPutItemInputProperty tableName
  = PutItemInputProperty
      {haddock_workaround_ = (), tableName = tableName}
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
  set newValue PutItemInputProperty {..}
    = PutItemInputProperty {tableName = newValue, ..}