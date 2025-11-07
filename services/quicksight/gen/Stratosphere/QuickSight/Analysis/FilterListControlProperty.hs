module Stratosphere.QuickSight.Analysis.FilterListControlProperty (
        module Exports, FilterListControlProperty(..),
        mkFilterListControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CascadingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterSelectableValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterListControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html>
    FilterListControlProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-cascadingcontrolconfiguration>
                               cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-displayoptions>
                               displayOptions :: (Prelude.Maybe ListControlDisplayOptionsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-filtercontrolid>
                               filterControlId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-selectablevalues>
                               selectableValues :: (Prelude.Maybe FilterSelectableValuesProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-sourcefilterid>
                               sourceFilterId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-title>
                               title :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-filterlistcontrol.html#cfn-quicksight-analysis-filterlistcontrol-type>
                               type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterListControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> FilterListControlProperty
mkFilterListControlProperty filterControlId sourceFilterId title
  = FilterListControlProperty
      {haddock_workaround_ = (), filterControlId = filterControlId,
       sourceFilterId = sourceFilterId, title = title,
       cascadingControlConfiguration = Prelude.Nothing,
       displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties FilterListControlProperty where
  toResourceProperties FilterListControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FilterListControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON FilterListControlProperty where
  toJSON FilterListControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId, "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CascadingControlConfiguration" FilterListControlProperty where
  type PropertyType "CascadingControlConfiguration" FilterListControlProperty = CascadingControlConfigurationProperty
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "DisplayOptions" FilterListControlProperty where
  type PropertyType "DisplayOptions" FilterListControlProperty = ListControlDisplayOptionsProperty
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterListControlProperty where
  type PropertyType "FilterControlId" FilterListControlProperty = Value Prelude.Text
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty {filterControlId = newValue, ..}
instance Property "SelectableValues" FilterListControlProperty where
  type PropertyType "SelectableValues" FilterListControlProperty = FilterSelectableValuesProperty
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "SourceFilterId" FilterListControlProperty where
  type PropertyType "SourceFilterId" FilterListControlProperty = Value Prelude.Text
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty {sourceFilterId = newValue, ..}
instance Property "Title" FilterListControlProperty where
  type PropertyType "Title" FilterListControlProperty = Value Prelude.Text
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty {title = newValue, ..}
instance Property "Type" FilterListControlProperty where
  type PropertyType "Type" FilterListControlProperty = Value Prelude.Text
  set newValue FilterListControlProperty {..}
    = FilterListControlProperty {type' = Prelude.pure newValue, ..}