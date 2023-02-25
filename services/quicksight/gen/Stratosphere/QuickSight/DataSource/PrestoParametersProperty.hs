module Stratosphere.QuickSight.DataSource.PrestoParametersProperty (
        PrestoParametersProperty(..), mkPrestoParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrestoParametersProperty
  = PrestoParametersProperty {catalog :: (Value Prelude.Text),
                              host :: (Value Prelude.Text),
                              port :: (Value Prelude.Double)}
mkPrestoParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> PrestoParametersProperty
mkPrestoParametersProperty catalog host port
  = PrestoParametersProperty
      {catalog = catalog, host = host, port = port}
instance ToResourceProperties PrestoParametersProperty where
  toResourceProperties PrestoParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.PrestoParameters",
         properties = ["Catalog" JSON..= catalog, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON PrestoParametersProperty where
  toJSON PrestoParametersProperty {..}
    = JSON.object
        ["Catalog" JSON..= catalog, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Catalog" PrestoParametersProperty where
  type PropertyType "Catalog" PrestoParametersProperty = Value Prelude.Text
  set newValue PrestoParametersProperty {..}
    = PrestoParametersProperty {catalog = newValue, ..}
instance Property "Host" PrestoParametersProperty where
  type PropertyType "Host" PrestoParametersProperty = Value Prelude.Text
  set newValue PrestoParametersProperty {..}
    = PrestoParametersProperty {host = newValue, ..}
instance Property "Port" PrestoParametersProperty where
  type PropertyType "Port" PrestoParametersProperty = Value Prelude.Double
  set newValue PrestoParametersProperty {..}
    = PrestoParametersProperty {port = newValue, ..}