module Stratosphere.ApiGatewayV2.Stage (
        module Exports, Stage(..), mkStage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Stage.AccessLogSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.Stage.RouteSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Stage
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html>
    Stage {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-accesslogsettings>
           accessLogSettings :: (Prelude.Maybe AccessLogSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-accesspolicyid>
           accessPolicyId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-apiid>
           apiId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-autodeploy>
           autoDeploy :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-clientcertificateid>
           clientCertificateId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-defaultroutesettings>
           defaultRouteSettings :: (Prelude.Maybe RouteSettingsProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-deploymentid>
           deploymentId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-routesettings>
           routeSettings :: (Prelude.Maybe JSON.Object),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-stagename>
           stageName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-stagevariables>
           stageVariables :: (Prelude.Maybe JSON.Object),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-stage.html#cfn-apigatewayv2-stage-tags>
           tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStage :: Value Prelude.Text -> Value Prelude.Text -> Stage
mkStage apiId stageName
  = Stage
      {haddock_workaround_ = (), apiId = apiId, stageName = stageName,
       accessLogSettings = Prelude.Nothing,
       accessPolicyId = Prelude.Nothing, autoDeploy = Prelude.Nothing,
       clientCertificateId = Prelude.Nothing,
       defaultRouteSettings = Prelude.Nothing,
       deploymentId = Prelude.Nothing, description = Prelude.Nothing,
       routeSettings = Prelude.Nothing, stageVariables = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Stage where
  toResourceProperties Stage {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Stage", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "StageName" JSON..= stageName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLogSettings" Prelude.<$> accessLogSettings,
                               (JSON..=) "AccessPolicyId" Prelude.<$> accessPolicyId,
                               (JSON..=) "AutoDeploy" Prelude.<$> autoDeploy,
                               (JSON..=) "ClientCertificateId" Prelude.<$> clientCertificateId,
                               (JSON..=) "DefaultRouteSettings" Prelude.<$> defaultRouteSettings,
                               (JSON..=) "DeploymentId" Prelude.<$> deploymentId,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RouteSettings" Prelude.<$> routeSettings,
                               (JSON..=) "StageVariables" Prelude.<$> stageVariables,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Stage where
  toJSON Stage {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "StageName" JSON..= stageName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLogSettings" Prelude.<$> accessLogSettings,
                  (JSON..=) "AccessPolicyId" Prelude.<$> accessPolicyId,
                  (JSON..=) "AutoDeploy" Prelude.<$> autoDeploy,
                  (JSON..=) "ClientCertificateId" Prelude.<$> clientCertificateId,
                  (JSON..=) "DefaultRouteSettings" Prelude.<$> defaultRouteSettings,
                  (JSON..=) "DeploymentId" Prelude.<$> deploymentId,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RouteSettings" Prelude.<$> routeSettings,
                  (JSON..=) "StageVariables" Prelude.<$> stageVariables,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessLogSettings" Stage where
  type PropertyType "AccessLogSettings" Stage = AccessLogSettingsProperty
  set newValue Stage {..}
    = Stage {accessLogSettings = Prelude.pure newValue, ..}
instance Property "AccessPolicyId" Stage where
  type PropertyType "AccessPolicyId" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {accessPolicyId = Prelude.pure newValue, ..}
instance Property "ApiId" Stage where
  type PropertyType "ApiId" Stage = Value Prelude.Text
  set newValue Stage {..} = Stage {apiId = newValue, ..}
instance Property "AutoDeploy" Stage where
  type PropertyType "AutoDeploy" Stage = Value Prelude.Bool
  set newValue Stage {..}
    = Stage {autoDeploy = Prelude.pure newValue, ..}
instance Property "ClientCertificateId" Stage where
  type PropertyType "ClientCertificateId" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {clientCertificateId = Prelude.pure newValue, ..}
instance Property "DefaultRouteSettings" Stage where
  type PropertyType "DefaultRouteSettings" Stage = RouteSettingsProperty
  set newValue Stage {..}
    = Stage {defaultRouteSettings = Prelude.pure newValue, ..}
instance Property "DeploymentId" Stage where
  type PropertyType "DeploymentId" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {deploymentId = Prelude.pure newValue, ..}
instance Property "Description" Stage where
  type PropertyType "Description" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {description = Prelude.pure newValue, ..}
instance Property "RouteSettings" Stage where
  type PropertyType "RouteSettings" Stage = JSON.Object
  set newValue Stage {..}
    = Stage {routeSettings = Prelude.pure newValue, ..}
instance Property "StageName" Stage where
  type PropertyType "StageName" Stage = Value Prelude.Text
  set newValue Stage {..} = Stage {stageName = newValue, ..}
instance Property "StageVariables" Stage where
  type PropertyType "StageVariables" Stage = JSON.Object
  set newValue Stage {..}
    = Stage {stageVariables = Prelude.pure newValue, ..}
instance Property "Tags" Stage where
  type PropertyType "Tags" Stage = JSON.Object
  set newValue Stage {..} = Stage {tags = Prelude.pure newValue, ..}