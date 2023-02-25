module Stratosphere.QuickSight.DataSource.AuroraParametersProperty (
        AuroraParametersProperty(..), mkAuroraParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuroraParametersProperty
  = AuroraParametersProperty {database :: (Value Prelude.Text),
                              host :: (Value Prelude.Text),
                              port :: (Value Prelude.Double)}
mkAuroraParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> AuroraParametersProperty
mkAuroraParametersProperty database host port
  = AuroraParametersProperty
      {database = database, host = host, port = port}
instance ToResourceProperties AuroraParametersProperty where
  toResourceProperties AuroraParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AuroraParameters",
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON AuroraParametersProperty where
  toJSON AuroraParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" AuroraParametersProperty where
  type PropertyType "Database" AuroraParametersProperty = Value Prelude.Text
  set newValue AuroraParametersProperty {..}
    = AuroraParametersProperty {database = newValue, ..}
instance Property "Host" AuroraParametersProperty where
  type PropertyType "Host" AuroraParametersProperty = Value Prelude.Text
  set newValue AuroraParametersProperty {..}
    = AuroraParametersProperty {host = newValue, ..}
instance Property "Port" AuroraParametersProperty where
  type PropertyType "Port" AuroraParametersProperty = Value Prelude.Double
  set newValue AuroraParametersProperty {..}
    = AuroraParametersProperty {port = newValue, ..}