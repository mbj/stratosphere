module Stratosphere.SageMaker.Domain.UserSettingsProperty (
        module Exports, UserSettingsProperty(..), mkUserSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.KernelGatewayAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RSessionAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RStudioServerProAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.SharingSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserSettingsProperty
  = UserSettingsProperty {executionRole :: (Prelude.Maybe (Value Prelude.Text)),
                          jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                          kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                          rSessionAppSettings :: (Prelude.Maybe RSessionAppSettingsProperty),
                          rStudioServerProAppSettings :: (Prelude.Maybe RStudioServerProAppSettingsProperty),
                          securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                          sharingSettings :: (Prelude.Maybe SharingSettingsProperty)}
mkUserSettingsProperty :: UserSettingsProperty
mkUserSettingsProperty
  = UserSettingsProperty
      {executionRole = Prelude.Nothing,
       jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing,
       rSessionAppSettings = Prelude.Nothing,
       rStudioServerProAppSettings = Prelude.Nothing,
       securityGroups = Prelude.Nothing,
       sharingSettings = Prelude.Nothing}
instance ToResourceProperties UserSettingsProperty where
  toResourceProperties UserSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.UserSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExecutionRole" Prelude.<$> executionRole,
                            (JSON..=) "JupyterServerAppSettings"
                              Prelude.<$> jupyterServerAppSettings,
                            (JSON..=) "KernelGatewayAppSettings"
                              Prelude.<$> kernelGatewayAppSettings,
                            (JSON..=) "RSessionAppSettings" Prelude.<$> rSessionAppSettings,
                            (JSON..=) "RStudioServerProAppSettings"
                              Prelude.<$> rStudioServerProAppSettings,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "SharingSettings" Prelude.<$> sharingSettings])}
instance JSON.ToJSON UserSettingsProperty where
  toJSON UserSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExecutionRole" Prelude.<$> executionRole,
               (JSON..=) "JupyterServerAppSettings"
                 Prelude.<$> jupyterServerAppSettings,
               (JSON..=) "KernelGatewayAppSettings"
                 Prelude.<$> kernelGatewayAppSettings,
               (JSON..=) "RSessionAppSettings" Prelude.<$> rSessionAppSettings,
               (JSON..=) "RStudioServerProAppSettings"
                 Prelude.<$> rStudioServerProAppSettings,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SharingSettings" Prelude.<$> sharingSettings]))
instance Property "ExecutionRole" UserSettingsProperty where
  type PropertyType "ExecutionRole" UserSettingsProperty = Value Prelude.Text
  set newValue UserSettingsProperty {..}
    = UserSettingsProperty {executionRole = Prelude.pure newValue, ..}
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