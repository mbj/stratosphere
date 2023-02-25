module Stratosphere.BillingConductor.CustomLineItem (
        module Exports, CustomLineItem(..), mkCustomLineItem
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.BillingPeriodRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.CustomLineItemChargeDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CustomLineItem
  = CustomLineItem {billingGroupArn :: (Value Prelude.Text),
                    billingPeriodRange :: (Prelude.Maybe BillingPeriodRangeProperty),
                    customLineItemChargeDetails :: (Prelude.Maybe CustomLineItemChargeDetailsProperty),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe [Tag])}
mkCustomLineItem ::
  Value Prelude.Text -> Value Prelude.Text -> CustomLineItem
mkCustomLineItem billingGroupArn name
  = CustomLineItem
      {billingGroupArn = billingGroupArn, name = name,
       billingPeriodRange = Prelude.Nothing,
       customLineItemChargeDetails = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CustomLineItem where
  toResourceProperties CustomLineItem {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BillingGroupArn" JSON..= billingGroupArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "BillingPeriodRange" Prelude.<$> billingPeriodRange,
                               (JSON..=) "CustomLineItemChargeDetails"
                                 Prelude.<$> customLineItemChargeDetails,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CustomLineItem where
  toJSON CustomLineItem {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BillingGroupArn" JSON..= billingGroupArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "BillingPeriodRange" Prelude.<$> billingPeriodRange,
                  (JSON..=) "CustomLineItemChargeDetails"
                    Prelude.<$> customLineItemChargeDetails,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BillingGroupArn" CustomLineItem where
  type PropertyType "BillingGroupArn" CustomLineItem = Value Prelude.Text
  set newValue CustomLineItem {..}
    = CustomLineItem {billingGroupArn = newValue, ..}
instance Property "BillingPeriodRange" CustomLineItem where
  type PropertyType "BillingPeriodRange" CustomLineItem = BillingPeriodRangeProperty
  set newValue CustomLineItem {..}
    = CustomLineItem {billingPeriodRange = Prelude.pure newValue, ..}
instance Property "CustomLineItemChargeDetails" CustomLineItem where
  type PropertyType "CustomLineItemChargeDetails" CustomLineItem = CustomLineItemChargeDetailsProperty
  set newValue CustomLineItem {..}
    = CustomLineItem
        {customLineItemChargeDetails = Prelude.pure newValue, ..}
instance Property "Description" CustomLineItem where
  type PropertyType "Description" CustomLineItem = Value Prelude.Text
  set newValue CustomLineItem {..}
    = CustomLineItem {description = Prelude.pure newValue, ..}
instance Property "Name" CustomLineItem where
  type PropertyType "Name" CustomLineItem = Value Prelude.Text
  set newValue CustomLineItem {..}
    = CustomLineItem {name = newValue, ..}
instance Property "Tags" CustomLineItem where
  type PropertyType "Tags" CustomLineItem = [Tag]
  set newValue CustomLineItem {..}
    = CustomLineItem {tags = Prelude.pure newValue, ..}