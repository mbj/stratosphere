module Stratosphere.B2BI.Partnership.X12InboundEdiOptionsProperty (
        module Exports, X12InboundEdiOptionsProperty(..),
        mkX12InboundEdiOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12AcknowledgmentOptionsProperty as Exports
import Stratosphere.ResourceProperties
data X12InboundEdiOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12inboundedioptions.html>
    X12InboundEdiOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12inboundedioptions.html#cfn-b2bi-partnership-x12inboundedioptions-acknowledgmentoptions>
                                  acknowledgmentOptions :: (Prelude.Maybe X12AcknowledgmentOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12InboundEdiOptionsProperty :: X12InboundEdiOptionsProperty
mkX12InboundEdiOptionsProperty
  = X12InboundEdiOptionsProperty
      {haddock_workaround_ = (), acknowledgmentOptions = Prelude.Nothing}
instance ToResourceProperties X12InboundEdiOptionsProperty where
  toResourceProperties X12InboundEdiOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12InboundEdiOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcknowledgmentOptions"
                              Prelude.<$> acknowledgmentOptions])}
instance JSON.ToJSON X12InboundEdiOptionsProperty where
  toJSON X12InboundEdiOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcknowledgmentOptions"
                 Prelude.<$> acknowledgmentOptions]))
instance Property "AcknowledgmentOptions" X12InboundEdiOptionsProperty where
  type PropertyType "AcknowledgmentOptions" X12InboundEdiOptionsProperty = X12AcknowledgmentOptionsProperty
  set newValue X12InboundEdiOptionsProperty {..}
    = X12InboundEdiOptionsProperty
        {acknowledgmentOptions = Prelude.pure newValue, ..}