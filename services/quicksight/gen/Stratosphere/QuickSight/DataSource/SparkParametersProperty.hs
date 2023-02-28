module Stratosphere.QuickSight.DataSource.SparkParametersProperty (
        SparkParametersProperty(..), mkSparkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SparkParametersProperty
  = SparkParametersProperty {host :: (Value Prelude.Text),
                             port :: (Value Prelude.Double)}
mkSparkParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> SparkParametersProperty
mkSparkParametersProperty host port
  = SparkParametersProperty {host = host, port = port}
instance ToResourceProperties SparkParametersProperty where
  toResourceProperties SparkParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.SparkParameters",
         supportsTags = Prelude.False,
         properties = ["Host" JSON..= host, "Port" JSON..= port]}
instance JSON.ToJSON SparkParametersProperty where
  toJSON SparkParametersProperty {..}
    = JSON.object ["Host" JSON..= host, "Port" JSON..= port]
instance Property "Host" SparkParametersProperty where
  type PropertyType "Host" SparkParametersProperty = Value Prelude.Text
  set newValue SparkParametersProperty {..}
    = SparkParametersProperty {host = newValue, ..}
instance Property "Port" SparkParametersProperty where
  type PropertyType "Port" SparkParametersProperty = Value Prelude.Double
  set newValue SparkParametersProperty {..}
    = SparkParametersProperty {port = newValue, ..}