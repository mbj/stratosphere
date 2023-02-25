module Stratosphere.SageMaker.AppImageConfig.KernelGatewayImageConfigProperty (
        module Exports, KernelGatewayImageConfigProperty(..),
        mkKernelGatewayImageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.FileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.AppImageConfig.KernelSpecProperty as Exports
import Stratosphere.ResourceProperties
data KernelGatewayImageConfigProperty
  = KernelGatewayImageConfigProperty {fileSystemConfig :: (Prelude.Maybe FileSystemConfigProperty),
                                      kernelSpecs :: [KernelSpecProperty]}
mkKernelGatewayImageConfigProperty ::
  [KernelSpecProperty] -> KernelGatewayImageConfigProperty
mkKernelGatewayImageConfigProperty kernelSpecs
  = KernelGatewayImageConfigProperty
      {kernelSpecs = kernelSpecs, fileSystemConfig = Prelude.Nothing}
instance ToResourceProperties KernelGatewayImageConfigProperty where
  toResourceProperties KernelGatewayImageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::AppImageConfig.KernelGatewayImageConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KernelSpecs" JSON..= kernelSpecs]
                           (Prelude.catMaybes
                              [(JSON..=) "FileSystemConfig" Prelude.<$> fileSystemConfig]))}
instance JSON.ToJSON KernelGatewayImageConfigProperty where
  toJSON KernelGatewayImageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KernelSpecs" JSON..= kernelSpecs]
              (Prelude.catMaybes
                 [(JSON..=) "FileSystemConfig" Prelude.<$> fileSystemConfig])))
instance Property "FileSystemConfig" KernelGatewayImageConfigProperty where
  type PropertyType "FileSystemConfig" KernelGatewayImageConfigProperty = FileSystemConfigProperty
  set newValue KernelGatewayImageConfigProperty {..}
    = KernelGatewayImageConfigProperty
        {fileSystemConfig = Prelude.pure newValue, ..}
instance Property "KernelSpecs" KernelGatewayImageConfigProperty where
  type PropertyType "KernelSpecs" KernelGatewayImageConfigProperty = [KernelSpecProperty]
  set newValue KernelGatewayImageConfigProperty {..}
    = KernelGatewayImageConfigProperty {kernelSpecs = newValue, ..}