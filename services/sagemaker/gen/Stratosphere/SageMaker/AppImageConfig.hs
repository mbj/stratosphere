module Stratosphere.SageMaker.AppImageConfig (
        module Exports, AppImageConfig(..), mkAppImageConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.KernelGatewayImageConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AppImageConfig
  = AppImageConfig {appImageConfigName :: (Value Prelude.Text),
                    kernelGatewayImageConfig :: (Prelude.Maybe KernelGatewayImageConfigProperty),
                    tags :: (Prelude.Maybe [Tag])}
mkAppImageConfig :: Value Prelude.Text -> AppImageConfig
mkAppImageConfig appImageConfigName
  = AppImageConfig
      {appImageConfigName = appImageConfigName,
       kernelGatewayImageConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AppImageConfig where
  toResourceProperties AppImageConfig {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppImageConfigName" JSON..= appImageConfigName]
                           (Prelude.catMaybes
                              [(JSON..=) "KernelGatewayImageConfig"
                                 Prelude.<$> kernelGatewayImageConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AppImageConfig where
  toJSON AppImageConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppImageConfigName" JSON..= appImageConfigName]
              (Prelude.catMaybes
                 [(JSON..=) "KernelGatewayImageConfig"
                    Prelude.<$> kernelGatewayImageConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppImageConfigName" AppImageConfig where
  type PropertyType "AppImageConfigName" AppImageConfig = Value Prelude.Text
  set newValue AppImageConfig {..}
    = AppImageConfig {appImageConfigName = newValue, ..}
instance Property "KernelGatewayImageConfig" AppImageConfig where
  type PropertyType "KernelGatewayImageConfig" AppImageConfig = KernelGatewayImageConfigProperty
  set newValue AppImageConfig {..}
    = AppImageConfig
        {kernelGatewayImageConfig = Prelude.pure newValue, ..}
instance Property "Tags" AppImageConfig where
  type PropertyType "Tags" AppImageConfig = [Tag]
  set newValue AppImageConfig {..}
    = AppImageConfig {tags = Prelude.pure newValue, ..}