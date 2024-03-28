module Stratosphere.B2BI.Capability.CapabilityConfigurationProperty (
        module Exports, CapabilityConfigurationProperty(..),
        mkCapabilityConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Capability.EdiConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data CapabilityConfigurationProperty
  = CapabilityConfigurationProperty {edi :: EdiConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapabilityConfigurationProperty ::
  EdiConfigurationProperty -> CapabilityConfigurationProperty
mkCapabilityConfigurationProperty edi
  = CapabilityConfigurationProperty {edi = edi}
instance ToResourceProperties CapabilityConfigurationProperty where
  toResourceProperties CapabilityConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Capability.CapabilityConfiguration",
         supportsTags = Prelude.False, properties = ["Edi" JSON..= edi]}
instance JSON.ToJSON CapabilityConfigurationProperty where
  toJSON CapabilityConfigurationProperty {..}
    = JSON.object ["Edi" JSON..= edi]
instance Property "Edi" CapabilityConfigurationProperty where
  type PropertyType "Edi" CapabilityConfigurationProperty = EdiConfigurationProperty
  set newValue CapabilityConfigurationProperty {}
    = CapabilityConfigurationProperty {edi = newValue, ..}