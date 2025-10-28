module Stratosphere.QuickSight.DataSource.PrestoParametersProperty (
        PrestoParametersProperty(..), mkPrestoParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrestoParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-prestoparameters.html>
    PrestoParametersProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-prestoparameters.html#cfn-quicksight-datasource-prestoparameters-catalog>
                              catalog :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-prestoparameters.html#cfn-quicksight-datasource-prestoparameters-host>
                              host :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-prestoparameters.html#cfn-quicksight-datasource-prestoparameters-port>
                              port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrestoParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> PrestoParametersProperty
mkPrestoParametersProperty catalog host port
  = PrestoParametersProperty
      {haddock_workaround_ = (), catalog = catalog, host = host,
       port = port}
instance ToResourceProperties PrestoParametersProperty where
  toResourceProperties PrestoParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.PrestoParameters",
         supportsTags = Prelude.False,
         properties = ["Catalog" JSON..= catalog, "Host" JSON..= host,
                       "Port" JSON..= port]}
instance JSON.ToJSON PrestoParametersProperty where
  toJSON PrestoParametersProperty {..}
    = JSON.object
        ["Catalog" JSON..= catalog, "Host" JSON..= host,
         "Port" JSON..= port]
instance Property "Catalog" PrestoParametersProperty where
  type PropertyType "Catalog" PrestoParametersProperty = Value Prelude.Text
  set newValue PrestoParametersProperty {..}
    = PrestoParametersProperty {catalog = newValue, ..}
instance Property "Host" PrestoParametersProperty where
  type PropertyType "Host" PrestoParametersProperty = Value Prelude.Text
  set newValue PrestoParametersProperty {..}
    = PrestoParametersProperty {host = newValue, ..}
instance Property "Port" PrestoParametersProperty where
  type PropertyType "Port" PrestoParametersProperty = Value Prelude.Double
  set newValue PrestoParametersProperty {..}
    = PrestoParametersProperty {port = newValue, ..}