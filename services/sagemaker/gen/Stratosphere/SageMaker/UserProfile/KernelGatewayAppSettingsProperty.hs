module Stratosphere.SageMaker.UserProfile.KernelGatewayAppSettingsProperty (
        module Exports, KernelGatewayAppSettingsProperty(..),
        mkKernelGatewayAppSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.CustomImageProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KernelGatewayAppSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-kernelgatewayappsettings.html>
    KernelGatewayAppSettingsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-kernelgatewayappsettings.html#cfn-sagemaker-userprofile-kernelgatewayappsettings-customimages>
                                      customImages :: (Prelude.Maybe [CustomImageProperty]),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-kernelgatewayappsettings.html#cfn-sagemaker-userprofile-kernelgatewayappsettings-defaultresourcespec>
                                      defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-kernelgatewayappsettings.html#cfn-sagemaker-userprofile-kernelgatewayappsettings-lifecycleconfigarns>
                                      lifecycleConfigArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKernelGatewayAppSettingsProperty ::
  KernelGatewayAppSettingsProperty
mkKernelGatewayAppSettingsProperty
  = KernelGatewayAppSettingsProperty
      {haddock_workaround_ = (), customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing,
       lifecycleConfigArns = Prelude.Nothing}
instance ToResourceProperties KernelGatewayAppSettingsProperty where
  toResourceProperties KernelGatewayAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.KernelGatewayAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
                            (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns])}
instance JSON.ToJSON KernelGatewayAppSettingsProperty where
  toJSON KernelGatewayAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec,
               (JSON..=) "LifecycleConfigArns" Prelude.<$> lifecycleConfigArns]))
instance Property "CustomImages" KernelGatewayAppSettingsProperty where
  type PropertyType "CustomImages" KernelGatewayAppSettingsProperty = [CustomImageProperty]
  set newValue KernelGatewayAppSettingsProperty {..}
    = KernelGatewayAppSettingsProperty
        {customImages = Prelude.pure newValue, ..}
instance Property "DefaultResourceSpec" KernelGatewayAppSettingsProperty where
  type PropertyType "DefaultResourceSpec" KernelGatewayAppSettingsProperty = ResourceSpecProperty
  set newValue KernelGatewayAppSettingsProperty {..}
    = KernelGatewayAppSettingsProperty
        {defaultResourceSpec = Prelude.pure newValue, ..}
instance Property "LifecycleConfigArns" KernelGatewayAppSettingsProperty where
  type PropertyType "LifecycleConfigArns" KernelGatewayAppSettingsProperty = ValueList Prelude.Text
  set newValue KernelGatewayAppSettingsProperty {..}
    = KernelGatewayAppSettingsProperty
        {lifecycleConfigArns = Prelude.pure newValue, ..}