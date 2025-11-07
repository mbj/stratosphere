module Stratosphere.Billing.BillingView.DataFilterExpressionProperty (
        module Exports, DataFilterExpressionProperty(..),
        mkDataFilterExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Billing.BillingView.DimensionsProperty as Exports
import {-# SOURCE #-} Stratosphere.Billing.BillingView.TagsProperty as Exports
import Stratosphere.ResourceProperties
data DataFilterExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html>
    DataFilterExpressionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html#cfn-billing-billingview-datafilterexpression-dimensions>
                                  dimensions :: (Prelude.Maybe DimensionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-datafilterexpression.html#cfn-billing-billingview-datafilterexpression-tags>
                                  tags :: (Prelude.Maybe TagsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataFilterExpressionProperty :: DataFilterExpressionProperty
mkDataFilterExpressionProperty
  = DataFilterExpressionProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DataFilterExpressionProperty where
  toResourceProperties DataFilterExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Billing::BillingView.DataFilterExpression",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DataFilterExpressionProperty where
  toJSON DataFilterExpressionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Dimensions" DataFilterExpressionProperty where
  type PropertyType "Dimensions" DataFilterExpressionProperty = DimensionsProperty
  set newValue DataFilterExpressionProperty {..}
    = DataFilterExpressionProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "Tags" DataFilterExpressionProperty where
  type PropertyType "Tags" DataFilterExpressionProperty = TagsProperty
  set newValue DataFilterExpressionProperty {..}
    = DataFilterExpressionProperty {tags = Prelude.pure newValue, ..}