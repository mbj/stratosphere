module Stratosphere.SageMaker.UserProfile.CodeEditorAppSettingsProperty (
        module Exports, CodeEditorAppSettingsProperty(..),
        mkCodeEditorAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.AppLifecycleManagementProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeEditorAppSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-codeeditorappsettings.html>
    CodeEditorAppSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-codeeditorappsettings.html#cfn-sagemaker-userprofile-codeeditorappsettings-applifecyclemanagement>
                                   appLifecycleManagement :: (Prelude.Maybe AppLifecycleManagementProperty),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-codeeditorappsettings.html#cfn-sagemaker-userprofile-codeeditorappsettings-customimages>
                                   customImages :: (Prelude.Maybe [CustomImageProperty]),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-codeeditorappsettings.html#cfn-sagemaker-userprofile-codeeditorappsettings-defaultresourcespec>
                                   defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-codeeditorappsettings.html#cfn-sagemaker-userprofile-codeeditorappsettings-lifecycleconfigarns>
                                   lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeEditorAppSettingsProperty :: CodeEditorAppSettingsProperty
mkCodeEditorAppSettingsProperty
  = CodeEditorAppSettingsProperty
      {appLifecycleManagement = Prelude.Nothing,
       customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties CodeEditorAppSettingsProperty where
  toResourceProperties CodeEditorAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.CodeEditorAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AppLifecycleManagement"
                              Prelude.<$> appLifecycleManagement,
                            (JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON CodeEditorAppSettingsProperty where
  toJSON CodeEditorAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AppLifecycleManagement"
                 Prelude.<$> appLifecycleManagement,
               (JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "AppLifecycleManagement" CodeEditorAppSettingsProperty where
  type PropertyType "AppLifecycleManagement" CodeEditorAppSettingsProperty = AppLifecycleManagementProperty
  set newValue CodeEditorAppSettingsProperty {..}
    = CodeEditorAppSettingsProperty
        {appLifecycleManagement = Prelude.pure newValue, ..}
instance Property "CustomImages" CodeEditorAppSettingsProperty where
  type PropertyType "CustomImages" CodeEditorAppSettingsProperty = [CustomImageProperty]
  set newValue CodeEditorAppSettingsProperty {..}
    = CodeEditorAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" CodeEditorAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" CodeEditorAppSettingsProperty = ResourceSpecProperty
  set newValue CodeEditorAppSettingsProperty {..}
    = CodeEditorAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" CodeEditorAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" CodeEditorAppSettingsProperty = ValueList Prelude.Text
  set newValue CodeEditorAppSettingsProperty {..}
    = CodeEditorAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}