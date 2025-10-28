module Stratosphere.BillingConductor.CustomLineItem.CustomLineItemFlatChargeDetailsProperty (
        CustomLineItemFlatChargeDetailsProperty(..),
        mkCustomLineItemFlatChargeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomLineItemFlatChargeDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemflatchargedetails.html>
    CustomLineItemFlatChargeDetailsProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemflatchargedetails.html#cfn-billingconductor-customlineitem-customlineitemflatchargedetails-chargevalue>
                                             chargeValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomLineItemFlatChargeDetailsProperty ::
  Value Prelude.Double -> CustomLineItemFlatChargeDetailsProperty
mkCustomLineItemFlatChargeDetailsProperty chargeValue
  = CustomLineItemFlatChargeDetailsProperty
      {haddock_workaround_ = (), chargeValue = chargeValue}
instance ToResourceProperties CustomLineItemFlatChargeDetailsProperty where
  toResourceProperties CustomLineItemFlatChargeDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.CustomLineItemFlatChargeDetails",
         supportsTags = Prelude.False,
         properties = ["ChargeValue" JSON..= chargeValue]}
instance JSON.ToJSON CustomLineItemFlatChargeDetailsProperty where
  toJSON CustomLineItemFlatChargeDetailsProperty {..}
    = JSON.object ["ChargeValue" JSON..= chargeValue]
instance Property "ChargeValue" CustomLineItemFlatChargeDetailsProperty where
  type PropertyType "ChargeValue" CustomLineItemFlatChargeDetailsProperty = Value Prelude.Double
  set newValue CustomLineItemFlatChargeDetailsProperty {..}
    = CustomLineItemFlatChargeDetailsProperty
        {chargeValue = newValue, ..}