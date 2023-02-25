module Stratosphere.QuickSight.DataSource.SqlServerParametersProperty (
        SqlServerParametersProperty(..), mkSqlServerParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlServerParametersProperty
  = SqlServerParametersProperty {database :: (Value Prelude.Text),
                                 host :: (Value Prelude.Text),
                                 port :: (Value Prelude.Double)}
mkSqlServerParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> SqlServerParametersProperty
mkSqlServerParametersProperty database host port
  = SqlServerParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties SqlServerParametersProperty where
  toResourceProperties SqlServerParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.SqlServerParameters",
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON SqlServerParametersProperty where
  toJSON SqlServerParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" SqlServerParametersProperty where
  type PropertyType "Database" SqlServerParametersProperty = Value Prelude.Text
  set newValue SqlServerParametersProperty {..}
    = SqlServerParametersProperty {database = newValue, ..}
instance Property "Host" SqlServerParametersProperty where
  type PropertyType "Host" SqlServerParametersProperty = Value Prelude.Text
  set newValue SqlServerParametersProperty {..}
    = SqlServerParametersProperty {host = newValue, ..}
instance Property "Port" SqlServerParametersProperty where
  type PropertyType "Port" SqlServerParametersProperty = Value Prelude.Double
  set newValue SqlServerParametersProperty {..}
    = SqlServerParametersProperty {port = newValue, ..}