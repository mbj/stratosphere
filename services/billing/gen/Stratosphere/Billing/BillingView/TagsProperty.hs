module Stratosphere.Billing.BillingView.TagsProperty (
        TagsProperty(..), mkTagsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TagsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-tags.html>
    TagsProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-tags.html#cfn-billing-billingview-tags-key>
                  key :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billing-billingview-tags.html#cfn-billing-billingview-tags-values>
                  values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTagsProperty :: TagsProperty
mkTagsProperty
  = TagsProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties TagsProperty where
  toResourceProperties TagsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Billing::BillingView.Tags",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON TagsProperty where
  toJSON TagsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Key" TagsProperty where
  type PropertyType "Key" TagsProperty = Value Prelude.Text
  set newValue TagsProperty {..}
    = TagsProperty {key = Prelude.pure newValue, ..}
instance Property "Values" TagsProperty where
  type PropertyType "Values" TagsProperty = ValueList Prelude.Text
  set newValue TagsProperty {..}
    = TagsProperty {values = Prelude.pure newValue, ..}