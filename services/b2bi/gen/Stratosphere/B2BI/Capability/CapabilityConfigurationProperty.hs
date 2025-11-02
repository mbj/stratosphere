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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-capability-capabilityconfiguration.html>
    CapabilityConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-capability-capabilityconfiguration.html#cfn-b2bi-capability-capabilityconfiguration-edi>
                                     edi :: EdiConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapabilityConfigurationProperty ::
  EdiConfigurationProperty -> CapabilityConfigurationProperty
mkCapabilityConfigurationProperty edi
  = CapabilityConfigurationProperty
      {haddock_workaround_ = (), edi = edi}
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
  set newValue CapabilityConfigurationProperty {..}
    = CapabilityConfigurationProperty {edi = newValue, ..}