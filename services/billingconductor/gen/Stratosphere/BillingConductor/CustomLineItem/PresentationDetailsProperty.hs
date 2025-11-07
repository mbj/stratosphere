module Stratosphere.BillingConductor.CustomLineItem.PresentationDetailsProperty (
        PresentationDetailsProperty(..), mkPresentationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PresentationDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-presentationdetails.html>
    PresentationDetailsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-presentationdetails.html#cfn-billingconductor-customlineitem-presentationdetails-service>
                                 service :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPresentationDetailsProperty ::
  Value Prelude.Text -> PresentationDetailsProperty
mkPresentationDetailsProperty service
  = PresentationDetailsProperty
      {haddock_workaround_ = (), service = service}
instance ToResourceProperties PresentationDetailsProperty where
  toResourceProperties PresentationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.PresentationDetails",
         supportsTags = Prelude.False,
         properties = ["Service" JSON..= service]}
instance JSON.ToJSON PresentationDetailsProperty where
  toJSON PresentationDetailsProperty {..}
    = JSON.object ["Service" JSON..= service]
instance Property "Service" PresentationDetailsProperty where
  type PropertyType "Service" PresentationDetailsProperty = Value Prelude.Text
  set newValue PresentationDetailsProperty {..}
    = PresentationDetailsProperty {service = newValue, ..}