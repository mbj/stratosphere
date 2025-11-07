module Stratosphere.B2BI.Partnership.InboundEdiOptionsProperty (
        module Exports, InboundEdiOptionsProperty(..),
        mkInboundEdiOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12InboundEdiOptionsProperty as Exports
import Stratosphere.ResourceProperties
data InboundEdiOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-inboundedioptions.html>
    InboundEdiOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-inboundedioptions.html#cfn-b2bi-partnership-inboundedioptions-x12>
                               x12 :: (Prelude.Maybe X12InboundEdiOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInboundEdiOptionsProperty :: InboundEdiOptionsProperty
mkInboundEdiOptionsProperty
  = InboundEdiOptionsProperty
      {haddock_workaround_ = (), x12 = Prelude.Nothing}
instance ToResourceProperties InboundEdiOptionsProperty where
  toResourceProperties InboundEdiOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.InboundEdiOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "X12" Prelude.<$> x12])}
instance JSON.ToJSON InboundEdiOptionsProperty where
  toJSON InboundEdiOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "X12" Prelude.<$> x12]))
instance Property "X12" InboundEdiOptionsProperty where
  type PropertyType "X12" InboundEdiOptionsProperty = X12InboundEdiOptionsProperty
  set newValue InboundEdiOptionsProperty {..}
    = InboundEdiOptionsProperty {x12 = Prelude.pure newValue, ..}