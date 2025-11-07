module Stratosphere.QuickSight.Dashboard.DefaultDateTimePickerControlOptionsProperty (
        module Exports, DefaultDateTimePickerControlOptionsProperty(..),
        mkDefaultDateTimePickerControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DateTimePickerControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultDateTimePickerControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultdatetimepickercontroloptions.html>
    DefaultDateTimePickerControlOptionsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultdatetimepickercontroloptions.html#cfn-quicksight-dashboard-defaultdatetimepickercontroloptions-commitmode>
                                                 commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultdatetimepickercontroloptions.html#cfn-quicksight-dashboard-defaultdatetimepickercontroloptions-displayoptions>
                                                 displayOptions :: (Prelude.Maybe DateTimePickerControlDisplayOptionsProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultdatetimepickercontroloptions.html#cfn-quicksight-dashboard-defaultdatetimepickercontroloptions-type>
                                                 type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultDateTimePickerControlOptionsProperty ::
  DefaultDateTimePickerControlOptionsProperty
mkDefaultDateTimePickerControlOptionsProperty
  = DefaultDateTimePickerControlOptionsProperty
      {haddock_workaround_ = (), commitMode = Prelude.Nothing,
       displayOptions = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DefaultDateTimePickerControlOptionsProperty where
  toResourceProperties
    DefaultDateTimePickerControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DefaultDateTimePickerControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                            (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DefaultDateTimePickerControlOptionsProperty where
  toJSON DefaultDateTimePickerControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommitMode" Prelude.<$> commitMode,
               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "CommitMode" DefaultDateTimePickerControlOptionsProperty where
  type PropertyType "CommitMode" DefaultDateTimePickerControlOptionsProperty = Value Prelude.Text
  set newValue DefaultDateTimePickerControlOptionsProperty {..}
    = DefaultDateTimePickerControlOptionsProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" DefaultDateTimePickerControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultDateTimePickerControlOptionsProperty = DateTimePickerControlDisplayOptionsProperty
  set newValue DefaultDateTimePickerControlOptionsProperty {..}
    = DefaultDateTimePickerControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "Type" DefaultDateTimePickerControlOptionsProperty where
  type PropertyType "Type" DefaultDateTimePickerControlOptionsProperty = Value Prelude.Text
  set newValue DefaultDateTimePickerControlOptionsProperty {..}
    = DefaultDateTimePickerControlOptionsProperty
        {type' = Prelude.pure newValue, ..}