module Stratosphere.BillingConductor.CustomLineItem.BillingPeriodRangeProperty (
        BillingPeriodRangeProperty(..), mkBillingPeriodRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BillingPeriodRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-billingperiodrange.html>
    BillingPeriodRangeProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-billingperiodrange.html#cfn-billingconductor-customlineitem-billingperiodrange-exclusiveendbillingperiod>
                                exclusiveEndBillingPeriod :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-customlineitem-billingperiodrange.html#cfn-billingconductor-customlineitem-billingperiodrange-inclusivestartbillingperiod>
                                inclusiveStartBillingPeriod :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBillingPeriodRangeProperty :: BillingPeriodRangeProperty
mkBillingPeriodRangeProperty
  = BillingPeriodRangeProperty
      {haddock_workaround_ = (),
       exclusiveEndBillingPeriod = Prelude.Nothing,
       inclusiveStartBillingPeriod = Prelude.Nothing}
instance ToResourceProperties BillingPeriodRangeProperty where
  toResourceProperties BillingPeriodRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.BillingPeriodRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExclusiveEndBillingPeriod"
                              Prelude.<$> exclusiveEndBillingPeriod,
                            (JSON..=) "InclusiveStartBillingPeriod"
                              Prelude.<$> inclusiveStartBillingPeriod])}
instance JSON.ToJSON BillingPeriodRangeProperty where
  toJSON BillingPeriodRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExclusiveEndBillingPeriod"
                 Prelude.<$> exclusiveEndBillingPeriod,
               (JSON..=) "InclusiveStartBillingPeriod"
                 Prelude.<$> inclusiveStartBillingPeriod]))
instance Property "ExclusiveEndBillingPeriod" BillingPeriodRangeProperty where
  type PropertyType "ExclusiveEndBillingPeriod" BillingPeriodRangeProperty = Value Prelude.Text
  set newValue BillingPeriodRangeProperty {..}
    = BillingPeriodRangeProperty
        {exclusiveEndBillingPeriod = Prelude.pure newValue, ..}
instance Property "InclusiveStartBillingPeriod" BillingPeriodRangeProperty where
  type PropertyType "InclusiveStartBillingPeriod" BillingPeriodRangeProperty = Value Prelude.Text
  set newValue BillingPeriodRangeProperty {..}
    = BillingPeriodRangeProperty
        {inclusiveStartBillingPeriod = Prelude.pure newValue, ..}