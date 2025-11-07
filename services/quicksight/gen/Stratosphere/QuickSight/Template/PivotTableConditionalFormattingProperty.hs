module Stratosphere.QuickSight.Template.PivotTableConditionalFormattingProperty (
        module Exports, PivotTableConditionalFormattingProperty(..),
        mkPivotTableConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data PivotTableConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconditionalformatting.html>
    PivotTableConditionalFormattingProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pivottableconditionalformatting.html#cfn-quicksight-template-pivottableconditionalformatting-conditionalformattingoptions>
                                             conditionalFormattingOptions :: (Prelude.Maybe [PivotTableConditionalFormattingOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableConditionalFormattingProperty ::
  PivotTableConditionalFormattingProperty
mkPivotTableConditionalFormattingProperty
  = PivotTableConditionalFormattingProperty
      {haddock_workaround_ = (),
       conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties PivotTableConditionalFormattingProperty where
  toResourceProperties PivotTableConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON PivotTableConditionalFormattingProperty where
  toJSON PivotTableConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" PivotTableConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" PivotTableConditionalFormattingProperty = [PivotTableConditionalFormattingOptionProperty]
  set newValue PivotTableConditionalFormattingProperty {..}
    = PivotTableConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}