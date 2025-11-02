module Stratosphere.QuickSight.DataSource.MariaDbParametersProperty (
        MariaDbParametersProperty(..), mkMariaDbParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MariaDbParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-mariadbparameters.html>
    MariaDbParametersProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-mariadbparameters.html#cfn-quicksight-datasource-mariadbparameters-database>
                               database :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-mariadbparameters.html#cfn-quicksight-datasource-mariadbparameters-host>
                               host :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-mariadbparameters.html#cfn-quicksight-datasource-mariadbparameters-port>
                               port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMariaDbParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> MariaDbParametersProperty
mkMariaDbParametersProperty database host port
  = MariaDbParametersProperty
      {haddock_workaround_ = (), database = database, host = host,
       port = port}
instance ToResourceProperties MariaDbParametersProperty where
  toResourceProperties MariaDbParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.MariaDbParameters",
         supportsTags = Prelude.False,
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