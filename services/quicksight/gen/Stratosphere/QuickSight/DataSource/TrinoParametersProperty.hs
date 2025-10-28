module Stratosphere.QuickSight.DataSource.TrinoParametersProperty (
        TrinoParametersProperty(..), mkTrinoParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrinoParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-trinoparameters.html>
    TrinoParametersProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-trinoparameters.html#cfn-quicksight-datasource-trinoparameters-catalog>
                             catalog :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-trinoparameters.html#cfn-quicksight-datasource-trinoparameters-host>
                             host :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-trinoparameters.html#cfn-quicksight-datasource-trinoparameters-port>
                             port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrinoParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> TrinoParametersProperty
mkTrinoParametersProperty catalog host port
  = TrinoParametersProperty
      {haddock_workaround_ = (), catalog = catalog, host = host,
       port = port}
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