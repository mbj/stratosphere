module Stratosphere.QuickSight.Analysis.FilterControlProperty (
        module Exports, FilterControlProperty(..), mkFilterControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterCrossSheetControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterDateTimePickerControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterDropDownControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterListControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterRelativeDateTimeControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterSliderControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterTextAreaControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterTextFieldControlProperty as Exports
import Stratosphere.ResourceProperties
data FilterControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html>
    FilterControlProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-crosssheet>
                           crossSheet :: (Prelude.Maybe FilterCrossSheetControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-datetimepicker>
                           dateTimePicker :: (Prelude.Maybe FilterDateTimePickerControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-dropdown>
                           dropdown :: (Prelude.Maybe FilterDropDownControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-list>
                           list :: (Prelude.Maybe FilterListControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-relativedatetime>
                           relativeDateTime :: (Prelude.Maybe FilterRelativeDateTimeControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-slider>
                           slider :: (Prelude.Maybe FilterSliderControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-textarea>
                           textArea :: (Prelude.Maybe FilterTextAreaControlProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filtercontrol.html#cfn-quicksight-analysis-filtercontrol-textfield>
                           textField :: (Prelude.Maybe FilterTextFieldControlProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterControlProperty :: FilterControlProperty
mkFilterControlProperty
  = FilterControlProperty
      {haddock_workaround_ = (), crossSheet = Prelude.Nothing,
       dateTimePicker = Prelude.Nothing, dropdown = Prelude.Nothing,
       list = Prelude.Nothing, relativeDateTime = Prelude.Nothing,
       slider = Prelude.Nothing, textArea = Prelude.Nothing,
       textField = Prelude.Nothing}
instance ToResourceProperties FilterControlProperty where
  toResourceProperties FilterControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CrossSheet" Prelude.<$> crossSheet,
                            (JSON..=) "DateTimePicker" Prelude.<$> dateTimePicker,
                            (JSON..=) "Dropdown" Prelude.<$> dropdown,
                            (JSON..=) "List" Prelude.<$> list,
                            (JSON..=) "RelativeDateTime" Prelude.<$> relativeDateTime,
                            (JSON..=) "Slider" Prelude.<$> slider,
                            (JSON..=) "TextArea" Prelude.<$> textArea,
                            (JSON..=) "TextField" Prelude.<$> textField])}
instance JSON.ToJSON FilterControlProperty where
  toJSON FilterControlProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CrossSheet" Prelude.<$> crossSheet,
               (JSON..=) "DateTimePicker" Prelude.<$> dateTimePicker,
               (JSON..=) "Dropdown" Prelude.<$> dropdown,
               (JSON..=) "List" Prelude.<$> list,
               (JSON..=) "RelativeDateTime" Prelude.<$> relativeDateTime,
               (JSON..=) "Slider" Prelude.<$> slider,
               (JSON..=) "TextArea" Prelude.<$> textArea,
               (JSON..=) "TextField" Prelude.<$> textField]))
instance Property "CrossSheet" FilterControlProperty where
  type PropertyType "CrossSheet" FilterControlProperty = FilterCrossSheetControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty {crossSheet = Prelude.pure newValue, ..}
instance Property "DateTimePicker" FilterControlProperty where
  type PropertyType "DateTimePicker" FilterControlProperty = FilterDateTimePickerControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty
        {dateTimePicker = Prelude.pure newValue, ..}
instance Property "Dropdown" FilterControlProperty where
  type PropertyType "Dropdown" FilterControlProperty = FilterDropDownControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty {dropdown = Prelude.pure newValue, ..}
instance Property "List" FilterControlProperty where
  type PropertyType "List" FilterControlProperty = FilterListControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty {list = Prelude.pure newValue, ..}
instance Property "RelativeDateTime" FilterControlProperty where
  type PropertyType "RelativeDateTime" FilterControlProperty = FilterRelativeDateTimeControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty
        {relativeDateTime = Prelude.pure newValue, ..}
instance Property "Slider" FilterControlProperty where
  type PropertyType "Slider" FilterControlProperty = FilterSliderControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty {slider = Prelude.pure newValue, ..}
instance Property "TextArea" FilterControlProperty where
  type PropertyType "TextArea" FilterControlProperty = FilterTextAreaControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty {textArea = Prelude.pure newValue, ..}
instance Property "TextField" FilterControlProperty where
  type PropertyType "TextField" FilterControlProperty = FilterTextFieldControlProperty
  set newValue FilterControlProperty {..}
    = FilterControlProperty {textField = Prelude.pure newValue, ..}