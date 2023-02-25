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
  = CustomLineItemFlatChargeDetailsProperty {chargeValue :: (Value Prelude.Double)}
mkCustomLineItemFlatChargeDetailsProperty ::
  Value Prelude.Double -> CustomLineItemFlatChargeDetailsProperty
mkCustomLineItemFlatChargeDetailsProperty chargeValue
  = CustomLineItemFlatChargeDetailsProperty
      {chargeValue = chargeValue}
instance ToResourceProperties CustomLineItemFlatChargeDetailsProperty where
  toResourceProperties CustomLineItemFlatChargeDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.CustomLineItemFlatChargeDetails",
         properties = ["ChargeValue" JSON..= chargeValue]}
instance JSON.ToJSON CustomLineItemFlatChargeDetailsProperty where
  toJSON CustomLineItemFlatChargeDetailsProperty {..}
    = JSON.object ["ChargeValue" JSON..= chargeValue]
instance Property "ChargeValue" CustomLineItemFlatChargeDetailsProperty where
  type PropertyType "ChargeValue" CustomLineItemFlatChargeDetailsProperty = Value Prelude.Double
  set newValue CustomLineItemFlatChargeDetailsProperty {}
    = CustomLineItemFlatChargeDetailsProperty
        {chargeValue = newValue, ..}