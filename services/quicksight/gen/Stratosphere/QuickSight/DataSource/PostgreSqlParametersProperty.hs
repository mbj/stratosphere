module Stratosphere.QuickSight.DataSource.PostgreSqlParametersProperty (
        PostgreSqlParametersProperty(..), mkPostgreSqlParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PostgreSqlParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-postgresqlparameters.html>
    PostgreSqlParametersProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-postgresqlparameters.html#cfn-quicksight-datasource-postgresqlparameters-database>
                                  database :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-postgresqlparameters.html#cfn-quicksight-datasource-postgresqlparameters-host>
                                  host :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-postgresqlparameters.html#cfn-quicksight-datasource-postgresqlparameters-port>
                                  port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPostgreSqlParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> PostgreSqlParametersProperty
mkPostgreSqlParametersProperty database host port
  = PostgreSqlParametersProperty
      {haddock_workaround_ = (), database = database, host = host,
       port = port}
instance ToResourceProperties PostgreSqlParametersProperty where
  toResourceProperties PostgreSqlParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.PostgreSqlParameters",
         supportsTags = Prelude.False,
         properties = ["Database" JSON..= database, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON PostgreSqlParametersProperty where
  toJSON PostgreSqlParametersProperty {..}
    = JSON.object
        ["Database" JSON..= database, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Database" PostgreSqlParametersProperty where
  type PropertyType "Database" PostgreSqlParametersProperty = Value Prelude.Text
  set newValue PostgreSqlParametersProperty {..}
    = PostgreSqlParametersProperty {database = newValue, ..}
instance Property "Host" PostgreSqlParametersProperty where
  type PropertyType "Host" PostgreSqlParametersProperty = Value Prelude.Text
  set newValue PostgreSqlParametersProperty {..}
    = PostgreSqlParametersProperty {host = newValue, ..}
instance Property "Port" PostgreSqlParametersProperty where
  type PropertyType "Port" PostgreSqlParametersProperty = Value Prelude.Double
  set newValue PostgreSqlParametersProperty {..}
    = PostgreSqlParametersProperty {port = newValue, ..}