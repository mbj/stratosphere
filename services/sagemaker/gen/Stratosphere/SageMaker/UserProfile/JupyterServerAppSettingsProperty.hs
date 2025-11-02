module Stratosphere.SageMaker.UserProfile.JupyterServerAppSettingsProperty (
        module Exports, JupyterServerAppSettingsProperty(..),
        mkJupyterServerAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JupyterServerAppSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-jupyterserverappsettings.html>
    JupyterServerAppSettingsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-jupyterserverappsettings.html#cfn-sagemaker-userprofile-jupyterserverappsettings-defaultresourcespec>
                                      defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-jupyterserverappsettings.html#cfn-sagemaker-userprofile-jupyterserverappsettings-lifecycleconfigarns>
                                      lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJupyterServerAppSettingsProperty ::
  JupyterServerAppSettingsProperty
mkJupyterServerAppSettingsProperty
  = JupyterServerAppSettingsProperty
      {haddock_workaround_ = (), defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties JupyterServerAppSettingsProperty where
  toResourceProperties JupyterServerAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.JupyterServerAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON JupyterServerAppSettingsProperty where
  toJSON JupyterServerAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "DefaultResourceSpec" JupyterServerAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" JupyterServerAppSettingsProperty = ResourceSpecProperty
  set newValue JupyterServerAppSettingsProperty {..}
    = JupyterServerAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" JupyterServerAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" JupyterServerAppSettingsProperty = ValueList Prelude.Text
  set newValue JupyterServerAppSettingsProperty {..}
    = JupyterServerAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}