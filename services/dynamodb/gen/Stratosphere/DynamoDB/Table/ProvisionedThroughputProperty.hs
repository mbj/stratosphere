module Stratosphere.DynamoDB.Table.ProvisionedThroughputProperty (
        ProvisionedThroughputProperty(..), mkProvisionedThroughputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedThroughputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-provisionedthroughput.html>
    ProvisionedThroughputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-provisionedthroughput.html#cfn-dynamodb-table-provisionedthroughput-readcapacityunits>
                                   readCapacityUnits :: (Value Prelude.Integer),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-provisionedthroughput.html#cfn-dynamodb-table-provisionedthroughput-writecapacityunits>
                                   writeCapacityUnits :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisionedThroughputProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ProvisionedThroughputProperty
mkProvisionedThroughputProperty
  readCapacityUnits
  writeCapacityUnits
  = ProvisionedThroughputProperty
      {haddock_workaround_ = (), readCapacityUnits = readCapacityUnits,
       writeCapacityUnits = writeCapacityUnits}
instance ToResourceProperties ProvisionedThroughputProperty where
  toResourceProperties ProvisionedThroughputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.ProvisionedThroughput",
         supportsTags = Prelude.False,
         properties = ["ReadCapacityUnits" JSON..= readCapacityUnits,
                       "WriteCapacityUnits" JSON..= writeCapacityUnits]}
instance JSON.ToJSON ProvisionedThroughputProperty where
  toJSON ProvisionedThroughputProperty {..}
    = JSON.object
        ["ReadCapacityUnits" JSON..= readCapacityUnits,
         "WriteCapacityUnits" JSON..= writeCapacityUnits]
instance Property "ReadCapacityUnits" ProvisionedThroughputProperty where
  type PropertyType "ReadCapacityUnits" ProvisionedThroughputProperty = Value Prelude.Integer
  set newValue ProvisionedThroughputProperty {..}
    = ProvisionedThroughputProperty {readCapacityUnits = newValue, ..}
instance Property "WriteCapacityUnits" ProvisionedThroughputProperty where
  type PropertyType "WriteCapacityUnits" ProvisionedThroughputProperty = Value Prelude.Integer
  set newValue ProvisionedThroughputProperty {..}
    = ProvisionedThroughputProperty {writeCapacityUnits = newValue, ..}