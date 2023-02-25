module Stratosphere.QuickSight.DataSource.AuroraPostgreSqlParametersProperty (
        AuroraPostgreSqlParametersProperty(..),
        mkAuroraPostgreSqlParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuroraPostgreSqlParametersProperty
  = AuroraPostgreSqlParametersProperty {database :: (Value Prelude.Text),
                                        host :: (Value Prelude.Text),
                                        port :: (Value Prelude.Double)}
mkAuroraPostgreSqlParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> AuroraPostgreSqlParametersProperty
mkAuroraPostgreSqlParametersProperty database host port
  = AuroraPostgreSqlParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties AuroraPostgreSqlParametersProperty where
  toResourceProperties AuroraPostgreSqlParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AuroraPostgreSqlParameters",
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON AuroraPostgreSqlParametersProperty where
  toJSON AuroraPostgreSqlParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" AuroraPostgreSqlParametersProperty where
  type PropertyType "Database" AuroraPostgreSqlParametersProperty = Value Prelude.Text
  set newValue AuroraPostgreSqlParametersProperty {..}
    = AuroraPostgreSqlParametersProperty {database = newValue, ..}
instance Property "Host" AuroraPostgreSqlParametersProperty where
  type PropertyType "Host" AuroraPostgreSqlParametersProperty = Value Prelude.Text
  set newValue AuroraPostgreSqlParametersProperty {..}
    = AuroraPostgreSqlParametersProperty {host = newValue, ..}
instance Property "Port" AuroraPostgreSqlParametersProperty where
  type PropertyType "Port" AuroraPostgreSqlParametersProperty = Value Prelude.Double
  set newValue AuroraPostgreSqlParametersProperty {..}
    = AuroraPostgreSqlParametersProperty {port = newValue, ..}