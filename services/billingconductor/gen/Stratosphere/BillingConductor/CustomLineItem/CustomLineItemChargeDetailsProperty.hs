module Stratosphere.BillingConductor.CustomLineItem.CustomLineItemChargeDetailsProperty (
        module Exports, CustomLineItemChargeDetailsProperty(..),
        mkCustomLineItemChargeDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.CustomLineItemFlatChargeDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.CustomLineItemPercentageChargeDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.BillingConductor.CustomLineItem.LineItemFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomLineItemChargeDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html>
    CustomLineItemChargeDetailsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-flat>
                                         flat :: (Prelude.Maybe CustomLineItemFlatChargeDetailsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-lineitemfilters>
                                         lineItemFilters :: (Prelude.Maybe [LineItemFilterProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-percentage>
                                         percentage :: (Prelude.Maybe CustomLineItemPercentageChargeDetailsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitemchargedetails.html#cfn-billingconductor-customlineitem-customlineitemchargedetails-type>
                                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomLineItemChargeDetailsProperty ::
  Value Prelude.Text -> CustomLineItemChargeDetailsProperty
mkCustomLineItemChargeDetailsProperty type'
  = CustomLineItemChargeDetailsProperty
      {haddock_workaround_ = (), type' = type', flat = Prelude.Nothing,
       lineItemFilters = Prelude.Nothing, percentage = Prelude.Nothing}
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
                               (JSON..=) "LineItemFilters" Prelude.<$> lineItemFilters,
                               (JSON..=) "Percentage" Prelude.<$> percentage]))}
instance JSON.ToJSON CustomLineItemChargeDetailsProperty where
  toJSON CustomLineItemChargeDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Flat" Prelude.<$> flat,
                  (JSON..=) "LineItemFilters" Prelude.<$> lineItemFilters,
                  (JSON..=) "Percentage" Prelude.<$> percentage])))
instance Property "Flat" CustomLineItemChargeDetailsProperty where
  type PropertyType "Flat" CustomLineItemChargeDetailsProperty = CustomLineItemFlatChargeDetailsProperty
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty
        {flat = Prelude.pure newValue, ..}
instance Property "LineItemFilters" CustomLineItemChargeDetailsProperty where
  type PropertyType "LineItemFilters" CustomLineItemChargeDetailsProperty = [LineItemFilterProperty]
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty
        {lineItemFilters = Prelude.pure newValue, ..}
instance Property "Percentage" CustomLineItemChargeDetailsProperty where
  type PropertyType "Percentage" CustomLineItemChargeDetailsProperty = CustomLineItemPercentageChargeDetailsProperty
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty
        {percentage = Prelude.pure newValue, ..}
instance Property "Type" CustomLineItemChargeDetailsProperty where
  type PropertyType "Type" CustomLineItemChargeDetailsProperty = Value Prelude.Text
  set newValue CustomLineItemChargeDetailsProperty {..}
    = CustomLineItemChargeDetailsProperty {type' = newValue, ..}