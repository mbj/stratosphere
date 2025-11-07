module Stratosphere.QuickSight.Analysis.FilterDateTimePickerControlProperty (
        module Exports, FilterDateTimePickerControlProperty(..),
        mkFilterDateTimePickerControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateTimePickerControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterDateTimePickerControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html>
    FilterDateTimePickerControlProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html#cfn-quicksight-analysis-filterdatetimepickercontrol-commitmode>
                                         commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html#cfn-quicksight-analysis-filterdatetimepickercontrol-displayoptions>
                                         displayOptions :: (Prelude.Maybe DateTimePickerControlDisplayOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html#cfn-quicksight-analysis-filterdatetimepickercontrol-filtercontrolid>
                                         filterControlId :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html#cfn-quicksight-analysis-filterdatetimepickercontrol-sourcefilterid>
                                         sourceFilterId :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html#cfn-quicksight-analysis-filterdatetimepickercontrol-title>
                                         title :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterdatetimepickercontrol.html#cfn-quicksight-analysis-filterdatetimepickercontrol-type>
                                         type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterDateTimePickerControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterDateTimePickerControlProperty
mkFilterDateTimePickerControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterDateTimePickerControlProperty
      {haddock_workaround_ = (), filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       commitMode = Prelude.Nothing, displayOptions = Prelude.Nothing,
       type' = Prelude.Nothing}
instance ToResourceProperties FilterDateTimePickerControlProperty where
  toResourceProperties FilterDateTimePickerControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterDateTimePickerControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON FilterDateTimePickerControlProperty where
  toJSON FilterDateTimePickerControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CommitMode" FilterDateTimePickerControlProperty where
  type PropertyType "CommitMode" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterDateTimePickerControlProperty where
  type PropertyType "DisplayOptions" FilterDateTimePickerControlProperty = DateTimePickerControlDisplayOptionsProperty
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterDateTimePickerControlProperty where
  type PropertyType "FilterControlId" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterDateTimePickerControlProperty where
  type PropertyType "SourceFilterId" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {sourceFilterId = newValue, ..}
instance Property "Title" FilterDateTimePickerControlProperty where
  type PropertyType "Title" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty {title = newValue, ..}
instance Property "Type" FilterDateTimePickerControlProperty where
  type PropertyType "Type" FilterDateTimePickerControlProperty = Value Prelude.Text
  set newValue FilterDateTimePickerControlProperty {..}
    = FilterDateTimePickerControlProperty
        {type' = Prelude.pure newValue, ..}