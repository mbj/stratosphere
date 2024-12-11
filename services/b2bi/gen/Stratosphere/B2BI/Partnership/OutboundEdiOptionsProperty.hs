module Stratosphere.B2BI.Partnership.OutboundEdiOptionsProperty (
        module Exports, OutboundEdiOptionsProperty(..),
        mkOutboundEdiOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12EnvelopeProperty as Exports
import Stratosphere.ResourceProperties
data OutboundEdiOptionsProperty
  = OutboundEdiOptionsProperty {x12 :: X12EnvelopeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutboundEdiOptionsProperty ::
  X12EnvelopeProperty -> OutboundEdiOptionsProperty
mkOutboundEdiOptionsProperty x12
  = OutboundEdiOptionsProperty {x12 = x12}
instance ToResourceProperties OutboundEdiOptionsProperty where
  toResourceProperties OutboundEdiOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.OutboundEdiOptions",
         supportsTags = Prelude.False, properties = ["X12" JSON..= x12]}
instance JSON.ToJSON OutboundEdiOptionsProperty where
  toJSON OutboundEdiOptionsProperty {..}
    = JSON.object ["X12" JSON..= x12]
instance Property "X12" OutboundEdiOptionsProperty where
  type PropertyType "X12" OutboundEdiOptionsProperty = X12EnvelopeProperty
  set newValue OutboundEdiOptionsProperty {}
    = OutboundEdiOptionsProperty {x12 = newValue, ..}