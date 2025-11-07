module Stratosphere.QuickSight.Analysis.SectionAfterPageBreakProperty (
        SectionAfterPageBreakProperty(..), mkSectionAfterPageBreakProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SectionAfterPageBreakProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sectionafterpagebreak.html>
    SectionAfterPageBreakProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sectionafterpagebreak.html#cfn-quicksight-analysis-sectionafterpagebreak-status>
                                   status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionAfterPageBreakProperty :: SectionAfterPageBreakProperty
mkSectionAfterPageBreakProperty
  = SectionAfterPageBreakProperty
      {haddock_workaround_ = (), status = Prelude.Nothing}
instance ToResourceProperties SectionAfterPageBreakProperty where
  toResourceProperties SectionAfterPageBreakProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SectionAfterPageBreak",
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
  set newValue SectionAfterPageBreakProperty {..}
    = SectionAfterPageBreakProperty
        {status = Prelude.pure newValue, ..}