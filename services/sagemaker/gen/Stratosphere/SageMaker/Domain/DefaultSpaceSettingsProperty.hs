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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html>
    DefaultSpaceSettingsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-customfilesystemconfigs>
                                  customFileSystemConfigs :: (Prelude.Maybe [CustomFileSystemConfigProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-customposixuserconfig>
                                  customPosixUserConfig :: (Prelude.Maybe CustomPosixUserConfigProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-executionrole>
                                  executionRole :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-jupyterlabappsettings>
                                  jupyterLabAppSettings :: (Prelude.Maybe JupyterLabAppSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-jupyterserverappsettings>
                                  jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-kernelgatewayappsettings>
                                  kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-securitygroups>
                                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-defaultspacesettings.html#cfn-sagemaker-domain-defaultspacesettings-spacestoragesettings>
                                  spaceStorageSettings :: (Prelude.Maybe DefaultSpaceStorageSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultSpaceSettingsProperty ::
  Value Prelude.Text -> DefaultSpaceSettingsProperty
mkDefaultSpaceSettingsProperty executionRole
  = DefaultSpaceSettingsProperty
      {haddock_workaround_ = (), executionRole = executionRole,
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