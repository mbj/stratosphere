module Stratosphere.SageMaker.Space.SpaceSettingsProperty (
        module Exports, SpaceSettingsProperty(..), mkSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.KernelGatewayAppSettingsProperty as Exports
import Stratosphere.ResourceProperties
data SpaceSettingsProperty
  = SpaceSettingsProperty {jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                           kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty)}
mkSpaceSettingsProperty :: SpaceSettingsProperty
mkSpaceSettingsProperty
  = SpaceSettingsProperty
      {jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing}
instance ToResourceProperties SpaceSettingsProperty where
  toResourceProperties SpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JupyterServerAppSettings"
                              Prelude.<$> jupyterServerAppSettings,
                            (JSON..=) "KernelGatewayAppSettings"
                              Prelude.<$> kernelGatewayAppSettings])}
instance JSON.ToJSON SpaceSettingsProperty where
  toJSON SpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JupyterServerAppSettings"
                 Prelude.<$> jupyterServerAppSettings,
               (JSON..=) "KernelGatewayAppSettings"
                 Prelude.<$> kernelGatewayAppSettings]))
instance Property "JupyterServerAppSettings" SpaceSettingsProperty where
  type PropertyType "JupyterServerAppSettings" SpaceSettingsProperty = JupyterServerAppSettingsProperty
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {jupyterServerAppSettings = Prelude.pure newValue, ..}
instance Property "KernelGatewayAppSettings" SpaceSettingsProperty where
  type PropertyType "KernelGatewayAppSettings" SpaceSettingsProperty = KernelGatewayAppSettingsProperty
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {kernelGatewayAppSettings = Prelude.pure newValue, ..}