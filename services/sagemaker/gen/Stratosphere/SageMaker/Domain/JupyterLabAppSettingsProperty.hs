module Stratosphere.SageMaker.Domain.JupyterLabAppSettingsProperty (
        module Exports, JupyterLabAppSettingsProperty(..),
        mkJupyterLabAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.AppLifecycleManagementProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CodeRepositoryProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JupyterLabAppSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html>
    JupyterLabAppSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html#cfn-sagemaker-domain-jupyterlabappsettings-applifecyclemanagement>
                                   appLifecycleManagement :: (Prelude.Maybe AppLifecycleManagementProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html#cfn-sagemaker-domain-jupyterlabappsettings-builtinlifecycleconfigarn>
                                   builtInLifecycleConfigArn :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html#cfn-sagemaker-domain-jupyterlabappsettings-coderepositories>
                                   codeRepositories :: (Prelude.Maybe [CodeRepositoryProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html#cfn-sagemaker-domain-jupyterlabappsettings-customimages>
                                   customImages :: (Prelude.Maybe [CustomImageProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html#cfn-sagemaker-domain-jupyterlabappsettings-defaultresourcespec>
                                   defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterlabappsettings.html#cfn-sagemaker-domain-jupyterlabappsettings-lifecycleconfigarns>
                                   lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterLabAppSettingsProperty :: JupyterLabAppSettingsProperty
mkJupyterLabAppSettingsProperty
  = JupyterLabAppSettingsProperty
      {haddock_workaround_ = (),
       appLifecycleManagement = Prelude.Nothing,
       builtInLifecycleConfigArn = Prelude.Nothing,
       codeRepositories = Prelude.Nothing, customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties JupyterLabAppSettingsProperty where
  toResourceProperties JupyterLabAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.JupyterLabAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppLifecycleManagement"
                              Prelude.<$> appLifecycleManagement,
                            (JSON..=) "BuiltInLifecycleConfigArn"
                              Prelude.<$> builtInLifecycleConfigArn,
                            (JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
                            (JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON JupyterLabAppSettingsProperty where
  toJSON JupyterLabAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppLifecycleManagement"
                 Prelude.<$> appLifecycleManagement,
               (JSON..=) "BuiltInLifecycleConfigArn"
                 Prelude.<$> builtInLifecycleConfigArn,
               (JSON..=) "CodeRepositories" Prelude.<$> codeRepositories,
               (JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "AppLifecycleManagement" JupyterLabAppSettingsProperty where
  type PropertyType "AppLifecycleManagement" JupyterLabAppSettingsProperty = AppLifecycleManagementProperty
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {appLifecycleManagement = Prelude.pure newValue, ..}
instance Property "BuiltInLifecycleConfigArn" JupyterLabAppSettingsProperty where
  type PropertyType "BuiltInLifecycleConfigArn" JupyterLabAppSettingsProperty = Value Prelude.Text
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {builtInLifecycleConfigArn = Prelude.pure newValue, ..}
instance Property "CodeRepositories" JupyterLabAppSettingsProperty where
  type PropertyType "CodeRepositories" JupyterLabAppSettingsProperty = [CodeRepositoryProperty]
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {codeRepositories = Prelude.pure newValue, ..}
instance Property "CustomImages" JupyterLabAppSettingsProperty where
  type PropertyType "CustomImages" JupyterLabAppSettingsProperty = [CustomImageProperty]
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" JupyterLabAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" JupyterLabAppSettingsProperty = ResourceSpecProperty
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" JupyterLabAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" JupyterLabAppSettingsProperty = ValueList Prelude.Text
  set newValue JupyterLabAppSettingsProperty {..}
    = JupyterLabAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}