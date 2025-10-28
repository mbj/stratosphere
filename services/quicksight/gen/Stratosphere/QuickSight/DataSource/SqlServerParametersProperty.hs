module Stratosphere.QuickSight.DataSource.SqlServerParametersProperty (
        SqlServerParametersProperty(..), mkSqlServerParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqlServerParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-sqlserverparameters.html>
    SqlServerParametersProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-sqlserverparameters.html#cfn-quicksight-datasource-sqlserverparameters-database>
                                 database :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-sqlserverparameters.html#cfn-quicksight-datasource-sqlserverparameters-host>
                                 host :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-sqlserverparameters.html#cfn-quicksight-datasource-sqlserverparameters-port>
                                 port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqlServerParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> SqlServerParametersProperty
mkSqlServerParametersProperty database host port
  = SqlServerParametersProperty
      {haddock_workaround_ = (), database = database, host = host,
       port = port}
instance ToResourceProperties SqlServerParametersProperty where
  toResourceProperties SqlServerParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.SqlServerParameters",
         supportsTags = Prelude.False,
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON SqlServerParametersProperty where
  toJSON SqlServerParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" SqlServerParametersProperty where
  type PropertyType "Database" SqlServerParametersProperty = Value Prelude.Text
  set newValue SqlServerParametersProperty {..}
    = SqlServerParametersProperty {database = newValue, ..}
instance Property "Host" SqlServerParametersProperty where
  type PropertyType "Host" SqlServerParametersProperty = Value Prelude.Text
  set newValue SqlServerParametersProperty {..}
    = SqlServerParametersProperty {host = newValue, ..}
instance Property "Port" SqlServerParametersProperty where
  type PropertyType "Port" SqlServerParametersProperty = Value Prelude.Double
  set newValue SqlServerParametersProperty {..}
    = SqlServerParametersProperty {port = newValue, ..}