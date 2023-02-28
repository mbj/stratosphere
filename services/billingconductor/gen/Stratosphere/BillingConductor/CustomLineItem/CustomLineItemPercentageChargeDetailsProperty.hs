module Stratosphere.BillingConductor.CustomLineItem.CustomLineItemPercentageChargeDetailsProperty (
        CustomLineItemPercentageChargeDetailsProperty(..),
        mkCustomLineItemPercentageChargeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomLineItemPercentageChargeDetailsProperty
  = CustomLineItemPercentageChargeDetailsProperty {childAssociatedResources :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   percentageValue :: (Value Prelude.Double)}
mkCustomLineItemPercentageChargeDetailsProperty ::
  Value Prelude.Double
  -> CustomLineItemPercentageChargeDetailsProperty
mkCustomLineItemPercentageChargeDetailsProperty percentageValue
  = CustomLineItemPercentageChargeDetailsProperty
      {percentageValue = percentageValue,
       childAssociatedResources = Prelude.Nothing}
instance ToResourceProperties CustomLineItemPercentageChargeDetailsProperty where
  toResourceProperties
    CustomLineItemPercentageChargeDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.CustomLineItemPercentageChargeDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PercentageValue" JSON..= percentageValue]
                           (Prelude.catMaybes
                              [(JSON..=) "ChildAssociatedResources"
                                 Prelude.<$> childAssociatedResources]))}
instance JSON.ToJSON CustomLineItemPercentageChargeDetailsProperty where
  toJSON CustomLineItemPercentageChargeDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PercentageValue" JSON..= percentageValue]
              (Prelude.catMaybes
                 [(JSON..=) "ChildAssociatedResources"
                    Prelude.<$> childAssociatedResources])))
instance Property "ChildAssociatedResources" CustomLineItemPercentageChargeDetailsProperty where
  type PropertyType "ChildAssociatedResources" CustomLineItemPercentageChargeDetailsProperty = ValueList Prelude.Text
  set newValue CustomLineItemPercentageChargeDetailsProperty {..}
    = CustomLineItemPercentageChargeDetailsProperty
        {childAssociatedResources = Prelude.pure newValue, ..}
instance Property "PercentageValue" CustomLineItemPercentageChargeDetailsProperty where
  type PropertyType "PercentageValue" CustomLineItemPercentageChargeDetailsProperty = Value Prelude.Double
  set newValue CustomLineItemPercentageChargeDetailsProperty {..}
    = CustomLineItemPercentageChargeDetailsProperty
        {percentageValue = newValue, ..}