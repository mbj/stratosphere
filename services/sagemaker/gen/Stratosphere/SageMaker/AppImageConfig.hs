module Stratosphere.SageMaker.AppImageConfig (
        module Exports, AppImageConfig(..), mkAppImageConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.CodeEditorAppImageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.JupyterLabAppImageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.KernelGatewayImageConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AppImageConfig
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-appimageconfig.html>
    AppImageConfig {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-appimageconfig.html#cfn-sagemaker-appimageconfig-appimageconfigname>
                    appImageConfigName :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-appimageconfig.html#cfn-sagemaker-appimageconfig-codeeditorappimageconfig>
                    codeEditorAppImageConfig :: (Prelude.Maybe CodeEditorAppImageConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-appimageconfig.html#cfn-sagemaker-appimageconfig-jupyterlabappimageconfig>
                    jupyterLabAppImageConfig :: (Prelude.Maybe JupyterLabAppImageConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-appimageconfig.html#cfn-sagemaker-appimageconfig-kernelgatewayimageconfig>
                    kernelGatewayImageConfig :: (Prelude.Maybe KernelGatewayImageConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-appimageconfig.html#cfn-sagemaker-appimageconfig-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppImageConfig :: Value Prelude.Text -> AppImageConfig
mkAppImageConfig appImageConfigName
  = AppImageConfig
      {appImageConfigName = appImageConfigName,
       codeEditorAppImageConfig = Prelude.Nothing,
       jupyterLabAppImageConfig = Prelude.Nothing,
       kernelGatewayImageConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AppImageConfig where
  toResourceProperties AppImageConfig {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppImageConfigName" JSON..= appImageConfigName]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeEditorAppImageConfig"
                                 Prelude.<$> codeEditorAppImageConfig,
                               (JSON..=) "JupyterLabAppImageConfig"
                                 Prelude.<$> jupyterLabAppImageConfig,
                               (JSON..=) "KernelGatewayImageConfig"
                                 Prelude.<$> kernelGatewayImageConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AppImageConfig where
  toJSON AppImageConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppImageConfigName" JSON..= appImageConfigName]
              (Prelude.catMaybes
                 [(JSON..=) "CodeEditorAppImageConfig"
                    Prelude.<$> codeEditorAppImageConfig,
                  (JSON..=) "JupyterLabAppImageConfig"
                    Prelude.<$> jupyterLabAppImageConfig,
                  (JSON..=) "KernelGatewayImageConfig"
                    Prelude.<$> kernelGatewayImageConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppImageConfigName" AppImageConfig where
  type PropertyType "AppImageConfigName" AppImageConfig = Value Prelude.Text
  set newValue AppImageConfig {..}
    = AppImageConfig {appImageConfigName = newValue, ..}
instance Property "CodeEditorAppImageConfig" AppImageConfig where
  type PropertyType "CodeEditorAppImageConfig" AppImageConfig = CodeEditorAppImageConfigProperty
  set newValue AppImageConfig {..}
    = AppImageConfig
        {codeEditorAppImageConfig = Prelude.pure newValue, ..}
instance Property "JupyterLabAppImageConfig" AppImageConfig where
  type PropertyType "JupyterLabAppImageConfig" AppImageConfig = JupyterLabAppImageConfigProperty
  set newValue AppImageConfig {..}
    = AppImageConfig
        {jupyterLabAppImageConfig = Prelude.pure newValue, ..}
instance Property "KernelGatewayImageConfig" AppImageConfig where
  type PropertyType "KernelGatewayImageConfig" AppImageConfig = KernelGatewayImageConfigProperty
  set newValue AppImageConfig {..}
    = AppImageConfig
        {kernelGatewayImageConfig = Prelude.pure newValue, ..}
instance Property "Tags" AppImageConfig where
  type PropertyType "Tags" AppImageConfig = [Tag]
  set newValue AppImageConfig {..}
    = AppImageConfig {tags = Prelude.pure newValue, ..}