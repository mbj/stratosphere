module Stratosphere.QuickSight.Analysis.DateTimePickerControlDisplayOptionsProperty (
        module Exports, DateTimePickerControlDisplayOptionsProperty(..),
        mkDateTimePickerControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimePickerControlDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimepickercontroldisplayoptions.html>
    DateTimePickerControlDisplayOptionsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimepickercontroldisplayoptions.html#cfn-quicksight-analysis-datetimepickercontroldisplayoptions-dateiconvisibility>
                                                 dateIconVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimepickercontroldisplayoptions.html#cfn-quicksight-analysis-datetimepickercontroldisplayoptions-datetimeformat>
                                                 dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimepickercontroldisplayoptions.html#cfn-quicksight-analysis-datetimepickercontroldisplayoptions-helpertextvisibility>
                                                 helperTextVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimepickercontroldisplayoptions.html#cfn-quicksight-analysis-datetimepickercontroldisplayoptions-infoiconlabeloptions>
                                                 infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimepickercontroldisplayoptions.html#cfn-quicksight-analysis-datetimepickercontroldisplayoptions-titleoptions>
                                                 titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimePickerControlDisplayOptionsProperty ::
  DateTimePickerControlDisplayOptionsProperty
mkDateTimePickerControlDisplayOptionsProperty
  = DateTimePickerControlDisplayOptionsProperty
      {haddock_workaround_ = (), dateIconVisibility = Prelude.Nothing,
       dateTimeFormat = Prelude.Nothing,
       helperTextVisibility = Prelude.Nothing,
       infoIconLabelOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties DateTimePickerControlDisplayOptionsProperty where
  toResourceProperties
    DateTimePickerControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DateTimePickerControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateIconVisibility" Prelude.<$> dateIconVisibility,
                            (JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "HelperTextVisibility" Prelude.<$> helperTextVisibility,
                            (JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON DateTimePickerControlDisplayOptionsProperty where
  toJSON DateTimePickerControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateIconVisibility" Prelude.<$> dateIconVisibility,
               (JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "HelperTextVisibility" Prelude.<$> helperTextVisibility,
               (JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "DateIconVisibility" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "DateIconVisibility" DateTimePickerControlDisplayOptionsProperty = Value Prelude.Text
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {dateIconVisibility = Prelude.pure newValue, ..}
instance Property "DateTimeFormat" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "DateTimeFormat" DateTimePickerControlDisplayOptionsProperty = Value Prelude.Text
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "HelperTextVisibility" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "HelperTextVisibility" DateTimePickerControlDisplayOptionsProperty = Value Prelude.Text
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {helperTextVisibility = Prelude.pure newValue, ..}
instance Property "InfoIconLabelOptions" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" DateTimePickerControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" DateTimePickerControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" DateTimePickerControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue DateTimePickerControlDisplayOptionsProperty {..}
    = DateTimePickerControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}