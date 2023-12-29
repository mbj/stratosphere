module Stratosphere.SageMaker.InferenceExperiment.ModelVariantConfigProperty (
        module Exports, ModelVariantConfigProperty(..),
        mkModelVariantConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.InferenceExperiment.ModelInfrastructureConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ModelVariantConfigProperty
  = ModelVariantConfigProperty {infrastructureConfig :: ModelInfrastructureConfigProperty,
                                modelName :: (Value Prelude.Text),
                                variantName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelVariantConfigProperty ::
  ModelInfrastructureConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> ModelVariantConfigProperty
mkModelVariantConfigProperty
  infrastructureConfig
  modelName
  variantName
  = ModelVariantConfigProperty
      {infrastructureConfig = infrastructureConfig,
       modelName = modelName, variantName = variantName}
instance ToResourceProperties ModelVariantConfigProperty where
  toResourceProperties ModelVariantConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.ModelVariantConfig",
         supportsTags = Prelude.False,
         properties = ["InfrastructureConfig" JSON..= infrastructureConfig,
                       "ModelName" JSON..= modelName, "VariantName" JSON..= variantName]}
instance JSON.ToJSON ModelVariantConfigProperty where
  toJSON ModelVariantConfigProperty {..}
    = JSON.object
        ["InfrastructureConfig" JSON..= infrastructureConfig,
         "ModelName" JSON..= modelName, "VariantName" JSON..= variantName]
instance Property "InfrastructureConfig" ModelVariantConfigProperty where
  type PropertyType "InfrastructureConfig" ModelVariantConfigProperty = ModelInfrastructureConfigProperty
  set newValue ModelVariantConfigProperty {..}
    = ModelVariantConfigProperty {infrastructureConfig = newValue, ..}
instance Property "ModelName" ModelVariantConfigProperty where
  type PropertyType "ModelName" ModelVariantConfigProperty = Value Prelude.Text
  set newValue ModelVariantConfigProperty {..}
    = ModelVariantConfigProperty {modelName = newValue, ..}
instance Property "VariantName" ModelVariantConfigProperty where
  type PropertyType "VariantName" ModelVariantConfigProperty = Value Prelude.Text
  set newValue ModelVariantConfigProperty {..}
    = ModelVariantConfigProperty {variantName = newValue, ..}