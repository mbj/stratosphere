module Stratosphere.WAFv2.RuleGroup.LabelSummaryProperty (
        LabelSummaryProperty(..), mkLabelSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelSummaryProperty
  = LabelSummaryProperty {name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelSummaryProperty :: LabelSummaryProperty
mkLabelSummaryProperty
  = LabelSummaryProperty {name = Prelude.Nothing}
instance ToResourceProperties LabelSummaryProperty where
  toResourceProperties LabelSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.LabelSummary",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON LabelSummaryProperty where
  toJSON LabelSummaryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" LabelSummaryProperty where
  type PropertyType "Name" LabelSummaryProperty = Value Prelude.Text
  set newValue LabelSummaryProperty {}
    = LabelSummaryProperty {name = Prelude.pure newValue, ..}