module Stratosphere.SageMaker.EndpointConfig.ProductionVariantProperty (
        module Exports, ProductionVariantProperty(..),
        mkProductionVariantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ServerlessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProductionVariantProperty
  = ProductionVariantProperty {acceleratorType :: (Prelude.Maybe (Value Prelude.Text)),
                               containerStartupHealthCheckTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               enableSSMAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                               initialInstanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                               initialVariantWeight :: (Value Prelude.Double),
                               instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                               modelDataDownloadTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               modelName :: (Value Prelude.Text),
                               serverlessConfig :: (Prelude.Maybe ServerlessConfigProperty),
                               variantName :: (Value Prelude.Text),
                               volumeSizeInGB :: (Prelude.Maybe (Value Prelude.Integer))}
mkProductionVariantProperty ::
  Value Prelude.Double
  -> Value Prelude.Text
     -> Value Prelude.Text -> ProductionVariantProperty
mkProductionVariantProperty
  initialVariantWeight
  modelName
  variantName
  = ProductionVariantProperty
      {initialVariantWeight = initialVariantWeight,
       modelName = modelName, variantName = variantName,
       acceleratorType = Prelude.Nothing,
       containerStartupHealthCheckTimeoutInSeconds = Prelude.Nothing,
       enableSSMAccess = Prelude.Nothing,
       initialInstanceCount = Prelude.Nothing,
       instanceType = Prelude.Nothing,
       modelDataDownloadTimeoutInSeconds = Prelude.Nothing,
       serverlessConfig = Prelude.Nothing,
       volumeSizeInGB = Prelude.Nothing}
instance ToResourceProperties ProductionVariantProperty where
  toResourceProperties ProductionVariantProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ProductionVariant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InitialVariantWeight" JSON..= initialVariantWeight,
                            "ModelName" JSON..= modelName, "VariantName" JSON..= variantName]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceleratorType" Prelude.<$> acceleratorType,
                               (JSON..=) "ContainerStartupHealthCheckTimeoutInSeconds"
                                 Prelude.<$> containerStartupHealthCheckTimeoutInSeconds,
                               (JSON..=) "EnableSSMAccess" Prelude.<$> enableSSMAccess,
                               (JSON..=) "InitialInstanceCount" Prelude.<$> initialInstanceCount,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "ModelDataDownloadTimeoutInSeconds"
                                 Prelude.<$> modelDataDownloadTimeoutInSeconds,
                               (JSON..=) "ServerlessConfig" Prelude.<$> serverlessConfig,
                               (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB]))}
instance JSON.ToJSON ProductionVariantProperty where
  toJSON ProductionVariantProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InitialVariantWeight" JSON..= initialVariantWeight,
               "ModelName" JSON..= modelName, "VariantName" JSON..= variantName]
              (Prelude.catMaybes
                 [(JSON..=) "AcceleratorType" Prelude.<$> acceleratorType,
                  (JSON..=) "ContainerStartupHealthCheckTimeoutInSeconds"
                    Prelude.<$> containerStartupHealthCheckTimeoutInSeconds,
                  (JSON..=) "EnableSSMAccess" Prelude.<$> enableSSMAccess,
                  (JSON..=) "InitialInstanceCount" Prelude.<$> initialInstanceCount,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "ModelDataDownloadTimeoutInSeconds"
                    Prelude.<$> modelDataDownloadTimeoutInSeconds,
                  (JSON..=) "ServerlessConfig" Prelude.<$> serverlessConfig,
                  (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB])))
instance Property "AcceleratorType" ProductionVariantProperty where
  type PropertyType "AcceleratorType" ProductionVariantProperty = Value Prelude.Text
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {acceleratorType = Prelude.pure newValue, ..}
instance Property "ContainerStartupHealthCheckTimeoutInSeconds" ProductionVariantProperty where
  type PropertyType "ContainerStartupHealthCheckTimeoutInSeconds" ProductionVariantProperty = Value Prelude.Integer
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {containerStartupHealthCheckTimeoutInSeconds = Prelude.pure
                                                         newValue,
         ..}
instance Property "EnableSSMAccess" ProductionVariantProperty where
  type PropertyType "EnableSSMAccess" ProductionVariantProperty = Value Prelude.Bool
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {enableSSMAccess = Prelude.pure newValue, ..}
instance Property "InitialInstanceCount" ProductionVariantProperty where
  type PropertyType "InitialInstanceCount" ProductionVariantProperty = Value Prelude.Integer
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {initialInstanceCount = Prelude.pure newValue, ..}
instance Property "InitialVariantWeight" ProductionVariantProperty where
  type PropertyType "InitialVariantWeight" ProductionVariantProperty = Value Prelude.Double
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty {initialVariantWeight = newValue, ..}
instance Property "InstanceType" ProductionVariantProperty where
  type PropertyType "InstanceType" ProductionVariantProperty = Value Prelude.Text
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "ModelDataDownloadTimeoutInSeconds" ProductionVariantProperty where
  type PropertyType "ModelDataDownloadTimeoutInSeconds" ProductionVariantProperty = Value Prelude.Integer
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {modelDataDownloadTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "ModelName" ProductionVariantProperty where
  type PropertyType "ModelName" ProductionVariantProperty = Value Prelude.Text
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty {modelName = newValue, ..}
instance Property "ServerlessConfig" ProductionVariantProperty where
  type PropertyType "ServerlessConfig" ProductionVariantProperty = ServerlessConfigProperty
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {serverlessConfig = Prelude.pure newValue, ..}
instance Property "VariantName" ProductionVariantProperty where
  type PropertyType "VariantName" ProductionVariantProperty = Value Prelude.Text
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty {variantName = newValue, ..}
instance Property "VolumeSizeInGB" ProductionVariantProperty where
  type PropertyType "VolumeSizeInGB" ProductionVariantProperty = Value Prelude.Integer
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {volumeSizeInGB = Prelude.pure newValue, ..}