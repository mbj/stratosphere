module Stratosphere.Billing.BillingView (
        module Exports, BillingView(..), mkBillingView
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Billing.BillingView.DataFilterExpressionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data BillingView
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billing-billingview.html>
    BillingView {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billing-billingview.html#cfn-billing-billingview-datafilterexpression>
                 dataFilterExpression :: (Prelude.Maybe DataFilterExpressionProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billing-billingview.html#cfn-billing-billingview-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billing-billingview.html#cfn-billing-billingview-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billing-billingview.html#cfn-billing-billingview-sourceviews>
                 sourceViews :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billing-billingview.html#cfn-billing-billingview-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBillingView ::
  Value Prelude.Text -> ValueList Prelude.Text -> BillingView
mkBillingView name sourceViews
  = BillingView
      {haddock_workaround_ = (), name = name, sourceViews = sourceViews,
       dataFilterExpression = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties BillingView where
  toResourceProperties BillingView {..}
    = ResourceProperties
        {awsType = "AWS::Billing::BillingView",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SourceViews" JSON..= sourceViews]
                           (Prelude.catMaybes
                              [(JSON..=) "DataFilterExpression" Prelude.<$> dataFilterExpression,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON BillingView where
  toJSON BillingView {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SourceViews" JSON..= sourceViews]
              (Prelude.catMaybes
                 [(JSON..=) "DataFilterExpression" Prelude.<$> dataFilterExpression,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DataFilterExpression" BillingView where
  type PropertyType "DataFilterExpression" BillingView = DataFilterExpressionProperty
  set newValue BillingView {..}
    = BillingView {dataFilterExpression = Prelude.pure newValue, ..}
instance Property "Description" BillingView where
  type PropertyType "Description" BillingView = Value Prelude.Text
  set newValue BillingView {..}
    = BillingView {description = Prelude.pure newValue, ..}
instance Property "Name" BillingView where
  type PropertyType "Name" BillingView = Value Prelude.Text
  set newValue BillingView {..} = BillingView {name = newValue, ..}
instance Property "SourceViews" BillingView where
  type PropertyType "SourceViews" BillingView = ValueList Prelude.Text
  set newValue BillingView {..}
    = BillingView {sourceViews = newValue, ..}
instance Property "Tags" BillingView where
  type PropertyType "Tags" BillingView = [Tag]
  set newValue BillingView {..}
    = BillingView {tags = Prelude.pure newValue, ..}