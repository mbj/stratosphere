module Stratosphere.SageMaker.Endpoint (
        module Exports, Endpoint(..), mkEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.DeploymentConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.VariantPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Endpoint
  = Endpoint {deploymentConfig :: (Prelude.Maybe DeploymentConfigProperty),
              endpointConfigName :: (Value Prelude.Text),
              endpointName :: (Prelude.Maybe (Value Prelude.Text)),
              excludeRetainedVariantProperties :: (Prelude.Maybe [VariantPropertyProperty]),
              retainAllVariantProperties :: (Prelude.Maybe (Value Prelude.Bool)),
              retainDeploymentConfig :: (Prelude.Maybe (Value Prelude.Bool)),
              tags :: (Prelude.Maybe [Tag])}
mkEndpoint :: Value Prelude.Text -> Endpoint
mkEndpoint endpointConfigName
  = Endpoint
      {endpointConfigName = endpointConfigName,
       deploymentConfig = Prelude.Nothing, endpointName = Prelude.Nothing,
       excludeRetainedVariantProperties = Prelude.Nothing,
       retainAllVariantProperties = Prelude.Nothing,
       retainDeploymentConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Endpoint where
  toResourceProperties Endpoint {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointConfigName" JSON..= endpointConfigName]
                           (Prelude.catMaybes
                              [(JSON..=) "DeploymentConfig" Prelude.<$> deploymentConfig,
                               (JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "ExcludeRetainedVariantProperties"
                                 Prelude.<$> excludeRetainedVariantProperties,
                               (JSON..=) "RetainAllVariantProperties"
                                 Prelude.<$> retainAllVariantProperties,
                               (JSON..=) "RetainDeploymentConfig"
                                 Prelude.<$> retainDeploymentConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Endpoint where
  toJSON Endpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointConfigName" JSON..= endpointConfigName]
              (Prelude.catMaybes
                 [(JSON..=) "DeploymentConfig" Prelude.<$> deploymentConfig,
                  (JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "ExcludeRetainedVariantProperties"
                    Prelude.<$> excludeRetainedVariantProperties,
                  (JSON..=) "RetainAllVariantProperties"
                    Prelude.<$> retainAllVariantProperties,
                  (JSON..=) "RetainDeploymentConfig"
                    Prelude.<$> retainDeploymentConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeploymentConfig" Endpoint where
  type PropertyType "DeploymentConfig" Endpoint = DeploymentConfigProperty
  set newValue Endpoint {..}
    = Endpoint {deploymentConfig = Prelude.pure newValue, ..}
instance Property "EndpointConfigName" Endpoint where
  type PropertyType "EndpointConfigName" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {endpointConfigName = newValue, ..}
instance Property "EndpointName" Endpoint where
  type PropertyType "EndpointName" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {endpointName = Prelude.pure newValue, ..}
instance Property "ExcludeRetainedVariantProperties" Endpoint where
  type PropertyType "ExcludeRetainedVariantProperties" Endpoint = [VariantPropertyProperty]
  set newValue Endpoint {..}
    = Endpoint
        {excludeRetainedVariantProperties = Prelude.pure newValue, ..}
instance Property "RetainAllVariantProperties" Endpoint where
  type PropertyType "RetainAllVariantProperties" Endpoint = Value Prelude.Bool
  set newValue Endpoint {..}
    = Endpoint {retainAllVariantProperties = Prelude.pure newValue, ..}
instance Property "RetainDeploymentConfig" Endpoint where
  type PropertyType "RetainDeploymentConfig" Endpoint = Value Prelude.Bool
  set newValue Endpoint {..}
    = Endpoint {retainDeploymentConfig = Prelude.pure newValue, ..}
instance Property "Tags" Endpoint where
  type PropertyType "Tags" Endpoint = [Tag]
  set newValue Endpoint {..}
    = Endpoint {tags = Prelude.pure newValue, ..}