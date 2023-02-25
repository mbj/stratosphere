module Stratosphere.ApiGateway.Deployment (
        module Exports, Deployment(..), mkDeployment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.Deployment.DeploymentCanarySettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.Deployment.StageDescriptionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Deployment
  = Deployment {deploymentCanarySettings :: (Prelude.Maybe DeploymentCanarySettingsProperty),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                restApiId :: (Value Prelude.Text),
                stageDescription :: (Prelude.Maybe StageDescriptionProperty),
                stageName :: (Prelude.Maybe (Value Prelude.Text))}
mkDeployment :: Value Prelude.Text -> Deployment
mkDeployment restApiId
  = Deployment
      {restApiId = restApiId, deploymentCanarySettings = Prelude.Nothing,
       description = Prelude.Nothing, stageDescription = Prelude.Nothing,
       stageName = Prelude.Nothing}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Deployment",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "DeploymentCanarySettings"
                                 Prelude.<$> deploymentCanarySettings,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "StageDescription" Prelude.<$> stageDescription,
                               (JSON..=) "StageName" Prelude.<$> stageName]))}
instance JSON.ToJSON Deployment where
  toJSON Deployment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "DeploymentCanarySettings"
                    Prelude.<$> deploymentCanarySettings,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "StageDescription" Prelude.<$> stageDescription,
                  (JSON..=) "StageName" Prelude.<$> stageName])))
instance Property "DeploymentCanarySettings" Deployment where
  type PropertyType "DeploymentCanarySettings" Deployment = DeploymentCanarySettingsProperty
  set newValue Deployment {..}
    = Deployment {deploymentCanarySettings = Prelude.pure newValue, ..}
instance Property "Description" Deployment where
  type PropertyType "Description" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {description = Prelude.pure newValue, ..}
instance Property "RestApiId" Deployment where
  type PropertyType "RestApiId" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {restApiId = newValue, ..}
instance Property "StageDescription" Deployment where
  type PropertyType "StageDescription" Deployment = StageDescriptionProperty
  set newValue Deployment {..}
    = Deployment {stageDescription = Prelude.pure newValue, ..}
instance Property "StageName" Deployment where
  type PropertyType "StageName" Deployment = Value Prelude.Text
  set newValue Deployment {..}
    = Deployment {stageName = Prelude.pure newValue, ..}