module Stratosphere.QuickSight.DataSource.MariaDbParametersProperty (
        MariaDbParametersProperty(..), mkMariaDbParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MariaDbParametersProperty
  = MariaDbParametersProperty {database :: (Value Prelude.Text),
                               host :: (Value Prelude.Text),
                               port :: (Value Prelude.Double)}
mkMariaDbParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> MariaDbParametersProperty
mkMariaDbParametersProperty database host port
  = MariaDbParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties MariaDbParametersProperty where
  toResourceProperties MariaDbParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.MariaDbParameters",
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON MariaDbParametersProperty where
  toJSON MariaDbParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" MariaDbParametersProperty where
  type PropertyType "Database" MariaDbParametersProperty = Value Prelude.Text
  set newValue MariaDbParametersProperty {..}
    = MariaDbParametersProperty {database = newValue, ..}
instance Property "Host" MariaDbParametersProperty where
  type PropertyType "Host" MariaDbParametersProperty = Value Prelude.Text
  set newValue MariaDbParametersProperty {..}
    = MariaDbParametersProperty {host = newValue, ..}
instance Property "Port" MariaDbParametersProperty where
  type PropertyType "Port" MariaDbParametersProperty = Value Prelude.Double
  set newValue MariaDbParametersProperty {..}
    = MariaDbParametersProperty {port = newValue, ..}