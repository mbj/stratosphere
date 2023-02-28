module Stratosphere.QuickSight.DataSource.TeradataParametersProperty (
        TeradataParametersProperty(..), mkTeradataParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TeradataParametersProperty
  = TeradataParametersProperty {database :: (Value Prelude.Text),
                                host :: (Value Prelude.Text),
                                port :: (Value Prelude.Double)}
mkTeradataParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> TeradataParametersProperty
mkTeradataParametersProperty database host port
  = TeradataParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties TeradataParametersProperty where
  toResourceProperties TeradataParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.TeradataParameters",
         supportsTags = Prelude.False,
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON TeradataParametersProperty where
  toJSON TeradataParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" TeradataParametersProperty where
  type PropertyType "Database" TeradataParametersProperty = Value Prelude.Text
  set newValue TeradataParametersProperty {..}
    = TeradataParametersProperty {database = newValue, ..}
instance Property "Host" TeradataParametersProperty where
  type PropertyType "Host" TeradataParametersProperty = Value Prelude.Text
  set newValue TeradataParametersProperty {..}
    = TeradataParametersProperty {host = newValue, ..}
instance Property "Port" TeradataParametersProperty where
  type PropertyType "Port" TeradataParametersProperty = Value Prelude.Double
  set newValue TeradataParametersProperty {..}
    = TeradataParametersProperty {port = newValue, ..}