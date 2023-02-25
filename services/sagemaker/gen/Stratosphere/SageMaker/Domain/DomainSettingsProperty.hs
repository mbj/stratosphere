module Stratosphere.SageMaker.Domain.DomainSettingsProperty (
        module Exports, DomainSettingsProperty(..),
        mkDomainSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.RStudioServerProDomainSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainSettingsProperty
  = DomainSettingsProperty {rStudioServerProDomainSettings :: (Prelude.Maybe RStudioServerProDomainSettingsProperty),
                            securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkDomainSettingsProperty :: DomainSettingsProperty
mkDomainSettingsProperty
  = DomainSettingsProperty
      {rStudioServerProDomainSettings = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties DomainSettingsProperty where
  toResourceProperties DomainSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DomainSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RStudioServerProDomainSettings"
                              Prelude.<$> rStudioServerProDomainSettings,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])}
instance JSON.ToJSON DomainSettingsProperty where
  toJSON DomainSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RStudioServerProDomainSettings"
                 Prelude.<$> rStudioServerProDomainSettings,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))
instance Property "RStudioServerProDomainSettings" DomainSettingsProperty where
  type PropertyType "RStudioServerProDomainSettings" DomainSettingsProperty = RStudioServerProDomainSettingsProperty
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {rStudioServerProDomainSettings = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" DomainSettingsProperty where
  type PropertyType "SecurityGroupIds" DomainSettingsProperty = ValueList (Value Prelude.Text)
  set newValue DomainSettingsProperty {..}
    = DomainSettingsProperty
        {securityGroupIds = Prelude.pure newValue, ..}