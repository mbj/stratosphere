module Stratosphere.ApiGateway.Deployment.DeploymentCanarySettingsProperty (
        DeploymentCanarySettingsProperty(..),
        mkDeploymentCanarySettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentCanarySettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html>
    DeploymentCanarySettingsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-percenttraffic>
                                      percentTraffic :: (Prelude.Maybe (Value Prelude.Double)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-stagevariableoverrides>
                                      stageVariableOverrides :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-deployment-deploymentcanarysettings.html#cfn-apigateway-deployment-deploymentcanarysettings-usestagecache>
                                      useStageCache :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentCanarySettingsProperty ::
  DeploymentCanarySettingsProperty
mkDeploymentCanarySettingsProperty
  = DeploymentCanarySettingsProperty
      {haddock_workaround_ = (), percentTraffic = Prelude.Nothing,
       stageVariableOverrides = Prelude.Nothing,
       useStageCache = Prelude.Nothing}
instance ToResourceProperties DeploymentCanarySettingsProperty where
  toResourceProperties DeploymentCanarySettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Deployment.DeploymentCanarySettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PercentTraffic" Prelude.<$> percentTraffic,
                            (JSON..=) "StageVariableOverrides"
                              Prelude.<$> stageVariableOverrides,
                            (JSON..=) "UseStageCache" Prelude.<$> useStageCache])}
instance JSON.ToJSON DeploymentCanarySettingsProperty where
  toJSON DeploymentCanarySettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PercentTraffic" Prelude.<$> percentTraffic,
               (JSON..=) "StageVariableOverrides"
                 Prelude.<$> stageVariableOverrides,
               (JSON..=) "UseStageCache" Prelude.<$> useStageCache]))
instance Property "PercentTraffic" DeploymentCanarySettingsProperty where
  type PropertyType "PercentTraffic" DeploymentCanarySettingsProperty = Value Prelude.Double
  set newValue DeploymentCanarySettingsProperty {..}
    = DeploymentCanarySettingsProperty
        {percentTraffic = Prelude.pure newValue, ..}
instance Property "StageVariableOverrides" DeploymentCanarySettingsProperty where
  type PropertyType "StageVariableOverrides" DeploymentCanarySettingsProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue DeploymentCanarySettingsProperty {..}
    = DeploymentCanarySettingsProperty
        {stageVariableOverrides = Prelude.pure newValue, ..}
instance Property "UseStageCache" DeploymentCanarySettingsProperty where
  type PropertyType "UseStageCache" DeploymentCanarySettingsProperty = Value Prelude.Bool
  set newValue DeploymentCanarySettingsProperty {..}
    = DeploymentCanarySettingsProperty
        {useStageCache = Prelude.pure newValue, ..}