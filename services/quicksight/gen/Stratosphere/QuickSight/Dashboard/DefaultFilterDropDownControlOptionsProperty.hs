module Stratosphere.QuickSight.Dashboard.DefaultFilterDropDownControlOptionsProperty (
        module Exports, DefaultFilterDropDownControlOptionsProperty(..),
        mkDefaultFilterDropDownControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DropDownControlDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilterSelectableValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultFilterDropDownControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfilterdropdowncontroloptions.html>
    DefaultFilterDropDownControlOptionsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfilterdropdowncontroloptions.html#cfn-quicksight-dashboard-defaultfilterdropdowncontroloptions-commitmode>
                                                 commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfilterdropdowncontroloptions.html#cfn-quicksight-dashboard-defaultfilterdropdowncontroloptions-displayoptions>
                                                 displayOptions :: (Prelude.Maybe DropDownControlDisplayOptionsProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfilterdropdowncontroloptions.html#cfn-quicksight-dashboard-defaultfilterdropdowncontroloptions-selectablevalues>
                                                 selectableValues :: (Prelude.Maybe FilterSelectableValuesProperty),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaultfilterdropdowncontroloptions.html#cfn-quicksight-dashboard-defaultfilterdropdowncontroloptions-type>
                                                 type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultFilterDropDownControlOptionsProperty ::
  DefaultFilterDropDownControlOptionsProperty
mkDefaultFilterDropDownControlOptionsProperty
  = DefaultFilterDropDownControlOptionsProperty
      {haddock_workaround_ = (), commitMode = Prelude.Nothing,
       displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DefaultFilterDropDownControlOptionsProperty where
  toResourceProperties
    DefaultFilterDropDownControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DefaultFilterDropDownControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommitMode" Prelude.<$> commitMode,
                            (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                            (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DefaultFilterDropDownControlOptionsProperty where
  toJSON DefaultFilterDropDownControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommitMode" Prelude.<$> commitMode,
               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "CommitMode" DefaultFilterDropDownControlOptionsProperty where
  type PropertyType "CommitMode" DefaultFilterDropDownControlOptionsProperty = Value Prelude.Text
  set newValue DefaultFilterDropDownControlOptionsProperty {..}
    = DefaultFilterDropDownControlOptionsProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" DefaultFilterDropDownControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultFilterDropDownControlOptionsProperty = DropDownControlDisplayOptionsProperty
  set newValue DefaultFilterDropDownControlOptionsProperty {..}
    = DefaultFilterDropDownControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "SelectableValues" DefaultFilterDropDownControlOptionsProperty where
  type PropertyType "SelectableValues" DefaultFilterDropDownControlOptionsProperty = FilterSelectableValuesProperty
  set newValue DefaultFilterDropDownControlOptionsProperty {..}
    = DefaultFilterDropDownControlOptionsProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "Type" DefaultFilterDropDownControlOptionsProperty where
  type PropertyType "Type" DefaultFilterDropDownControlOptionsProperty = Value Prelude.Text
  set newValue DefaultFilterDropDownControlOptionsProperty {..}
    = DefaultFilterDropDownControlOptionsProperty
        {type' = Prelude.pure newValue, ..}