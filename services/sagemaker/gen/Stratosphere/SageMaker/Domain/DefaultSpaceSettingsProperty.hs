module Stratosphere.SageMaker.Domain.DefaultSpaceSettingsProperty (
        module Exports, DefaultSpaceSettingsProperty(..),
        mkDefaultSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.JupyterServerAppSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.KernelGatewayAppSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultSpaceSettingsProperty
  = DefaultSpaceSettingsProperty {executionRole :: (Value Prelude.Text),
                                  jupyterServerAppSettings :: (Prelude.Maybe JupyterServerAppSettingsProperty),
                                  kernelGatewayAppSettings :: (Prelude.Maybe KernelGatewayAppSettingsProperty),
                                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text))}
mkDefaultSpaceSettingsProperty ::
  Value Prelude.Text -> DefaultSpaceSettingsProperty
mkDefaultSpaceSettingsProperty executionRole
  = DefaultSpaceSettingsProperty
      {executionRole = executionRole,
       jupyterServerAppSettings = Prelude.Nothing,
       kernelGatewayAppSettings = Prelude.Nothing,
       securityGroups = Prelude.Nothing}
instance ToResourceProperties DefaultSpaceSettingsProperty where
  toResourceProperties DefaultSpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DefaultSpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRole" JSON..= executionRole]
                           (Prelude.catMaybes
                              [(JSON..=) "JupyterServerAppSettings"
                                 Prelude.<$> jupyterServerAppSettings,
                               (JSON..=) "KernelGatewayAppSettings"
                                 Prelude.<$> kernelGatewayAppSettings,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups]))}
instance JSON.ToJSON DefaultSpaceSettingsProperty where
  toJSON DefaultSpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRole" JSON..= executionRole]
              (Prelude.catMaybes
                 [(JSON..=) "JupyterServerAppSettings"
                    Prelude.<$> jupyterServerAppSettings,
                  (JSON..=) "KernelGatewayAppSettings"
                    Prelude.<$> kernelGatewayAppSettings,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups])))
instance Property "ExecutionRole" DefaultSpaceSettingsProperty where
  type PropertyType "ExecutionRole" DefaultSpaceSettingsProperty = Value Prelude.Text
  set newValue DefaultSpaceSettingsProperty {..}
    = DefaultSpaceSettingsProperty {executionRole = newValue, ..}
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