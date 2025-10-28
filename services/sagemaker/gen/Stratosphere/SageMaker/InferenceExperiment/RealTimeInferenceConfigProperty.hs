module Stratosphere.SageMaker.InferenceExperiment.RealTimeInferenceConfigProperty (
        RealTimeInferenceConfigProperty(..),
        mkRealTimeInferenceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RealTimeInferenceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-realtimeinferenceconfig.html>
    RealTimeInferenceConfigProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-realtimeinferenceconfig.html#cfn-sagemaker-inferenceexperiment-realtimeinferenceconfig-instancecount>
                                     instanceCount :: (Value Prelude.Integer),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-realtimeinferenceconfig.html#cfn-sagemaker-inferenceexperiment-realtimeinferenceconfig-instancetype>
                                     instanceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRealTimeInferenceConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> RealTimeInferenceConfigProperty
mkRealTimeInferenceConfigProperty instanceCount instanceType
  = RealTimeInferenceConfigProperty
      {haddock_workaround_ = (), instanceCount = instanceCount,
       instanceType = instanceType}
instance ToResourceProperties RealTimeInferenceConfigProperty where
  toResourceProperties RealTimeInferenceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.RealTimeInferenceConfig",
         supportsTags = Prelude.False,
         properties = ["InstanceCount" JSON..= instanceCount,
                       "InstanceType" JSON..= instanceType]}
instance JSON.ToJSON RealTimeInferenceConfigProperty where
  toJSON RealTimeInferenceConfigProperty {..}
    = JSON.object
        ["InstanceCount" JSON..= instanceCount,
         "InstanceType" JSON..= instanceType]
instance Property "InstanceCount" RealTimeInferenceConfigProperty where
  type PropertyType "InstanceCount" RealTimeInferenceConfigProperty = Value Prelude.Integer
  set newValue RealTimeInferenceConfigProperty {..}
    = RealTimeInferenceConfigProperty {instanceCount = newValue, ..}
instance Property "InstanceType" RealTimeInferenceConfigProperty where
  type PropertyType "InstanceType" RealTimeInferenceConfigProperty = Value Prelude.Text
  set newValue RealTimeInferenceConfigProperty {..}
    = RealTimeInferenceConfigProperty {instanceType = newValue, ..}