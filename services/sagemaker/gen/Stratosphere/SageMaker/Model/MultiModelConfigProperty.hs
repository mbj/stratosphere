module Stratosphere.SageMaker.Model.MultiModelConfigProperty (
        MultiModelConfigProperty(..), mkMultiModelConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiModelConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition-multimodelconfig.html>
    MultiModelConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition-multimodelconfig.html#cfn-sagemaker-model-containerdefinition-multimodelconfig-modelcachesetting>
                              modelCacheSetting :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiModelConfigProperty :: MultiModelConfigProperty
mkMultiModelConfigProperty
  = MultiModelConfigProperty
      {haddock_workaround_ = (), modelCacheSetting = Prelude.Nothing}
instance ToResourceProperties MultiModelConfigProperty where
  toResourceProperties MultiModelConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.MultiModelConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ModelCacheSetting" Prelude.<$> modelCacheSetting])}
instance JSON.ToJSON MultiModelConfigProperty where
  toJSON MultiModelConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ModelCacheSetting" Prelude.<$> modelCacheSetting]))
instance Property "ModelCacheSetting" MultiModelConfigProperty where
  type PropertyType "ModelCacheSetting" MultiModelConfigProperty = Value Prelude.Text
  set newValue MultiModelConfigProperty {..}
    = MultiModelConfigProperty
        {modelCacheSetting = Prelude.pure newValue, ..}