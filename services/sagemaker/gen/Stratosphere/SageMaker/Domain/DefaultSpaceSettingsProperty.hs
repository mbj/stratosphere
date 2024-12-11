module Stratosphere.SageMaker.Domain.DefaultSpaceSettingsProperty (
        module Exports, DefaultSpaceSettingsProperty(..),
        mkDefaultSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomFileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomPosixUserConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DefaultSpaceStorageSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.JupyterLabAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.KernelGatewayAppSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultSpaceSettingsProperty
  = DefaultSpaceSettingsProperty {customFileSystemConfigs :: (Prelude.Maybe [CustomFileSystemConfigProperty]),
                                  customPosixUserConfig :: (Prelude.Maybe CustomPosixUserConfigProperty),
                                  executionRole :: (Value Prelude.Text),
                                  jupyterLabAppSettings :: (Prelude.Maybe JupyterLabAppSettingsProperty),
                                  jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                                  kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  spaceStorageSettings :: (Prelude.Maybe DefaultSpaceStorageSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultSpaceSettingsProperty ::
  Value Prelude.Text -> DefaultSpaceSettingsProperty
mkDefaultSpaceSettingsProperty executionRole
  = DefaultSpaceSettingsProperty
      {executionRole = executionRole,
       customFileSystemConfigs = Prelude.Nothing,
       customPosixUserConfig = Prelude.Nothing,
       jupyterLabAppSettings = Prelude.Nothing,
       jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing,
       securityGroups = Prelude.Nothing,
       spaceStorageSettings = Prelude.Nothing}
instance ToResourceProperties DefaultSpaceSettingsProperty where
  toResourceProperties DefaultSpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DefaultSpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRole" JSON..= executionRole]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomFileSystemConfigs"
                                 Prelude.<$> customFileSystemConfigs,
                               (JSON..=) "CustomPosixUserConfig"
                                 Prelude.<$> customPosixUserConfig,
                               (JSON..=) "JupyterLabAppSettings"
                                 Prelude.<$> jupyterLabAppSettings,
                               (JSON..=) "JupyterServerAppSettings"
                                 Prelude.<$> jupyterServerAppSettings,
                               (JSON..=) "KernelGatewayAppSettings"
                                 Prelude.<$> kernelGatewayAppSettings,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "SpaceStorageSettings"
                                 Prelude.<$> spaceStorageSettings]))}
instance JSON.ToJSON DefaultSpaceSettingsProperty where
  toJSON DefaultSpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRole" JSON..= executionRole]
              (Prelude.catMaybes
                 [(JSON..=) "CustomFileSystemConfigs"
                    Prelude.<$> customFileSystemConfigs,
                  (JSON..=) "CustomPosixUserConfig"
                    Prelude.<$> customPosixUserConfig,
                  (JSON..=) "JupyterLabAppSettings"
                    Prelude.<$> jupyterLabAppSettings,
                  (JSON..=) "JupyterServerAppSettings"
                    Prelude.<$> jupyterServerAppSettings,
                  (JSON..=) "KernelGatewayAppSettings"
                    Prelude.<$> kernelGatewayAppSettings,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "SpaceStorageSettings"
                    Prelude.<$> spaceStorageSettings])))
instance Property "CustomFileSystemConfigs" DefaultSpaceSettingsProperty where
  type PropertyType "CustomFileSystemConfigs" DefaultSpaceSettingsProperty = [CustomFileSystemConfigProperty]
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {customFileSystemConfigs = Prelude.pure newValue, ..}
instance Property "CustomPosixUserConfig" DefaultSpaceSettingsProperty where
  type PropertyType "CustomPosixUserConfig" DefaultSpaceSettingsProperty = CustomPosixUserConfigProperty
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {customPosixUserConfig = Prelude.pure newValue, ..}
instance Property "ExecutionRole" DefaultSpaceSettingsProperty where
  type PropertyType "ExecutionRole" DefaultSpaceSettingsProperty = Value Prelude.Text
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty {executionRole = newValue, ..}
instance Property "JupyterLabAppSettings" DefaultSpaceSettingsProperty where
  type PropertyType "JupyterLabAppSettings" DefaultSpaceSettingsProperty = JupyterLabAppSettingsProperty
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {jupyterLabAppSettings = Prelude.pure newValue, ..}
instance Property "JupyterServerAppSettings" DefaultSpaceSettingsProperty where
  type PropertyType "JupyterServerAppSettings" DefaultSpaceSettingsProperty = JupyterServerAppSettingsProperty
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {jupyterServerAppSettings = Prelude.pure newValue, ..}
instance Property "KernelGatewayAppSettings" DefaultSpaceSettingsProperty where
  type PropertyType "KernelGatewayAppSettings" DefaultSpaceSettingsProperty = KernelGatewayAppSettingsProperty
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {kernelGatewayAppSettings = Prelude.pure newValue, ..}
instance Property "SecurityGroups" DefaultSpaceSettingsProperty where
  type PropertyType "SecurityGroups" DefaultSpaceSettingsProperty = ValueList Prelude.Text
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "SpaceStorageSettings" DefaultSpaceSettingsProperty where
  type PropertyType "SpaceStorageSettings" DefaultSpaceSettingsProperty = DefaultSpaceStorageSettingsProperty
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty
        {spaceStorageSettings = Prelude.pure newValue, ..}