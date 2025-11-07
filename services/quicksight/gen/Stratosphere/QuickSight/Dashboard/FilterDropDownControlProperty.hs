module Stratosphere.QuickSight.Dashboard.FilterDropDownControlProperty (
        module Exports, FilterDropDownControlProperty(..),
        mkFilterDropDownControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CascadingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DropDownControlDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilterSelectableValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterDropDownControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html>
    FilterDropDownControlProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-cascadingcontrolconfiguration>
                                   cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-commitmode>
                                   commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-displayoptions>
                                   displayOptions :: (Prelude.Maybe DropDownControlDisplayOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-filtercontrolid>
                                   filterControlId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-selectablevalues>
                                   selectableValues :: (Prelude.Maybe FilterSelectableValuesProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-sourcefilterid>
                                   sourceFilterId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-title>
                                   title :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filterdropdowncontrol.html#cfn-quicksight-dashboard-filterdropdowncontrol-type>
                                   type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterDropDownControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterDropDownControlProperty
mkFilterDropDownControlProperty
  filterControlId
  sourceFilterId
  title
  = FilterDropDownControlProperty
      {haddock_workaround_ = (), filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       cascadingControlConfiguration = Prelude.Nothing,
       commitMode = Prelude.Nothing, displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FilterDropDownControlProperty where
  toResourceProperties FilterDropDownControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilterDropDownControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration,
                               (JSON..=) "CommitMode" Prelude.<$> commitMode,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON FilterDropDownControlProperty where
  toJSON FilterDropDownControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration,
                  (JSON..=) "CommitMode" Prelude.<$> commitMode,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CascadingControlConfiguration" FilterDropDownControlProperty where
  type PropertyType "CascadingControlConfiguration" FilterDropDownControlProperty = CascadingControlConfigurationProperty
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "CommitMode" FilterDropDownControlProperty where
  type PropertyType "CommitMode" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterDropDownControlProperty where
  type PropertyType "DisplayOptions" FilterDropDownControlProperty = DropDownControlDisplayOptionsProperty
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterDropDownControlProperty where
  type PropertyType "FilterControlId" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {filterControlId = newValue, ..}
instance Property "SelectableValues" FilterDropDownControlProperty where
  type PropertyType "SelectableValues" FilterDropDownControlProperty = FilterSelectableValuesProperty
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "SourceFilterId" FilterDropDownControlProperty where
  type PropertyType "SourceFilterId" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {sourceFilterId = newValue, ..}
instance Property "Title" FilterDropDownControlProperty where
  type PropertyType "Title" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {title = newValue, ..}
instance Property "Type" FilterDropDownControlProperty where
  type PropertyType "Type" FilterDropDownControlProperty = Value Prelude.Text
  set newValue FilterDropDownControlProperty {..}
    = FilterDropDownControlProperty {type' = Prelude.pure newValue, ..}