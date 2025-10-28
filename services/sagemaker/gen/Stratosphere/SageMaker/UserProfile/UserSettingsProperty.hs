module Stratosphere.SageMaker.UserProfile.UserSettingsProperty (
        module Exports, UserSettingsProperty(..), mkUserSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CodeEditorAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CustomFileSystemConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CustomPosixUserConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.DefaultSpaceStorageSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.JupyterLabAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.KernelGatewayAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.RStudioServerProAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.SharingSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.StudioWebPortalSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html>
    UserSettingsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-codeeditorappsettings>
                          codeEditorAppSettings :: (Prelude.Maybe CodeEditorAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-customfilesystemconfigs>
                          customFileSystemConfigs :: (Prelude.Maybe [CustomFileSystemConfigProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-customposixuserconfig>
                          customPosixUserConfig :: (Prelude.Maybe CustomPosixUserConfigProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-defaultlandinguri>
                          defaultLandingUri :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-executionrole>
                          executionRole :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-jupyterlabappsettings>
                          jupyterLabAppSettings :: (Prelude.Maybe JupyterLabAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-jupyterserverappsettings>
                          jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-kernelgatewayappsettings>
                          kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-rstudioserverproappsettings>
                          rStudioServerProAppSettings :: (Prelude.Maybe RStudioServerProAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-securitygroups>
                          securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-sharingsettings>
                          sharingSettings :: (Prelude.Maybe SharingSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-spacestoragesettings>
                          spaceStorageSettings :: (Prelude.Maybe DefaultSpaceStorageSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-studiowebportal>
                          studioWebPortal :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-usersettings.html#cfn-sagemaker-userprofile-usersettings-studiowebportalsettings>
                          studioWebPortalSettings :: (Prelude.Maybe StudioWebPortalSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserSettingsProperty :: UserSettingsProperty
mkUserSettingsProperty
  = UserSettingsProperty
      {haddock_workaround_ = (), codeEditorAppSettings = Prelude.Nothing,
       customFileSystemConfigs = Prelude.Nothing,
       customPosixUserConfig = Prelude.Nothing,
       defaultLandingUri = Prelude.Nothing,
       executionRole = Prelude.Nothing,
       jupyterLabAppSettings = Prelude.Nothing,
       jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing,
       rStudioServerProAppSettings = Prelude.Nothing,
       securityGroups = Prelude.Nothing,
       sharingSettings = Prelude.Nothing,
       spaceStorageSettings = Prelude.Nothing,
       studioWebPortal = Prelude.Nothing,
       studioWebPortalSettings = Prelude.Nothing}
instance ToResourceProperties UserSettingsProperty where
  toResourceProperties UserSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.UserSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CodeEditorAppSettings"
                              Prelude.<$> codeEditorAppSettings,
                            (JSON..=) "CustomFileSystemConfigs"
                              Prelude.<$> customFileSystemConfigs,
                            (JSON..=) "CustomPosixUserConfig"
                              Prelude.<$> customPosixUserConfig,
                            (JSON..=) "DefaultLandingUri" Prelude.<$> defaultLandingUri,
                            (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
                            (JSON..=) "JupyterLabAppSettings"
                              Prelude.<$> jupyterLabAppSettings,
                            (JSON..=) "JupyterServerAppSettings"
                              Prelude.<$> jupyterServerAppSettings,
                            (JSON..=) "KernelGatewayAppSettings"
                              Prelude.<$> kernelGatewayAppSettings,
                            (JSON..=) "RStudioServerProAppSettings"
                              Prelude.<$> rStudioServerProAppSettings,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "SharingSettings" Prelude.<$> sharingSettings,
                            (JSON..=) "SpaceStorageSettings" Prelude.<$> spaceStorageSettings,
                            (JSON..=) "StudioWebPortal" Prelude.<$> studioWebPortal,
                            (JSON..=) "StudioWebPortalSettings"
                              Prelude.<$> studioWebPortalSettings])}
instance JSON.ToJSON UserSettingsProperty where
  toJSON UserSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CodeEditorAppSettings"
                 Prelude.<$> codeEditorAppSettings,
               (JSON..=) "CustomFileSystemConfigs"
                 Prelude.<$> customFileSystemConfigs,
               (JSON..=) "CustomPosixUserConfig"
                 Prelude.<$> customPosixUserConfig,
               (JSON..=) "DefaultLandingUri" Prelude.<$> defaultLandingUri,
               (JSON..=) "ExecutionRole" Prelude.<$> executionRole,
               (JSON..=) "JupyterLabAppSettings"
                 Prelude.<$> jupyterLabAppSettings,
               (JSON..=) "JupyterServerAppSettings"
                 Prelude.<$> jupyterServerAppSettings,
               (JSON..=) "KernelGatewayAppSettings"
                 Prelude.<$> kernelGatewayAppSettings,
               (JSON..=) "RStudioServerProAppSettings"
                 Prelude.<$> rStudioServerProAppSettings,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SharingSettings" Prelude.<$> sharingSettings,
               (JSON..=) "SpaceStorageSettings" Prelude.<$> spaceStorageSettings,
               (JSON..=) "StudioWebPortal" Prelude.<$> studioWebPortal,
               (JSON..=) "StudioWebPortalSettings"
                 Prelude.<$> studioWebPortalSettings]))
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
    = UserSettingsProperty {executionRole = Prelude.pure newValue, ..}
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