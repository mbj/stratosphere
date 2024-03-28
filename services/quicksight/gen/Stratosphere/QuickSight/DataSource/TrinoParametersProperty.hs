module Stratosphere.QuickSight.DataSource.TrinoParametersProperty (
        TrinoParametersProperty(..), mkTrinoParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrinoParametersProperty
  = TrinoParametersProperty {catalog :: (Value Prelude.Text),
                             host :: (Value Prelude.Text),
                             port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrinoParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> TrinoParametersProperty
mkTrinoParametersProperty catalog host port
  = TrinoParametersProperty
      {catalog = catalog, host = host, port = port}
instance ToResourceProperties TrinoParametersProperty where
  toResourceProperties TrinoParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.TrinoParameters",
         supportsTags = Prelude.False,
         properties = ["Catalog" JSON..= catalog, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON TrinoParametersProperty where
  toJSON TrinoParametersProperty {..}
    = JSON.object
        ["Catalog" JSON..= catalog, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Catalog" TrinoParametersProperty where
  type PropertyType "Catalog" TrinoParametersProperty = Value Prelude.Text
  set newValue TrinoParametersProperty {..}
    = TrinoParametersProperty {catalog = newValue, ..}
instance Property "Host" TrinoParametersProperty where
  type PropertyType "Host" TrinoParametersProperty = Value Prelude.Text
  set newValue TrinoParametersProperty {..}
    = TrinoParametersProperty {host = newValue, ..}
instance Property "Port" TrinoParametersProperty where
  type PropertyType "Port" TrinoParametersProperty = Value Prelude.Double
  set newValue TrinoParametersProperty {..}
    = TrinoParametersProperty {port = newValue, ..}