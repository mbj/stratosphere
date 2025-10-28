module Stratosphere.B2BI.Partnership.X12OutboundEdiHeadersProperty (
        module Exports, X12OutboundEdiHeadersProperty(..),
        mkX12OutboundEdiHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12DelimitersProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12FunctionalGroupHeadersProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Partnership.X12InterchangeControlHeadersProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12OutboundEdiHeadersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html>
    X12OutboundEdiHeadersProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-delimiters>
                                   delimiters :: (Prelude.Maybe X12DelimitersProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-functionalgroupheaders>
                                   functionalGroupHeaders :: (Prelude.Maybe X12FunctionalGroupHeadersProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-interchangecontrolheaders>
                                   interchangeControlHeaders :: (Prelude.Maybe X12InterchangeControlHeadersProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-validateedi>
                                   validateEdi :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12OutboundEdiHeadersProperty :: X12OutboundEdiHeadersProperty
mkX12OutboundEdiHeadersProperty
  = X12OutboundEdiHeadersProperty
      {haddock_workaround_ = (), delimiters = Prelude.Nothing,
       functionalGroupHeaders = Prelude.Nothing,
       interchangeControlHeaders = Prelude.Nothing,
       validateEdi = Prelude.Nothing}
instance ToResourceProperties X12OutboundEdiHeadersProperty where
  toResourceProperties X12OutboundEdiHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12OutboundEdiHeaders",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Delimiters" Prelude.<$> delimiters,
                            (JSON..=) "FunctionalGroupHeaders"
                              Prelude.<$> functionalGroupHeaders,
                            (JSON..=) "InterchangeControlHeaders"
                              Prelude.<$> interchangeControlHeaders,
                            (JSON..=) "ValidateEdi" Prelude.<$> validateEdi])}
instance JSON.ToJSON X12OutboundEdiHeadersProperty where
  toJSON X12OutboundEdiHeadersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Delimiters" Prelude.<$> delimiters,
               (JSON..=) "FunctionalGroupHeaders"
                 Prelude.<$> functionalGroupHeaders,
               (JSON..=) "InterchangeControlHeaders"
                 Prelude.<$> interchangeControlHeaders,
               (JSON..=) "ValidateEdi" Prelude.<$> validateEdi]))
instance Property "Delimiters" X12OutboundEdiHeadersProperty where
  type PropertyType "Delimiters" X12OutboundEdiHeadersProperty = X12DelimitersProperty
  set newValue X12OutboundEdiHeadersProperty {..}
    = X12OutboundEdiHeadersProperty
        {delimiters = Prelude.pure newValue, ..}
instance Property "FunctionalGroupHeaders" X12OutboundEdiHeadersProperty where
  type PropertyType "FunctionalGroupHeaders" X12OutboundEdiHeadersProperty = X12FunctionalGroupHeadersProperty
  set newValue X12OutboundEdiHeadersProperty {..}
    = X12OutboundEdiHeadersProperty
        {functionalGroupHeaders = Prelude.pure newValue, ..}
instance Property "InterchangeControlHeaders" X12OutboundEdiHeadersProperty where
  type PropertyType "InterchangeControlHeaders" X12OutboundEdiHeadersProperty = X12InterchangeControlHeadersProperty
  set newValue X12OutboundEdiHeadersProperty {..}
    = X12OutboundEdiHeadersProperty
        {interchangeControlHeaders = Prelude.pure newValue, ..}
instance Property "ValidateEdi" X12OutboundEdiHeadersProperty where
  type PropertyType "ValidateEdi" X12OutboundEdiHeadersProperty = Value Prelude.Bool
  set newValue X12OutboundEdiHeadersProperty {..}
    = X12OutboundEdiHeadersProperty
        {validateEdi = Prelude.pure newValue, ..}