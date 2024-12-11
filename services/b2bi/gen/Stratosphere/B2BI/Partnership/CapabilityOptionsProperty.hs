module Stratosphere.B2BI.Partnership.CapabilityOptionsProperty (
        module Exports, CapabilityOptionsProperty(..),
        mkCapabilityOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.OutboundEdiOptionsProperty as Exports
import Stratosphere.ResourceProperties
data CapabilityOptionsProperty
  = CapabilityOptionsProperty {outboundEdi :: (Prelude.Maybe OutboundEdiOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapabilityOptionsProperty :: CapabilityOptionsProperty
mkCapabilityOptionsProperty
  = CapabilityOptionsProperty {outboundEdi = Prelude.Nothing}
instance ToResourceProperties CapabilityOptionsProperty where
  toResourceProperties CapabilityOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.CapabilityOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OutboundEdi" Prelude.<$> outboundEdi])}
instance JSON.ToJSON CapabilityOptionsProperty where
  toJSON CapabilityOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OutboundEdi" Prelude.<$> outboundEdi]))
instance Property "OutboundEdi" CapabilityOptionsProperty where
  type PropertyType "OutboundEdi" CapabilityOptionsProperty = OutboundEdiOptionsProperty
  set newValue CapabilityOptionsProperty {}
    = CapabilityOptionsProperty
        {outboundEdi = Prelude.pure newValue, ..}