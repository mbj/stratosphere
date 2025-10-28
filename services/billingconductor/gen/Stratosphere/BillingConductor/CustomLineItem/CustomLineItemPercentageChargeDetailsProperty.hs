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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitempercentagechargedetails.html>
    CustomLineItemPercentageChargeDetailsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitempercentagechargedetails.html#cfn-billingconductor-customlineitem-customlineitempercentagechargedetails-childassociatedresources>
                                                   childAssociatedResources :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-customlineitempercentagechargedetails.html#cfn-billingconductor-customlineitem-customlineitempercentagechargedetails-percentagevalue>
                                                   percentageValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomLineItemPercentageChargeDetailsProperty ::
  Value Prelude.Double
  -> CustomLineItemPercentageChargeDetailsProperty
mkCustomLineItemPercentageChargeDetailsProperty percentageValue
  = CustomLineItemPercentageChargeDetailsProperty
      {haddock_workaround_ = (), percentageValue = percentageValue,
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