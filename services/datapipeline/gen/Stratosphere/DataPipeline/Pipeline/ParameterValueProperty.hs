module Stratosphere.DataPipeline.Pipeline.ParameterValueProperty (
        ParameterValueProperty(..), mkParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalue.html>
    ParameterValueProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalue.html#cfn-datapipeline-pipeline-parametervalue-id>
                            id :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalue.html#cfn-datapipeline-pipeline-parametervalue-stringvalue>
                            stringValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterValueProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ParameterValueProperty
mkParameterValueProperty id stringValue
  = ParameterValueProperty
      {haddock_workaround_ = (), id = id, stringValue = stringValue}
instance ToResourceProperties ParameterValueProperty where
  toResourceProperties ParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.ParameterValue",
         supportsTags = Prelude.False,
         properties = ["Id" JSON..= id, "StringValue" JSON..= stringValue]}
instance JSON.ToJSON ParameterValueProperty where
  toJSON ParameterValueProperty {..}
    = JSON.object ["Id" JSON..= id, "StringValue" JSON..= stringValue]
instance Property "Id" ParameterValueProperty where
  type PropertyType "Id" ParameterValueProperty = Value Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {id = newValue, ..}
instance Property "StringValue" ParameterValueProperty where
  type PropertyType "StringValue" ParameterValueProperty = Value Prelude.Text
  set newValue ParameterValueProperty {..}
    = ParameterValueProperty {stringValue = newValue, ..}