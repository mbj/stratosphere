module Stratosphere.QuickSight.DataSource.MySqlParametersProperty (
        MySqlParametersProperty(..), mkMySqlParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MySqlParametersProperty
  = MySqlParametersProperty {database :: (Value Prelude.Text),
                             host :: (Value Prelude.Text),
                             port :: (Value Prelude.Double)}
mkMySqlParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> MySqlParametersProperty
mkMySqlParametersProperty database host port
  = MySqlParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties MySqlParametersProperty where
  toResourceProperties MySqlParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.MySqlParameters",
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON MySqlParametersProperty where
  toJSON MySqlParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" MySqlParametersProperty where
  type PropertyType "Database" MySqlParametersProperty = Value Prelude.Text
  set newValue MySqlParametersProperty {..}
    = MySqlParametersProperty {database = newValue, ..}
instance Property "Host" MySqlParametersProperty where
  type PropertyType "Host" MySqlParametersProperty = Value Prelude.Text
  set newValue MySqlParametersProperty {..}
    = MySqlParametersProperty {host = newValue, ..}
instance Property "Port" MySqlParametersProperty where
  type PropertyType "Port" MySqlParametersProperty = Value Prelude.Double
  set newValue MySqlParametersProperty {..}
    = MySqlParametersProperty {port = newValue, ..}