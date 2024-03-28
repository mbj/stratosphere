module Stratosphere.SageMaker.EndpointConfig.ProductionVariantProperty (
        module Exports, ProductionVariantProperty(..),
        mkProductionVariantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ManagedInstanceScalingProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.RoutingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.ServerlessConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProductionVariantProperty
  = ProductionVariantProperty {acceleratorType :: (Prelude.Maybe (Value Prelude.Text)),
                               containerStartupHealthCheckTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               enableSSMAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                               initialInstanceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                               initialVariantWeight :: (Prelude.Maybe (Value Prelude.Double)),
                               instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                               managedInstanceScaling :: (Prelude.Maybe ManagedInstanceScalingProperty),
                               modelDataDownloadTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                               modelName :: (Prelude.Maybe (Value Prelude.Text)),
                               routingConfig :: (Prelude.Maybe RoutingConfigProperty),
                               serverlessConfig :: (Prelude.Maybe ServerlessConfigProperty),
                               variantName :: (Value Prelude.Text),
                               volumeSizeInGB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProductionVariantProperty ::
  Value Prelude.Text -> ProductionVariantProperty
mkProductionVariantProperty variantName
  = ProductionVariantProperty
      {variantName = variantName, acceleratorType = Prelude.Nothing,
       containerStartupHealthCheckTimeoutInSeconds = Prelude.Nothing,
       enableSSMAccess = Prelude.Nothing,
       initialInstanceCount = Prelude.Nothing,
       initialVariantWeight = Prelude.Nothing,
       instanceType = Prelude.Nothing,
       managedInstanceScaling = Prelude.Nothing,
       modelDataDownloadTimeoutInSeconds = Prelude.Nothing,
       modelName = Prelude.Nothing, routingConfig = Prelude.Nothing,
       serverlessConfig = Prelude.Nothing,
       volumeSizeInGB = Prelude.Nothing}
instance ToResourceProperties ProductionVariantProperty where
  toResourceProperties ProductionVariantProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ProductionVariant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VariantName" JSON..= variantName]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceleratorType" Prelude.<$> acceleratorType,
                               (JSON..=) "ContainerStartupHealthCheckTimeoutInSeconds"
                                 Prelude.<$> containerStartupHealthCheckTimeoutInSeconds,
                               (JSON..=) "EnableSSMAccess" Prelude.<$> enableSSMAccess,
                               (JSON..=) "InitialInstanceCount" Prelude.<$> initialInstanceCount,
                               (JSON..=) "InitialVariantWeight" Prelude.<$> initialVariantWeight,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "ManagedInstanceScaling"
                                 Prelude.<$> managedInstanceScaling,
                               (JSON..=) "ModelDataDownloadTimeoutInSeconds"
                                 Prelude.<$> modelDataDownloadTimeoutInSeconds,
                               (JSON..=) "ModelName" Prelude.<$> modelName,
                               (JSON..=) "RoutingConfig" Prelude.<$> routingConfig,
                               (JSON..=) "ServerlessConfig" Prelude.<$> serverlessConfig,
                               (JSON..=) "VolumeSizeInGB" Prelude.<$> volumeSizeInGB]))}
instance JSON.ToJSON ProductionVariantProperty where
  toJSON ProductionVariantProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VariantName" JSON..= variantName]
              (Prelude.catMaybes
                 [(JSON..=) "AcceleratorType" Prelude.<$> acceleratorType,
                  (JSON..=) "ContainerStartupHealthCheckTimeoutInSeconds"
                    Prelude.<$> containerStartupHealthCheckTimeoutInSeconds,
                  (JSON..=) "EnableSSMAccess" Prelude.<$> enableSSMAccess,
                  (JSON..=) "InitialInstanceCount" Prelude.<$> initialInstanceCount,
                  (JSON..=) "InitialVariantWeight" Prelude.<$> initialVariantWeight,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "ManagedInstanceScaling"
                    Prelude.<$> managedInstanceScaling,
                  (JSON..=) "ModelDataDownloadTimeoutInSeconds"
                    Prelude.<$> modelDataDownloadTimeoutInSeconds,
                  (JSON..=) "ModelName" Prelude.<$> modelName,
                  (JSON..=) "RoutingConfig" Prelude.<$> routingConfig,
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
    = ProductionVariantProperty
        {initialVariantWeight = Prelude.pure newValue, ..}
instance Property "InstanceType" ProductionVariantProperty where
  type PropertyType "InstanceType" ProductionVariantProperty = Value Prelude.Text
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "ManagedInstanceScaling" ProductionVariantProperty where
  type PropertyType "ManagedInstanceScaling" ProductionVariantProperty = ManagedInstanceScalingProperty
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {managedInstanceScaling = Prelude.pure newValue, ..}
instance Property "ModelDataDownloadTimeoutInSeconds" ProductionVariantProperty where
  type PropertyType "ModelDataDownloadTimeoutInSeconds" ProductionVariantProperty = Value Prelude.Integer
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {modelDataDownloadTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "ModelName" ProductionVariantProperty where
  type PropertyType "ModelName" ProductionVariantProperty = Value Prelude.Text
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty {modelName = Prelude.pure newValue, ..}
instance Property "RoutingConfig" ProductionVariantProperty where
  type PropertyType "RoutingConfig" ProductionVariantProperty = RoutingConfigProperty
  set newValue ProductionVariantProperty {..}
    = ProductionVariantProperty
        {routingConfig = Prelude.pure newValue, ..}
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