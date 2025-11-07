module Stratosphere.QuickSight.Template.PivotTableConditionalFormattingOptionProperty (
        module Exports, PivotTableConditionalFormattingOptionProperty(..),
        mkPivotTableConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableCellConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableConditionalFormattingOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconditionalformattingoption.html>
    PivotTableConditionalFormattingOptionProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconditionalformattingoption.html#cfn-quicksight-template-pivottableconditionalformattingoption-cell>
                                                   cell :: (Prelude.Maybe PivotTableCellConditionalFormattingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableConditionalFormattingOptionProperty ::
  PivotTableConditionalFormattingOptionProperty
mkPivotTableConditionalFormattingOptionProperty
  = PivotTableConditionalFormattingOptionProperty
      {haddock_workaround_ = (), cell = Prelude.Nothing}
instance ToResourceProperties PivotTableConditionalFormattingOptionProperty where
  toResourceProperties
    PivotTableConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableConditionalFormattingOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Cell" Prelude.<$> cell])}
instance JSON.ToJSON PivotTableConditionalFormattingOptionProperty where
  toJSON PivotTableConditionalFormattingOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Cell" Prelude.<$> cell]))
instance Property "Cell" PivotTableConditionalFormattingOptionProperty where
  type PropertyType "Cell" PivotTableConditionalFormattingOptionProperty = PivotTableCellConditionalFormattingProperty
  set newValue PivotTableConditionalFormattingOptionProperty {..}
    = PivotTableConditionalFormattingOptionProperty
        {cell = Prelude.pure newValue, ..}