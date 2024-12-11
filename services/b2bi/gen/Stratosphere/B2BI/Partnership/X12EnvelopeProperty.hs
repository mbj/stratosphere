module Stratosphere.B2BI.Partnership.X12EnvelopeProperty (
        module Exports, X12EnvelopeProperty(..), mkX12EnvelopeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12OutboundEdiHeadersProperty as Exports
import Stratosphere.ResourceProperties
data X12EnvelopeProperty
  = X12EnvelopeProperty {common :: (Prelude.Maybe X12OutboundEdiHeadersProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12EnvelopeProperty :: X12EnvelopeProperty
mkX12EnvelopeProperty
  = X12EnvelopeProperty {common = Prelude.Nothing}
instance ToResourceProperties X12EnvelopeProperty where
  toResourceProperties X12EnvelopeProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12Envelope",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Common" Prelude.<$> common])}
instance JSON.ToJSON X12EnvelopeProperty where
  toJSON X12EnvelopeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Common" Prelude.<$> common]))
instance Property "Common" X12EnvelopeProperty where
  type PropertyType "Common" X12EnvelopeProperty = X12OutboundEdiHeadersProperty
  set newValue X12EnvelopeProperty {}
    = X12EnvelopeProperty {common = Prelude.pure newValue, ..}