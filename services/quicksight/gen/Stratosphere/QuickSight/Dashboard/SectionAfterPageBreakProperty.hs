module Stratosphere.QuickSight.Dashboard.SectionAfterPageBreakProperty (
        SectionAfterPageBreakProperty(..), mkSectionAfterPageBreakProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SectionAfterPageBreakProperty
  = SectionAfterPageBreakProperty {status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionAfterPageBreakProperty :: SectionAfterPageBreakProperty
mkSectionAfterPageBreakProperty
  = SectionAfterPageBreakProperty {status = Prelude.Nothing}
instance ToResourceProperties SectionAfterPageBreakProperty where
  toResourceProperties SectionAfterPageBreakProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SectionAfterPageBreak",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON SectionAfterPageBreakProperty where
  toJSON SectionAfterPageBreakProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))
instance Property "Status" SectionAfterPageBreakProperty where
  type PropertyType "Status" SectionAfterPageBreakProperty = Value Prelude.Text
  set newValue SectionAfterPageBreakProperty {}
    = SectionAfterPageBreakProperty
        {status = Prelude.pure newValue, ..}