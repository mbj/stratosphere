module Stratosphere.Cassandra.Table.ProvisionedThroughputProperty (
        ProvisionedThroughputProperty(..), mkProvisionedThroughputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedThroughputProperty
  = ProvisionedThroughputProperty {readCapacityUnits :: (Value Prelude.Integer),
                                   writeCapacityUnits :: (Value Prelude.Integer)}
mkProvisionedThroughputProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ProvisionedThroughputProperty
mkProvisionedThroughputProperty
  readCapacityUnits
  writeCapacityUnits
  = ProvisionedThroughputProperty
      {readCapacityUnits = readCapacityUnits,
       writeCapacityUnits = writeCapacityUnits}
instance ToResourceProperties ProvisionedThroughputProperty where
  toResourceProperties ProvisionedThroughputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.ProvisionedThroughput",
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