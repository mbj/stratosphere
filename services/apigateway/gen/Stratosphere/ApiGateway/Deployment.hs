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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html>
    Deployment {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-deploymentcanarysettings>
                deploymentCanarySettings :: (Prelude.Maybe DeploymentCanarySettingsProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-restapiid>
                restApiId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-stagedescription>
                stageDescription :: (Prelude.Maybe StageDescriptionProperty),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-deployment.html#cfn-apigateway-deployment-stagename>
                stageName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeployment :: Value Prelude.Text -> Deployment
mkDeployment restApiId
  = Deployment
      {haddock_workaround_ = (), restApiId = restApiId,
       deploymentCanarySettings = Prelude.Nothing,
       description = Prelude.Nothing, stageDescription = Prelude.Nothing,
       stageName = Prelude.Nothing}
instance ToResourceProperties Deployment where
  toResourceProperties Deployment {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Deployment",
         supportsTags = Prelude.False,
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