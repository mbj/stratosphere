module Stratosphere.Billing.BillingView.DimensionsProperty (
        DimensionsProperty(..), mkDimensionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-dimensions.html>
    DimensionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-dimensions.html#cfn-billing-billingview-dimensions-key>
                        key :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-dimensions.html#cfn-billing-billingview-dimensions-values>
                        values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionsProperty :: DimensionsProperty
mkDimensionsProperty
  = DimensionsProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties DimensionsProperty where
  toResourceProperties DimensionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Billing::BillingView.Dimensions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON DimensionsProperty where
  toJSON DimensionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" DimensionsProperty where
  type PropertyType "Key" DimensionsProperty = Value Prelude.Text
  set newValue DimensionsProperty {..}
    = DimensionsProperty {key = Prelude.pure newValue, ..}
instance Property "Values" DimensionsProperty where
  type PropertyType "Values" DimensionsProperty = ValueList Prelude.Text
  set newValue DimensionsProperty {..}
    = DimensionsProperty {values = Prelude.pure newValue, ..}