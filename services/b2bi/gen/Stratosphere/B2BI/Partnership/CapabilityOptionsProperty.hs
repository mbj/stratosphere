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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-capabilityoptions.html>
    CapabilityOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-capabilityoptions.html#cfn-b2bi-partnership-capabilityoptions-outboundedi>
                               outboundEdi :: (Prelude.Maybe OutboundEdiOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapabilityOptionsProperty :: CapabilityOptionsProperty
mkCapabilityOptionsProperty
  = CapabilityOptionsProperty
      {haddock_workaround_ = (), outboundEdi = Prelude.Nothing}
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
  set newValue CapabilityOptionsProperty {..}
    = CapabilityOptionsProperty
        {outboundEdi = Prelude.pure newValue, ..}