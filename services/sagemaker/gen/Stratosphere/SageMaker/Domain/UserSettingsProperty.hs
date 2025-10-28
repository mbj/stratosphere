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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html>
    UserSettingsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-codeeditorappsettings>
                          codeEditorAppSettings :: (Prelude.Maybe CodeEditorAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-customfilesystemconfigs>
                          customFileSystemConfigs :: (Prelude.Maybe [CustomFileSystemConfigProperty]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-customposixuserconfig>
                          customPosixUserConfig :: (Prelude.Maybe CustomPosixUserConfigProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-defaultlandinguri>
                          defaultLandingUri :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-executionrole>
                          executionRole :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-jupyterlabappsettings>
                          jupyterLabAppSettings :: (Prelude.Maybe JupyterLabAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-jupyterserverappsettings>
                          jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-kernelgatewayappsettings>
                          kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-rsessionappsettings>
                          rSessionAppSettings :: (Prelude.Maybe RSessionAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-rstudioserverproappsettings>
                          rStudioServerProAppSettings :: (Prelude.Maybe RStudioServerProAppSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-securitygroups>
                          securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-sharingsettings>
                          sharingSettings :: (Prelude.Maybe SharingSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-spacestoragesettings>
                          spaceStorageSettings :: (Prelude.Maybe DefaultSpaceStorageSettingsProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-studiowebportal>
                          studioWebPortal :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-usersettings.html#cfn-sagemaker-domain-usersettings-studiowebportalsettings>
                          studioWebPortalSettings :: (Prelude.Maybe StudioWebPortalSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserSettingsProperty ::
  Value Prelude.Text -> UserSettingsProperty
mkUserSettingsProperty executionRole
  = UserSettingsProperty
      {haddock_workaround_ = (), executionRole = executionRole,
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