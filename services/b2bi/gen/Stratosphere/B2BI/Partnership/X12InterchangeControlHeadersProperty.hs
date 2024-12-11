module Stratosphere.B2BI.Partnership.X12InterchangeControlHeadersProperty (
        X12InterchangeControlHeadersProperty(..),
        mkX12InterchangeControlHeadersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12InterchangeControlHeadersProperty
  = X12InterchangeControlHeadersProperty {acknowledgmentRequestedCode :: (Prelude.Maybe (Value Prelude.Text)),
                                          receiverId :: (Prelude.Maybe (Value Prelude.Text)),
                                          receiverIdQualifier :: (Prelude.Maybe (Value Prelude.Text)),
                                          repetitionSeparator :: (Prelude.Maybe (Value Prelude.Text)),
                                          senderId :: (Prelude.Maybe (Value Prelude.Text)),
                                          senderIdQualifier :: (Prelude.Maybe (Value Prelude.Text)),
                                          usageIndicatorCode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12InterchangeControlHeadersProperty ::
  X12InterchangeControlHeadersProperty
mkX12InterchangeControlHeadersProperty
  = X12InterchangeControlHeadersProperty
      {acknowledgmentRequestedCode = Prelude.Nothing,
       receiverId = Prelude.Nothing,
       receiverIdQualifier = Prelude.Nothing,
       repetitionSeparator = Prelude.Nothing, senderId = Prelude.Nothing,
       senderIdQualifier = Prelude.Nothing,
       usageIndicatorCode = Prelude.Nothing}
instance ToResourceProperties X12InterchangeControlHeadersProperty where
  toResourceProperties X12InterchangeControlHeadersProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12InterchangeControlHeaders",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcknowledgmentRequestedCode"
                              Prelude.<$> acknowledgmentRequestedCode,
                            (JSON..=) "ReceiverId" Prelude.<$> receiverId,
                            (JSON..=) "ReceiverIdQualifier" Prelude.<$> receiverIdQualifier,
                            (JSON..=) "RepetitionSeparator" Prelude.<$> repetitionSeparator,
                            (JSON..=) "SenderId" Prelude.<$> senderId,
                            (JSON..=) "SenderIdQualifier" Prelude.<$> senderIdQualifier,
                            (JSON..=) "UsageIndicatorCode" Prelude.<$> usageIndicatorCode])}
instance JSON.ToJSON X12InterchangeControlHeadersProperty where
  toJSON X12InterchangeControlHeadersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcknowledgmentRequestedCode"
                 Prelude.<$> acknowledgmentRequestedCode,
               (JSON..=) "ReceiverId" Prelude.<$> receiverId,
               (JSON..=) "ReceiverIdQualifier" Prelude.<$> receiverIdQualifier,
               (JSON..=) "RepetitionSeparator" Prelude.<$> repetitionSeparator,
               (JSON..=) "SenderId" Prelude.<$> senderId,
               (JSON..=) "SenderIdQualifier" Prelude.<$> senderIdQualifier,
               (JSON..=) "UsageIndicatorCode" Prelude.<$> usageIndicatorCode]))
instance Property "AcknowledgmentRequestedCode" X12InterchangeControlHeadersProperty where
  type PropertyType "AcknowledgmentRequestedCode" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {acknowledgmentRequestedCode = Prelude.pure newValue, ..}
instance Property "ReceiverId" X12InterchangeControlHeadersProperty where
  type PropertyType "ReceiverId" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {receiverId = Prelude.pure newValue, ..}
instance Property "ReceiverIdQualifier" X12InterchangeControlHeadersProperty where
  type PropertyType "ReceiverIdQualifier" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {receiverIdQualifier = Prelude.pure newValue, ..}
instance Property "RepetitionSeparator" X12InterchangeControlHeadersProperty where
  type PropertyType "RepetitionSeparator" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {repetitionSeparator = Prelude.pure newValue, ..}
instance Property "SenderId" X12InterchangeControlHeadersProperty where
  type PropertyType "SenderId" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {senderId = Prelude.pure newValue, ..}
instance Property "SenderIdQualifier" X12InterchangeControlHeadersProperty where
  type PropertyType "SenderIdQualifier" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {senderIdQualifier = Prelude.pure newValue, ..}
instance Property "UsageIndicatorCode" X12InterchangeControlHeadersProperty where
  type PropertyType "UsageIndicatorCode" X12InterchangeControlHeadersProperty = Value Prelude.Text
  set newValue X12InterchangeControlHeadersProperty {..}
    = X12InterchangeControlHeadersProperty
        {usageIndicatorCode = Prelude.pure newValue, ..}