module Stratosphere.Pipes.Pipe.SageMakerPipelineParameterProperty (
        SageMakerPipelineParameterProperty(..),
        mkSageMakerPipelineParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SageMakerPipelineParameterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-sagemakerpipelineparameter.html>
    SageMakerPipelineParameterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-sagemakerpipelineparameter.html#cfn-pipes-pipe-sagemakerpipelineparameter-name>
                                        name :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-sagemakerpipelineparameter.html#cfn-pipes-pipe-sagemakerpipelineparameter-value>
                                        value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSageMakerPipelineParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SageMakerPipelineParameterProperty
mkSageMakerPipelineParameterProperty name value
  = SageMakerPipelineParameterProperty {name = name, value = value}
instance ToResourceProperties SageMakerPipelineParameterProperty where
  toResourceProperties SageMakerPipelineParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.SageMakerPipelineParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON SageMakerPipelineParameterProperty where
  toJSON SageMakerPipelineParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" SageMakerPipelineParameterProperty where
  type PropertyType "Name" SageMakerPipelineParameterProperty = Value Prelude.Text
  set newValue SageMakerPipelineParameterProperty {..}
    = SageMakerPipelineParameterProperty {name = newValue, ..}
instance Property "Value" SageMakerPipelineParameterProperty where
  type PropertyType "Value" SageMakerPipelineParameterProperty = Value Prelude.Text
  set newValue SageMakerPipelineParameterProperty {..}
    = SageMakerPipelineParameterProperty {value = newValue, ..}