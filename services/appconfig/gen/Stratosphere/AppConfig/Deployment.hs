module Stratosphere.AppConfig.Deployment (
        module Exports, Deployment(..), mkDeployment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppConfig.Deployment.DynamicExtensionParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.AppConfig.Deployment.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Deployment
  = Deployment {applicationId :: (Value Prelude.Text),
                configurationProfileId :: (Value Prelude.Text),
                configurationVersion :: (Value Prelude.Text),
                deploymentStrategyId :: (Value Prelude.Text),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                dynamicExtensionParameters :: (Prelude.Maybe [DynamicExtensionParametersProperty]),
                environmentId :: (Value Prelude.Text),
                kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Deployment
mkDeployment
  applicationId
  configurationProfileId
  configurationVersion
  deploymentStrategyId
  environmentId
  = Deployment
      {applicationId = applicationId,
       configurationProfileId = configurationProfileId,
       configurationVersion = configurationVersion,
       deploymentStrategyId = deploymentStrategyId,
       environmentId = environmentId, description = Prelude.Nothing,
       dynamicExtensionParameters = Prelude.Nothing,
       kmsKeyIdentifier = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Deployment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "ConfigurationProfileId" JSON..= configurationProfileId,
                            "ConfigurationVersion" JSON..= configurationVersion,
                            "DeploymentStrategyId" JSON..= deploymentStrategyId,
                            "EnvironmentId" JSON..= environmentId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DynamicExtensionParameters"
                                 Prelude.<$> dynamicExtensionParameters,
                               (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Deployment where
  toJSON Deployment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "ConfigurationProfileId" JSON..= configurationProfileId,
               "ConfigurationVersion" JSON..= configurationVersion,
               "DeploymentStrategyId" JSON..= deploymentStrategyId,
               "EnvironmentId" JSON..= environmentId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DynamicExtensionParameters"
                    Prelude.<$> dynamicExtensionParameters,
                  (JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationId" Deployment where
  type PropertyType "ApplicationId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {applicationId = newValue, ..}
instance Property "ConfigurationProfileId" Deployment where
  type PropertyType "ConfigurationProfileId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {configurationProfileId = newValue, ..}
instance Property "ConfigurationVersion" Deployment where
  type PropertyType "ConfigurationVersion" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {configurationVersion = newValue, ..}
instance Property "DeploymentStrategyId" Deployment where
  type PropertyType "DeploymentStrategyId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {deploymentStrategyId = newValue, ..}
instance Property "Description" Deployment where
  type PropertyType "Description" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {description = Prelude.pure newValue, ..}
instance Property "DynamicExtensionParameters" Deployment where
  type PropertyType "DynamicExtensionParameters" Deployment = [DynamicExtensionParametersProperty]
  set newValue Deployment {..}
    = Deployment
        {dynamicExtensionParameters = Prelude.pure newValue, ..}
instance Property "EnvironmentId" Deployment where
  type PropertyType "EnvironmentId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {environmentId = newValue, ..}
instance Property "KmsKeyIdentifier" Deployment where
  type PropertyType "KmsKeyIdentifier" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {kmsKeyIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" Deployment where
  type PropertyType "Tags" Deployment = [TagsProperty]
  set newValue Deployment {..}
    = Deployment {tags = Prelude.pure newValue, ..}