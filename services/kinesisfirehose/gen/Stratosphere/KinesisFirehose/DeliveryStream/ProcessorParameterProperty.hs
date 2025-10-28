module Stratosphere.KinesisFirehose.DeliveryStream.ProcessorParameterProperty (
        ProcessorParameterProperty(..), mkProcessorParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProcessorParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html>
    ProcessorParameterProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametername>
                                parameterName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametervalue>
                                parameterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProcessorParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ProcessorParameterProperty
mkProcessorParameterProperty parameterName parameterValue
  = ProcessorParameterProperty
      {haddock_workaround_ = (), parameterName = parameterName,
       parameterValue = parameterValue}
instance ToResourceProperties ProcessorParameterProperty where
  toResourceProperties ProcessorParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ProcessorParameter",
         supportsTags = Prelude.False,
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON ProcessorParameterProperty where
  toJSON ProcessorParameterProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" ProcessorParameterProperty where
  type PropertyType "ParameterName" ProcessorParameterProperty = Value Prelude.Text
  set newValue ProcessorParameterProperty {..}
    = ProcessorParameterProperty {parameterName = newValue, ..}
instance Property "ParameterValue" ProcessorParameterProperty where
  type PropertyType "ParameterValue" ProcessorParameterProperty = Value Prelude.Text
  set newValue ProcessorParameterProperty {..}
    = ProcessorParameterProperty {parameterValue = newValue, ..}