module Stratosphere.DataPipeline.Pipeline.ParameterAttributeProperty (
        ParameterAttributeProperty(..), mkParameterAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterattribute.html>
    ParameterAttributeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterattribute.html#cfn-datapipeline-pipeline-parameterattribute-key>
                                key :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterattribute.html#cfn-datapipeline-pipeline-parameterattribute-stringvalue>
                                stringValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterAttributeProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ParameterAttributeProperty
mkParameterAttributeProperty key stringValue
  = ParameterAttributeProperty
      {haddock_workaround_ = (), key = key, stringValue = stringValue}
instance ToResourceProperties ParameterAttributeProperty where
  toResourceProperties ParameterAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.ParameterAttribute",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key,
                       "StringValue" JSON..= stringValue]}
instance JSON.ToJSON ParameterAttributeProperty where
  toJSON ParameterAttributeProperty {..}
    = JSON.object
        ["Key" JSON..= key, "StringValue" JSON..= stringValue]
instance Property "Key" ParameterAttributeProperty where
  type PropertyType "Key" ParameterAttributeProperty = Value Prelude.Text
  set newValue ParameterAttributeProperty {..}
    = ParameterAttributeProperty {key = newValue, ..}
instance Property "StringValue" ParameterAttributeProperty where
  type PropertyType "StringValue" ParameterAttributeProperty = Value Prelude.Text
  set newValue ParameterAttributeProperty {..}
    = ParameterAttributeProperty {stringValue = newValue, ..}