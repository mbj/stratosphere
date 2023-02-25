module Stratosphere.QuickSight.DataSource.SnowflakeParametersProperty (
        SnowflakeParametersProperty(..), mkSnowflakeParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeParametersProperty
  = SnowflakeParametersProperty {database :: (Value Prelude.Text),
                                 host :: (Value Prelude.Text),
                                 warehouse :: (Value Prelude.Text)}
mkSnowflakeParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SnowflakeParametersProperty
mkSnowflakeParametersProperty database host warehouse
  = SnowflakeParametersProperty
      {database = database, host = host, warehouse = warehouse}
instance ToResourceProperties SnowflakeParametersProperty where
  toResourceProperties SnowflakeParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.SnowflakeParameters",
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Warehouse" JSON..= warehouse]}
instance JSON.ToJSON SnowflakeParametersProperty where
  toJSON SnowflakeParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Warehouse" JSON..= warehouse]
instance Property "Database" SnowflakeParametersProperty where
  type PropertyType "Database" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty {database = newValue, ..}
instance Property "Host" SnowflakeParametersProperty where
  type PropertyType "Host" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty {host = newValue, ..}
instance Property "Warehouse" SnowflakeParametersProperty where
  type PropertyType "Warehouse" SnowflakeParametersProperty = Value Prelude.Text
  set newValue SnowflakeParametersProperty {..}
    = SnowflakeParametersProperty {warehouse = newValue, ..}