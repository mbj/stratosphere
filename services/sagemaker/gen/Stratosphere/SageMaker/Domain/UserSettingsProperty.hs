module Stratosphere.SageMaker.Domain.UserSettingsProperty (
        module Exports, UserSettingsProperty(..), mkUserSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CodeEditorAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomFileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomPosixUserConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DefaultSpaceStorageSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.JupyterLabAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.KernelGatewayAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RSessionAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RStudioServerProAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.SharingSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.StudioWebPortalSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserSettingsProperty
  = UserSettingsProperty {codeEditorAppSettings :: (Prelude.Maybe CodeEditorAppSettingsProperty),
                          customFileSystemConfigs :: (Prelude.Maybe [CustomFileSystemConfigProperty]),
                          customPosixUserConfig :: (Prelude.Maybe CustomPosixUserConfigProperty),
                          defaultLandingUri :: (Prelude.Maybe (Value Prelude.Text)),
                          executionRole :: (Value Prelude.Text),
                          jupyterLabAppSettings :: (Prelude.Maybe JupyterLabAppSettingsProperty),
                          jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                          kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                          rSessionAppSettings :: (Prelude.Maybe RSessionAppSettingsProperty),
                          rStudioServerProAppSettings :: (Prelude.Maybe RStudioServerProAppSettingsProperty),
                          securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                          sharingSettings :: (Prelude.Maybe SharingSettingsProperty),
                          spaceStorageSettings :: (Prelude.Maybe DefaultSpaceStorageSettingsProperty),
                          studioWebPortal :: (Prelude.Maybe (Value Prelude.Text)),
                          studioWebPortalSettings :: (Prelude.Maybe StudioWebPortalSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserSettingsProperty ::
  Value Prelude.Text -> UserSettingsProperty
mkUserSettingsProperty executionRole
  = UserSettingsProperty
      {executionRole = executionRole,
       codeEditorAppSettings = Prelude.Nothing,
       customFileSystemConfigs = Prelude.Nothing,
       customPosixUserConfig = Prelude.Nothing,
       defaultLandingUri = Prelude.Nothing,
       jupyterLabAppSettings = Prelude.Nothing,
       jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing,
       rSessionAppSettings = Prelude.Nothing,
       rStudioServerProAppSettings = Prelude.Nothing,
       securityGroups = Prelude.Nothing,
       sharingSettings = Prelude.Nothing,
       spaceStorageSettings = Prelude.Nothing,
       studioWebPortal = Prelude.Nothing,
       studioWebPortalSettings = Prelude.Nothing}
instance ToResourceProperties UserSettingsProperty where
  toResourceProperties UserSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.UserSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRole" JSON..= executionRole]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeEditorAppSettings"
                                 Prelude.<$> codeEditorAppSettings,
                               (JSON..=) "CustomFileSystemConfigs"
                                 Prelude.<$> customFileSystemConfigs,
                               (JSON..=) "CustomPosixUserConfig"
                                 Prelude.<$> customPosixUserConfig,
                               (JSON..=) "DefaultLandingUri" Prelude.<$> defaultLandingUri,
                               (JSON..=) "JupyterLabAppSettings"
                                 Prelude.<$> jupyterLabAppSettings,
                               (JSON..=) "JupyterServerAppSettings"
                                 Prelude.<$> jupyterServerAppSettings,
                               (JSON..=) "KernelGatewayAppSettings"
                                 Prelude.<$> kernelGatewayAppSettings,
                               (JSON..=) "RSessionAppSettings" Prelude.<$> rSessionAppSettings,
                               (JSON..=) "RStudioServerProAppSettings"
                                 Prelude.<$> rStudioServerProAppSettings,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "SharingSettings" Prelude.<$> sharingSettings,
                               (JSON..=) "SpaceStorageSettings" Prelude.<$> spaceStorageSettings,
                               (JSON..=) "StudioWebPortal" Prelude.<$> studioWebPortal,
                               (JSON..=) "StudioWebPortalSettings"
                                 Prelude.<$> studioWebPortalSettings]))}
instance JSON.ToJSON UserSettingsProperty where
  toJSON UserSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRole" JSON..= executionRole]
              (Prelude.catMaybes
                 [(JSON..=) "CodeEditorAppSettings"
                    Prelude.<$> codeEditorAppSettings,
                  (JSON..=) "CustomFileSystemConfigs"
                    Prelude.<$> customFileSystemConfigs,
                  (JSON..=) "CustomPosixUserConfig"
                    Prelude.<$> customPosixUserConfig,
                  (JSON..=) "DefaultLandingUri" Prelude.<$> defaultLandingUri,
                  (JSON..=) "JupyterLabAppSettings"
                    Prelude.<$> jupyterLabAppSettings,
                  (JSON..=) "JupyterServerAppSettings"
                    Prelude.<$> jupyterServerAppSettings,
                  (JSON..=) "KernelGatewayAppSettings"
                    Prelude.<$> kernelGatewayAppSettings,
                  (JSON..=) "RSessionAppSettings" Prelude.<$> rSessionAppSettings,
                  (JSON..=) "RStudioServerProAppSettings"
                    Prelude.<$> rStudioServerProAppSettings,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "SharingSettings" Prelude.<$> sharingSettings,
                  (JSON..=) "SpaceStorageSettings" Prelude.<$> spaceStorageSettings,
                  (JSON..=) "StudioWebPortal" Prelude.<$> studioWebPortal,
                  (JSON..=) "StudioWebPortalSettings"
                    Prelude.<$> studioWebPortalSettings])))
instance Property "CodeEditorAppSettings" UserSettingsProperty where
  type PropertyType "CodeEditorAppSettings" UserSettingsProperty = CodeEditorAppSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {codeEditorAppSettings = Prelude.pure newValue, ..}
instance Property "CustomFileSystemConfigs" UserSettingsProperty where
  type PropertyType "CustomFileSystemConfigs" UserSettingsProperty = [CustomFileSystemConfigProperty]
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {customFileSystemConfigs = Prelude.pure newValue, ..}
instance Property "CustomPosixUserConfig" UserSettingsProperty where
  type PropertyType "CustomPosixUserConfig" UserSettingsProperty = CustomPosixUserConfigProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {customPosixUserConfig = Prelude.pure newValue, ..}
instance Property "DefaultLandingUri" UserSettingsProperty where
  type PropertyType "DefaultLandingUri" UserSettingsProperty = Value Prelude.Text
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {defaultLandingUri = Prelude.pure newValue, ..}
instance Property "ExecutionRole" UserSettingsProperty where
  type PropertyType "ExecutionRole" UserSettingsProperty = Value Prelude.Text
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty {executionRole = newValue, ..}
instance Property "JupyterLabAppSettings" UserSettingsProperty where
  type PropertyType "JupyterLabAppSettings" UserSettingsProperty = JupyterLabAppSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {jupyterLabAppSettings = Prelude.pure newValue, ..}
instance Property "JupyterServerAppSettings" UserSettingsProperty where
  type PropertyType "JupyterServerAppSettings" UserSettingsProperty = JupyterServerAppSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {jupyterServerAppSettings = Prelude.pure newValue, ..}
instance Property "KernelGatewayAppSettings" UserSettingsProperty where
  type PropertyType "KernelGatewayAppSettings" UserSettingsProperty = KernelGatewayAppSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {kernelGatewayAppSettings = Prelude.pure newValue, ..}
instance Property "RSessionAppSettings" UserSettingsProperty where
  type PropertyType "RSessionAppSettings" UserSettingsProperty = RSessionAppSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {rSessionAppSettings = Prelude.pure newValue, ..}
instance Property "RStudioServerProAppSettings" UserSettingsProperty where
  type PropertyType "RStudioServerProAppSettings" UserSettingsProperty = RStudioServerProAppSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {rStudioServerProAppSettings = Prelude.pure newValue, ..}
instance Property "SecurityGroups" UserSettingsProperty where
  type PropertyType "SecurityGroups" UserSettingsProperty = ValueList Prelude.Text
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty {securityGroups = Prelude.pure newValue, ..}
instance Property "SharingSettings" UserSettingsProperty where
  type PropertyType "SharingSettings" UserSettingsProperty = SharingSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {sharingSettings = Prelude.pure newValue, ..}
instance Property "SpaceStorageSettings" UserSettingsProperty where
  type PropertyType "SpaceStorageSettings" UserSettingsProperty = DefaultSpaceStorageSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {spaceStorageSettings = Prelude.pure newValue, ..}
instance Property "StudioWebPortal" UserSettingsProperty where
  type PropertyType "StudioWebPortal" UserSettingsProperty = Value Prelude.Text
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {studioWebPortal = Prelude.pure newValue, ..}
instance Property "StudioWebPortalSettings" UserSettingsProperty where
  type PropertyType "StudioWebPortalSettings" UserSettingsProperty = StudioWebPortalSettingsProperty
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty
        {studioWebPortalSettings = Prelude.pure newValue, ..}