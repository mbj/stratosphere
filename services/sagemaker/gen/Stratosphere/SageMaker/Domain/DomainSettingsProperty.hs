module Stratosphere.SageMaker.Domain.DomainSettingsProperty (
        module Exports, DomainSettingsProperty(..),
        mkDomainSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DockerSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RStudioServerProDomainSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainSettingsProperty
  = DomainSettingsProperty {dockerSettings :: (Prelude.Maybe DockerSettingsProperty),
                            executionRoleIdentityConfig :: (Prelude.Maybe (Value Prelude.Text)),
                            rStudioServerProDomainSettings :: (Prelude.Maybe RStudioServerProDomainSettingsProperty),
                            securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainSettingsProperty :: DomainSettingsProperty
mkDomainSettingsProperty
  = DomainSettingsProperty
      {dockerSettings = Prelude.Nothing,
       executionRoleIdentityConfig = Prelude.Nothing,
       rStudioServerProDomainSettings = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties DomainSettingsProperty where
  toResourceProperties DomainSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DomainSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DockerSettings" Prelude.<$> dockerSettings,
                            (JSON..=) "ExecutionRoleIdentityConfig"
                              Prelude.<$> executionRoleIdentityConfig,
                            (JSON..=) "RStudioServerProDomainSettings"
                              Prelude.<$> rStudioServerProDomainSettings,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])}
instance JSON.ToJSON DomainSettingsProperty where
  toJSON DomainSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DockerSettings" Prelude.<$> dockerSettings,
               (JSON..=) "ExecutionRoleIdentityConfig"
                 Prelude.<$> executionRoleIdentityConfig,
               (JSON..=) "RStudioServerProDomainSettings"
                 Prelude.<$> rStudioServerProDomainSettings,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))
instance Property "DockerSettings" DomainSettingsProperty where
  type PropertyType "DockerSettings" DomainSettingsProperty = DockerSettingsProperty
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {dockerSettings = Prelude.pure newValue, ..}
instance Property "ExecutionRoleIdentityConfig" DomainSettingsProperty where
  type PropertyType "ExecutionRoleIdentityConfig" DomainSettingsProperty = Value Prelude.Text
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {executionRoleIdentityConfig = Prelude.pure newValue, ..}
instance Property "RStudioServerProDomainSettings" DomainSettingsProperty where
  type PropertyType "RStudioServerProDomainSettings" DomainSettingsProperty = RStudioServerProDomainSettingsProperty
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {rStudioServerProDomainSettings = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" DomainSettingsProperty where
  type PropertyType "SecurityGroupIds" DomainSettingsProperty = ValueList Prelude.Text
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {securityGroupIds = Prelude.pure newValue, ..}