module Stratosphere.B2BI.Partnership.X12FunctionalGroupHeadersProperty (
        X12FunctionalGroupHeadersProperty(..),
        mkX12FunctionalGroupHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12FunctionalGroupHeadersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12functionalgroupheaders.html>
    X12FunctionalGroupHeadersProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12functionalgroupheaders.html#cfn-b2bi-partnership-x12functionalgroupheaders-applicationreceivercode>
                                       applicationReceiverCode :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12functionalgroupheaders.html#cfn-b2bi-partnership-x12functionalgroupheaders-applicationsendercode>
                                       applicationSenderCode :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12functionalgroupheaders.html#cfn-b2bi-partnership-x12functionalgroupheaders-responsibleagencycode>
                                       responsibleAgencyCode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12FunctionalGroupHeadersProperty ::
  X12FunctionalGroupHeadersProperty
mkX12FunctionalGroupHeadersProperty
  = X12FunctionalGroupHeadersProperty
      {haddock_workaround_ = (),
       applicationReceiverCode = Prelude.Nothing,
       applicationSenderCode = Prelude.Nothing,
       responsibleAgencyCode = Prelude.Nothing}
instance ToResourceProperties X12FunctionalGroupHeadersProperty where
  toResourceProperties X12FunctionalGroupHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12FunctionalGroupHeaders",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationReceiverCode"
                              Prelude.<$> applicationReceiverCode,
                            (JSON..=) "ApplicationSenderCode"
                              Prelude.<$> applicationSenderCode,
                            (JSON..=) "ResponsibleAgencyCode"
                              Prelude.<$> responsibleAgencyCode])}
instance JSON.ToJSON X12FunctionalGroupHeadersProperty where
  toJSON X12FunctionalGroupHeadersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationReceiverCode"
                 Prelude.<$> applicationReceiverCode,
               (JSON..=) "ApplicationSenderCode"
                 Prelude.<$> applicationSenderCode,
               (JSON..=) "ResponsibleAgencyCode"
                 Prelude.<$> responsibleAgencyCode]))
instance Property "ApplicationReceiverCode" X12FunctionalGroupHeadersProperty where
  type PropertyType "ApplicationReceiverCode" X12FunctionalGroupHeadersProperty = Value Prelude.Text
  set newValue X12FunctionalGroupHeadersProperty {..}
    = X12FunctionalGroupHeadersProperty
        {applicationReceiverCode = Prelude.pure newValue, ..}
instance Property "ApplicationSenderCode" X12FunctionalGroupHeadersProperty where
  type PropertyType "ApplicationSenderCode" X12FunctionalGroupHeadersProperty = Value Prelude.Text
  set newValue X12FunctionalGroupHeadersProperty {..}
    = X12FunctionalGroupHeadersProperty
        {applicationSenderCode = Prelude.pure newValue, ..}
instance Property "ResponsibleAgencyCode" X12FunctionalGroupHeadersProperty where
  type PropertyType "ResponsibleAgencyCode" X12FunctionalGroupHeadersProperty = Value Prelude.Text
  set newValue X12FunctionalGroupHeadersProperty {..}
    = X12FunctionalGroupHeadersProperty
        {responsibleAgencyCode = Prelude.pure newValue, ..}