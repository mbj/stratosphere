module Stratosphere.B2BI.Partnership.X12AcknowledgmentOptionsProperty (
        X12AcknowledgmentOptionsProperty(..),
        mkX12AcknowledgmentOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data X12AcknowledgmentOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12acknowledgmentoptions.html>
    X12AcknowledgmentOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12acknowledgmentoptions.html#cfn-b2bi-partnership-x12acknowledgmentoptions-functionalacknowledgment>
                                      functionalAcknowledgment :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12acknowledgmentoptions.html#cfn-b2bi-partnership-x12acknowledgmentoptions-technicalacknowledgment>
                                      technicalAcknowledgment :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12AcknowledgmentOptionsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> X12AcknowledgmentOptionsProperty
mkX12AcknowledgmentOptionsProperty
  functionalAcknowledgment
  technicalAcknowledgment
  = X12AcknowledgmentOptionsProperty
      {haddock_workaround_ = (),
       functionalAcknowledgment = functionalAcknowledgment,
       technicalAcknowledgment = technicalAcknowledgment}
instance ToResourceProperties X12AcknowledgmentOptionsProperty where
  toResourceProperties X12AcknowledgmentOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Partnership.X12AcknowledgmentOptions",
         supportsTags = Prelude.False,
         properties = ["FunctionalAcknowledgment"
                         JSON..= functionalAcknowledgment,
                       "TechnicalAcknowledgment" JSON..= technicalAcknowledgment]}
instance JSON.ToJSON X12AcknowledgmentOptionsProperty where
  toJSON X12AcknowledgmentOptionsProperty {..}
    = JSON.object
        ["FunctionalAcknowledgment" JSON..= functionalAcknowledgment,
         "TechnicalAcknowledgment" JSON..= technicalAcknowledgment]
instance Property "FunctionalAcknowledgment" X12AcknowledgmentOptionsProperty where
  type PropertyType "FunctionalAcknowledgment" X12AcknowledgmentOptionsProperty = Value Prelude.Text
  set newValue X12AcknowledgmentOptionsProperty {..}
    = X12AcknowledgmentOptionsProperty
        {functionalAcknowledgment = newValue, ..}
instance Property "TechnicalAcknowledgment" X12AcknowledgmentOptionsProperty where
  type PropertyType "TechnicalAcknowledgment" X12AcknowledgmentOptionsProperty = Value Prelude.Text
  set newValue X12AcknowledgmentOptionsProperty {..}
    = X12AcknowledgmentOptionsProperty
        {technicalAcknowledgment = newValue, ..}