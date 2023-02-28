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
data KernelGatewayAppSettingsProperty
  = KernelGatewayAppSettingsProperty {customImages :: (Prelude.Maybe [CustomImageProperty]),
                                      defaultResourceSpec :: (Prelude.Maybe ResourceSpecProperty)}
mkKernelGatewayAppSettingsProperty ::
  KernelGatewayAppSettingsProperty
mkKernelGatewayAppSettingsProperty
  = KernelGatewayAppSettingsProperty
      {customImages = Prelude.Nothing,
       defaultResourceSpec = Prelude.Nothing}
instance ToResourceProperties KernelGatewayAppSettingsProperty where
  toResourceProperties KernelGatewayAppSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::UserProfile.KernelGatewayAppSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomImages" Prelude.<$> customImages,
                            (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec])}
instance JSON.ToJSON KernelGatewayAppSettingsProperty where
  toJSON KernelGatewayAppSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomImages" Prelude.<$> customImages,
               (JSON..=) "DefaultResourceSpec" Prelude.<$> defaultResourceSpec]))
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