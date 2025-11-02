module Stratosphere.ApiGateway.Stage (
        module Exports, Stage(..), mkStage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.Stage.AccessLogSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.Stage.CanarySettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.Stage.MethodSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stage
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html>
    Stage {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-accesslogsetting>
           accessLogSetting :: (Prelude.Maybe AccessLogSettingProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclusterenabled>
           cacheClusterEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-cacheclustersize>
           cacheClusterSize :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-canarysetting>
           canarySetting :: (Prelude.Maybe CanarySettingProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-clientcertificateid>
           clientCertificateId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-deploymentid>
           deploymentId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-documentationversion>
           documentationVersion :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-methodsettings>
           methodSettings :: (Prelude.Maybe [MethodSettingProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-restapiid>
           restApiId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-stagename>
           stageName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-tracingenabled>
           tracingEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-stage.html#cfn-apigateway-stage-variables>
           variables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStage :: Value Prelude.Text -> Stage
mkStage restApiId
  = Stage
      {haddock_workaround_ = (), restApiId = restApiId,
       accessLogSetting = Prelude.Nothing,
       cacheClusterEnabled = Prelude.Nothing,
       cacheClusterSize = Prelude.Nothing,
       canarySetting = Prelude.Nothing,
       clientCertificateId = Prelude.Nothing,
       deploymentId = Prelude.Nothing, description = Prelude.Nothing,
       documentationVersion = Prelude.Nothing,
       methodSettings = Prelude.Nothing, stageName = Prelude.Nothing,
       tags = Prelude.Nothing, tracingEnabled = Prelude.Nothing,
       variables = Prelude.Nothing}
instance ToResourceProperties Stage where
  toResourceProperties Stage {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Stage", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RestApiId" JSON..= restApiId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLogSetting" Prelude.<$> accessLogSetting,
                               (JSON..=) "CacheClusterEnabled" Prelude.<$> cacheClusterEnabled,
                               (JSON..=) "CacheClusterSize" Prelude.<$> cacheClusterSize,
                               (JSON..=) "CanarySetting" Prelude.<$> canarySetting,
                               (JSON..=) "ClientCertificateId" Prelude.<$> clientCertificateId,
                               (JSON..=) "DeploymentId" Prelude.<$> deploymentId,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DocumentationVersion" Prelude.<$> documentationVersion,
                               (JSON..=) "MethodSettings" Prelude.<$> methodSettings,
                               (JSON..=) "StageName" Prelude.<$> stageName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TracingEnabled" Prelude.<$> tracingEnabled,
                               (JSON..=) "Variables" Prelude.<$> variables]))}
instance JSON.ToJSON Stage where
  toJSON Stage {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RestApiId" JSON..= restApiId]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLogSetting" Prelude.<$> accessLogSetting,
                  (JSON..=) "CacheClusterEnabled" Prelude.<$> cacheClusterEnabled,
                  (JSON..=) "CacheClusterSize" Prelude.<$> cacheClusterSize,
                  (JSON..=) "CanarySetting" Prelude.<$> canarySetting,
                  (JSON..=) "ClientCertificateId" Prelude.<$> clientCertificateId,
                  (JSON..=) "DeploymentId" Prelude.<$> deploymentId,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DocumentationVersion" Prelude.<$> documentationVersion,
                  (JSON..=) "MethodSettings" Prelude.<$> methodSettings,
                  (JSON..=) "StageName" Prelude.<$> stageName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TracingEnabled" Prelude.<$> tracingEnabled,
                  (JSON..=) "Variables" Prelude.<$> variables])))
instance Property "AccessLogSetting" Stage where
  type PropertyType "AccessLogSetting" Stage = AccessLogSettingProperty
  set newValue Stage {..}
    = Stage {accessLogSetting = Prelude.pure newValue, ..}
instance Property "CacheClusterEnabled" Stage where
  type PropertyType "CacheClusterEnabled" Stage = Value Prelude.Bool
  set newValue Stage {..}
    = Stage {cacheClusterEnabled = Prelude.pure newValue, ..}
instance Property "CacheClusterSize" Stage where
  type PropertyType "CacheClusterSize" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {cacheClusterSize = Prelude.pure newValue, ..}
instance Property "CanarySetting" Stage where
  type PropertyType "CanarySetting" Stage = CanarySettingProperty
  set newValue Stage {..}
    = Stage {canarySetting = Prelude.pure newValue, ..}
instance Property "ClientCertificateId" Stage where
  type PropertyType "ClientCertificateId" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {clientCertificateId = Prelude.pure newValue, ..}
instance Property "DeploymentId" Stage where
  type PropertyType "DeploymentId" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {deploymentId = Prelude.pure newValue, ..}
instance Property "Description" Stage where
  type PropertyType "Description" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {description = Prelude.pure newValue, ..}
instance Property "DocumentationVersion" Stage where
  type PropertyType "DocumentationVersion" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {documentationVersion = Prelude.pure newValue, ..}
instance Property "MethodSettings" Stage where
  type PropertyType "MethodSettings" Stage = [MethodSettingProperty]
  set newValue Stage {..}
    = Stage {methodSettings = Prelude.pure newValue, ..}
instance Property "RestApiId" Stage where
  type PropertyType "RestApiId" Stage = Value Prelude.Text
  set newValue Stage {..} = Stage {restApiId = newValue, ..}
instance Property "StageName" Stage where
  type PropertyType "StageName" Stage = Value Prelude.Text
  set newValue Stage {..}
    = Stage {stageName = Prelude.pure newValue, ..}
instance Property "Tags" Stage where
  type PropertyType "Tags" Stage = [Tag]
  set newValue Stage {..} = Stage {tags = Prelude.pure newValue, ..}
instance Property "TracingEnabled" Stage where
  type PropertyType "TracingEnabled" Stage = Value Prelude.Bool
  set newValue Stage {..}
    = Stage {tracingEnabled = Prelude.pure newValue, ..}
instance Property "Variables" Stage where
  type PropertyType "Variables" Stage = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Stage {..}
    = Stage {variables = Prelude.pure newValue, ..}