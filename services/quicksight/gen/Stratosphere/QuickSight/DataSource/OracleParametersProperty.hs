module Stratosphere.QuickSight.DataSource.OracleParametersProperty (
        OracleParametersProperty(..), mkOracleParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OracleParametersProperty
  = OracleParametersProperty {database :: (Value Prelude.Text),
                              host :: (Value Prelude.Text),
                              port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOracleParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> OracleParametersProperty
mkOracleParametersProperty database host port
  = OracleParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties OracleParametersProperty where
  toResourceProperties OracleParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.OracleParameters",
         supportsTags = Prelude.False,
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON OracleParametersProperty where
  toJSON OracleParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" OracleParametersProperty where
  type PropertyType "Database" OracleParametersProperty = Value Prelude.Text
  set newValue OracleParametersProperty {..}
    = OracleParametersProperty {database = newValue, ..}
instance Property "Host" OracleParametersProperty where
  type PropertyType "Host" OracleParametersProperty = Value Prelude.Text
  set newValue OracleParametersProperty {..}
    = OracleParametersProperty {host = newValue, ..}
instance Property "Port" OracleParametersProperty where
  type PropertyType "Port" OracleParametersProperty = Value Prelude.Double
  set newValue OracleParametersProperty {..}
    = OracleParametersProperty {port = newValue, ..}