module Stratosphere.BillingConductor.CustomLineItem.CustomLineItemChargeDetailsProperty (
        module Exports, CustomLineItemChargeDetailsProperty(..),
        mkCustomLineItemChargeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.CustomLineItemFlatChargeDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.CustomLineItemPercentageChargeDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomLineItemChargeDetailsProperty
  = CustomLineItemChargeDetailsProperty {flat :: (Prelude.Maybe CustomLineItemFlatChargeDetailsProperty),
                                         percentage :: (Prelude.Maybe CustomLineItemPercentageChargeDetailsProperty),
                                         type' :: (Value Prelude.Text)}
mkCustomLineItemChargeDetailsProperty ::
  Value Prelude.Text -> CustomLineItemChargeDetailsProperty
mkCustomLineItemChargeDetailsProperty type'
  = CustomLineItemChargeDetailsProperty
      {type' = type', flat = Prelude.Nothing,
       percentage = Prelude.Nothing}
instance ToResourceProperties CustomLineItemChargeDetailsProperty where
  toResourceProperties CustomLineItemChargeDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.CustomLineItemChargeDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Flat" Prelude.<$> flat,
                               (JSON..=) "Percentage" Prelude.<$> percentage]))}
instance JSON.ToJSON CustomLineItemChargeDetailsProperty where
  toJSON CustomLineItemChargeDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Flat" Prelude.<$> flat,
                  (JSON..=) "Percentage" Prelude.<$> percentage])))
instance Property "Flat" CustomLineItemChargeDetailsProperty where
  type PropertyType "Flat" CustomLineItemChargeDetailsProperty = CustomLineItemFlatChargeDetailsProperty
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty
        {flat = Prelude.pure newValue, ..}
instance Property "Percentage" CustomLineItemChargeDetailsProperty where
  type PropertyType "Percentage" CustomLineItemChargeDetailsProperty = CustomLineItemPercentageChargeDetailsProperty
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty
        {percentage = Prelude.pure newValue, ..}
instance Property "Type" CustomLineItemChargeDetailsProperty where
  type PropertyType "Type" CustomLineItemChargeDetailsProperty = Value Prelude.Text
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty {type' = newValue, ..}