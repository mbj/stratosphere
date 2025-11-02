module Stratosphere.QuickSight.DataSource.AuroraParametersProperty (
        AuroraParametersProperty(..), mkAuroraParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuroraParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-auroraparameters.html>
    AuroraParametersProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-auroraparameters.html#cfn-quicksight-datasource-auroraparameters-database>
                              database :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-auroraparameters.html#cfn-quicksight-datasource-auroraparameters-host>
                              host :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-auroraparameters.html#cfn-quicksight-datasource-auroraparameters-port>
                              port :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuroraParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Double -> AuroraParametersProperty
mkAuroraParametersProperty database host port
  = AuroraParametersProperty
      {haddock_workaround_ = (), database = database, host = host,
       port = port}
instance ToResourceProperties AuroraParametersProperty where
  toResourceProperties AuroraParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.AuroraParameters",
         supportsTags = Prelude.False,
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