module Stratosphere.QuickSight.DataSource.DatabricksParametersProperty (
        DatabricksParametersProperty(..), mkDatabricksParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabricksParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-databricksparameters.html>
    DatabricksParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-databricksparameters.html#cfn-quicksight-datasource-databricksparameters-host>
                                  host :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-databricksparameters.html#cfn-quicksight-datasource-databricksparameters-port>
                                  port :: (Value Prelude.Double),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-databricksparameters.html#cfn-quicksight-datasource-databricksparameters-sqlendpointpath>
                                  sqlEndpointPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabricksParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Double
     -> Value Prelude.Text -> DatabricksParametersProperty
mkDatabricksParametersProperty host port sqlEndpointPath
  = DatabricksParametersProperty
      {haddock_workaround_ = (), host = host, port = port,
       sqlEndpointPath = sqlEndpointPath}
instance ToResourceProperties DatabricksParametersProperty where
  toResourceProperties DatabricksParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.DatabricksParameters",
         supportsTags = Prelude.False,
         properties = ["Host" JSON..= host, "Port" JSON..= port,
                       "SqlEndpointPath" JSON..= sqlEndpointPath]}
instance JSON.ToJSON DatabricksParametersProperty where
  toJSON DatabricksParametersProperty {..}
    = JSON.object
        ["Host" JSON..= host, "Port" JSON..= port,
         "SqlEndpointPath" JSON..= sqlEndpointPath]
instance Property "Host" DatabricksParametersProperty where
  type PropertyType "Host" DatabricksParametersProperty = Value Prelude.Text
  set newValue DatabricksParametersProperty {..}
    = DatabricksParametersProperty {host = newValue, ..}
instance Property "Port" DatabricksParametersProperty where
  type PropertyType "Port" DatabricksParametersProperty = Value Prelude.Double
  set newValue DatabricksParametersProperty {..}
    = DatabricksParametersProperty {port = newValue, ..}
instance Property "SqlEndpointPath" DatabricksParametersProperty where
  type PropertyType "SqlEndpointPath" DatabricksParametersProperty = Value Prelude.Text
  set newValue DatabricksParametersProperty {..}
    = DatabricksParametersProperty {sqlEndpointPath = newValue, ..}