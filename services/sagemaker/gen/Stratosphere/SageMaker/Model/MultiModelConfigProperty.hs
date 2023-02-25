module Stratosphere.SageMaker.Model.MultiModelConfigProperty (
        MultiModelConfigProperty(..), mkMultiModelConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiModelConfigProperty
  = MultiModelConfigProperty {modelCacheSetting :: (Prelude.Maybe (Value Prelude.Text))}
mkMultiModelConfigProperty :: MultiModelConfigProperty
mkMultiModelConfigProperty
  = MultiModelConfigProperty {modelCacheSetting = Prelude.Nothing}
instance ToResourceProperties MultiModelConfigProperty where
  toResourceProperties MultiModelConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.MultiModelConfig",
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
  set newValue MultiModelConfigProperty {}
    = MultiModelConfigProperty
        {modelCacheSetting = Prelude.pure newValue, ..}