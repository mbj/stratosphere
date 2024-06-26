module Stratosphere.SageMaker.EndpointConfig (
        module Exports, EndpointConfig(..), mkEndpointConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.AsyncInferenceConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.DataCaptureConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ExplainerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ProductionVariantProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EndpointConfig
  = EndpointConfig {asyncInferenceConfig :: (Prelude.Maybe AsyncInferenceConfigProperty),
                    dataCaptureConfig :: (Prelude.Maybe DataCaptureConfigProperty),
                    enableNetworkIsolation :: (Prelude.Maybe (Value Prelude.Bool)),
                    endpointConfigName :: (Prelude.Maybe (Value Prelude.Text)),
                    executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    explainerConfig :: (Prelude.Maybe ExplainerConfigProperty),
                    kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                    productionVariants :: [ProductionVariantProperty],
                    shadowProductionVariants :: (Prelude.Maybe [ProductionVariantProperty]),
                    tags :: (Prelude.Maybe [Tag]),
                    vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEndpointConfig :: [ProductionVariantProperty] -> EndpointConfig
mkEndpointConfig productionVariants
  = EndpointConfig
      {productionVariants = productionVariants,
       asyncInferenceConfig = Prelude.Nothing,
       dataCaptureConfig = Prelude.Nothing,
       enableNetworkIsolation = Prelude.Nothing,
       endpointConfigName = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing,
       explainerConfig = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       shadowProductionVariants = Prelude.Nothing, tags = Prelude.Nothing,
       vpcConfig = Prelude.Nothing}
instance ToResourceProperties EndpointConfig where
  toResourceProperties EndpointConfig {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProductionVariants" JSON..= productionVariants]
                           (Prelude.catMaybes
                              [(JSON..=) "AsyncInferenceConfig" Prelude.<$> asyncInferenceConfig,
                               (JSON..=) "DataCaptureConfig" Prelude.<$> dataCaptureConfig,
                               (JSON..=) "EnableNetworkIsolation"
                                 Prelude.<$> enableNetworkIsolation,
                               (JSON..=) "EndpointConfigName" Prelude.<$> endpointConfigName,
                               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "ExplainerConfig" Prelude.<$> explainerConfig,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "ShadowProductionVariants"
                                 Prelude.<$> shadowProductionVariants,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON EndpointConfig where
  toJSON EndpointConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProductionVariants" JSON..= productionVariants]
              (Prelude.catMaybes
                 [(JSON..=) "AsyncInferenceConfig" Prelude.<$> asyncInferenceConfig,
                  (JSON..=) "DataCaptureConfig" Prelude.<$> dataCaptureConfig,
                  (JSON..=) "EnableNetworkIsolation"
                    Prelude.<$> enableNetworkIsolation,
                  (JSON..=) "EndpointConfigName" Prelude.<$> endpointConfigName,
                  (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "ExplainerConfig" Prelude.<$> explainerConfig,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "ShadowProductionVariants"
                    Prelude.<$> shadowProductionVariants,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "AsyncInferenceConfig" EndpointConfig where
  type PropertyType "AsyncInferenceConfig" EndpointConfig = AsyncInferenceConfigProperty
  set newValue EndpointConfig {..}
    = EndpointConfig {asyncInferenceConfig = Prelude.pure newValue, ..}
instance Property "DataCaptureConfig" EndpointConfig where
  type PropertyType "DataCaptureConfig" EndpointConfig = DataCaptureConfigProperty
  set newValue EndpointConfig {..}
    = EndpointConfig {dataCaptureConfig = Prelude.pure newValue, ..}
instance Property "EnableNetworkIsolation" EndpointConfig where
  type PropertyType "EnableNetworkIsolation" EndpointConfig = Value Prelude.Bool
  set newValue EndpointConfig {..}
    = EndpointConfig
        {enableNetworkIsolation = Prelude.pure newValue, ..}
instance Property "EndpointConfigName" EndpointConfig where
  type PropertyType "EndpointConfigName" EndpointConfig = Value Prelude.Text
  set newValue EndpointConfig {..}
    = EndpointConfig {endpointConfigName = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" EndpointConfig where
  type PropertyType "ExecutionRoleArn" EndpointConfig = Value Prelude.Text
  set newValue EndpointConfig {..}
    = EndpointConfig {executionRoleArn = Prelude.pure newValue, ..}
instance Property "ExplainerConfig" EndpointConfig where
  type PropertyType "ExplainerConfig" EndpointConfig = ExplainerConfigProperty
  set newValue EndpointConfig {..}
    = EndpointConfig {explainerConfig = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EndpointConfig where
  type PropertyType "KmsKeyId" EndpointConfig = Value Prelude.Text
  set newValue EndpointConfig {..}
    = EndpointConfig {kmsKeyId = Prelude.pure newValue, ..}
instance Property "ProductionVariants" EndpointConfig where
  type PropertyType "ProductionVariants" EndpointConfig = [ProductionVariantProperty]
  set newValue EndpointConfig {..}
    = EndpointConfig {productionVariants = newValue, ..}
instance Property "ShadowProductionVariants" EndpointConfig where
  type PropertyType "ShadowProductionVariants" EndpointConfig = [ProductionVariantProperty]
  set newValue EndpointConfig {..}
    = EndpointConfig
        {shadowProductionVariants = Prelude.pure newValue, ..}
instance Property "Tags" EndpointConfig where
  type PropertyType "Tags" EndpointConfig = [Tag]
  set newValue EndpointConfig {..}
    = EndpointConfig {tags = Prelude.pure newValue, ..}
instance Property "VpcConfig" EndpointConfig where
  type PropertyType "VpcConfig" EndpointConfig = VpcConfigProperty
  set newValue EndpointConfig {..}
    = EndpointConfig {vpcConfig = Prelude.pure newValue, ..}