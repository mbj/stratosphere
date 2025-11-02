module Stratosphere.QuickSight.DataSource.TeradataParametersProperty (
        TeradataParametersProperty(..), mkTeradataParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TeradataParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-teradataparameters.html>
    TeradataParametersProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-teradataparameters.html#cfn-quicksight-datasource-teradataparameters-database>
                                database :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-teradataparameters.html#cfn-quicksight-datasource-teradataparameters-host>
                                host :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-teradataparameters.html#cfn-quicksight-datasource-teradataparameters-port>
                                port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTeradataParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> TeradataParametersProperty
mkTeradataParametersProperty database host port
  = TeradataParametersProperty
      {haddock_workaround_ = (), database = database, host = host,
       port = port}
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