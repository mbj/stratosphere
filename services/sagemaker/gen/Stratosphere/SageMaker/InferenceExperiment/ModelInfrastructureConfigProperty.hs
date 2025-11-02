module Stratosphere.SageMaker.InferenceExperiment.ModelInfrastructureConfigProperty (
        module Exports, ModelInfrastructureConfigProperty(..),
        mkModelInfrastructureConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.RealTimeInferenceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelInfrastructureConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-modelinfrastructureconfig.html>
    ModelInfrastructureConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-modelinfrastructureconfig.html#cfn-sagemaker-inferenceexperiment-modelinfrastructureconfig-infrastructuretype>
                                       infrastructureType :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-modelinfrastructureconfig.html#cfn-sagemaker-inferenceexperiment-modelinfrastructureconfig-realtimeinferenceconfig>
                                       realTimeInferenceConfig :: RealTimeInferenceConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelInfrastructureConfigProperty ::
  Value Prelude.Text
  -> RealTimeInferenceConfigProperty
     -> ModelInfrastructureConfigProperty
mkModelInfrastructureConfigProperty
  infrastructureType
  realTimeInferenceConfig
  = ModelInfrastructureConfigProperty
      {haddock_workaround_ = (), infrastructureType = infrastructureType,
       realTimeInferenceConfig = realTimeInferenceConfig}
instance ToResourceProperties ModelInfrastructureConfigProperty where
  toResourceProperties ModelInfrastructureConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.ModelInfrastructureConfig",
         supportsTags = Prelude.False,
         properties = ["InfrastructureType" JSON..= infrastructureType,
                       "RealTimeInferenceConfig" JSON..= realTimeInferenceConfig]}
instance JSON.ToJSON ModelInfrastructureConfigProperty where
  toJSON ModelInfrastructureConfigProperty {..}
    = JSON.object
        ["InfrastructureType" JSON..= infrastructureType,
         "RealTimeInferenceConfig" JSON..= realTimeInferenceConfig]
instance Property "InfrastructureType" ModelInfrastructureConfigProperty where
  type PropertyType "InfrastructureType" ModelInfrastructureConfigProperty = Value Prelude.Text
  set newValue ModelInfrastructureConfigProperty {..}
    = ModelInfrastructureConfigProperty
        {infrastructureType = newValue, ..}
instance Property "RealTimeInferenceConfig" ModelInfrastructureConfigProperty where
  type PropertyType "RealTimeInferenceConfig" ModelInfrastructureConfigProperty = RealTimeInferenceConfigProperty
  set newValue ModelInfrastructureConfigProperty {..}
    = ModelInfrastructureConfigProperty
        {realTimeInferenceConfig = newValue, ..}