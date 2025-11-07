module Stratosphere.SageMaker.Space.SpaceSettingsProperty (
        module Exports, SpaceSettingsProperty(..), mkSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.CustomFileSystemProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.KernelGatewayAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceCodeEditorAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceJupyterLabAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceStorageSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpaceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html>
    SpaceSettingsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-apptype>
                           appType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-codeeditorappsettings>
                           codeEditorAppSettings :: (Prelude.Maybe SpaceCodeEditorAppSettingsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-customfilesystems>
                           customFileSystems :: (Prelude.Maybe [CustomFileSystemProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-jupyterlabappsettings>
                           jupyterLabAppSettings :: (Prelude.Maybe SpaceJupyterLabAppSettingsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-jupyterserverappsettings>
                           jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-kernelgatewayappsettings>
                           kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-remoteaccess>
                           remoteAccess :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-spacemanagedresources>
                           spaceManagedResources :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spacesettings.html#cfn-sagemaker-space-spacesettings-spacestoragesettings>
                           spaceStorageSettings :: (Prelude.Maybe SpaceStorageSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceSettingsProperty :: SpaceSettingsProperty
mkSpaceSettingsProperty
  = SpaceSettingsProperty
      {haddock_workaround_ = (), appType = Prelude.Nothing,
       codeEditorAppSettings = Prelude.Nothing,
       customFileSystems = Prelude.Nothing,
       jupyterLabAppSettings = Prelude.Nothing,
       jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing,
       remoteAccess = Prelude.Nothing,
       spaceManagedResources = Prelude.Nothing,
       spaceStorageSettings = Prelude.Nothing}
instance ToResourceProperties SpaceSettingsProperty where
  toResourceProperties SpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppType" Prelude.<$> appType,
                            (JSON..=) "CodeEditorAppSettings"
                              Prelude.<$> codeEditorAppSettings,
                            (JSON..=) "CustomFileSystems" Prelude.<$> customFileSystems,
                            (JSON..=) "JupyterLabAppSettings"
                              Prelude.<$> jupyterLabAppSettings,
                            (JSON..=) "JupyterServerAppSettings"
                              Prelude.<$> jupyterServerAppSettings,
                            (JSON..=) "KernelGatewayAppSettings"
                              Prelude.<$> kernelGatewayAppSettings,
                            (JSON..=) "RemoteAccess" Prelude.<$> remoteAccess,
                            (JSON..=) "SpaceManagedResources"
                              Prelude.<$> spaceManagedResources,
                            (JSON..=) "SpaceStorageSettings"
                              Prelude.<$> spaceStorageSettings])}
instance JSON.ToJSON SpaceSettingsProperty where
  toJSON SpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppType" Prelude.<$> appType,
               (JSON..=) "CodeEditorAppSettings"
                 Prelude.<$> codeEditorAppSettings,
               (JSON..=) "CustomFileSystems" Prelude.<$> customFileSystems,
               (JSON..=) "JupyterLabAppSettings"
                 Prelude.<$> jupyterLabAppSettings,
               (JSON..=) "JupyterServerAppSettings"
                 Prelude.<$> jupyterServerAppSettings,
               (JSON..=) "KernelGatewayAppSettings"
                 Prelude.<$> kernelGatewayAppSettings,
               (JSON..=) "RemoteAccess" Prelude.<$> remoteAccess,
               (JSON..=) "SpaceManagedResources"
                 Prelude.<$> spaceManagedResources,
               (JSON..=) "SpaceStorageSettings"
                 Prelude.<$> spaceStorageSettings]))
instance Property "AppType" SpaceSettingsProperty where
  type PropertyType "AppType" SpaceSettingsProperty = Value Prelude.Text
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty {appType = Prelude.pure newValue, ..}
instance Property "CodeEditorAppSettings" SpaceSettingsProperty where
  type PropertyType "CodeEditorAppSettings" SpaceSettingsProperty = SpaceCodeEditorAppSettingsProperty
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {codeEditorAppSettings = Prelude.pure newValue, ..}
instance Property "CustomFileSystems" SpaceSettingsProperty where
  type PropertyType "CustomFileSystems" SpaceSettingsProperty = [CustomFileSystemProperty]
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {customFileSystems = Prelude.pure newValue, ..}
instance Property "JupyterLabAppSettings" SpaceSettingsProperty where
  type PropertyType "JupyterLabAppSettings" SpaceSettingsProperty = SpaceJupyterLabAppSettingsProperty
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {jupyterLabAppSettings = Prelude.pure newValue, ..}
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
instance Property "RemoteAccess" SpaceSettingsProperty where
  type PropertyType "RemoteAccess" SpaceSettingsProperty = Value Prelude.Text
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty {remoteAccess = Prelude.pure newValue, ..}
instance Property "SpaceManagedResources" SpaceSettingsProperty where
  type PropertyType "SpaceManagedResources" SpaceSettingsProperty = Value Prelude.Text
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {spaceManagedResources = Prelude.pure newValue, ..}
instance Property "SpaceStorageSettings" SpaceSettingsProperty where
  type PropertyType "SpaceStorageSettings" SpaceSettingsProperty = SpaceStorageSettingsProperty
  set newValue SpaceSettingsProperty {..}
    = SpaceSettingsProperty
        {spaceStorageSettings = Prelude.pure newValue, ..}