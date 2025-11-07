module Stratosphere.QuickSight.Dashboard.FilterCrossSheetControlProperty (
        module Exports, FilterCrossSheetControlProperty(..),
        mkFilterCrossSheetControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.CascadingControlConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterCrossSheetControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercrosssheetcontrol.html>
    FilterCrossSheetControlProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercrosssheetcontrol.html#cfn-quicksight-dashboard-filtercrosssheetcontrol-cascadingcontrolconfiguration>
                                     cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercrosssheetcontrol.html#cfn-quicksight-dashboard-filtercrosssheetcontrol-filtercontrolid>
                                     filterControlId :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filtercrosssheetcontrol.html#cfn-quicksight-dashboard-filtercrosssheetcontrol-sourcefilterid>
                                     sourceFilterId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterCrossSheetControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FilterCrossSheetControlProperty
mkFilterCrossSheetControlProperty filterControlId sourceFilterId
  = FilterCrossSheetControlProperty
      {haddock_workaround_ = (), filterControlId = filterControlId,
       sourceFilterId = sourceFilterId,
       cascadingControlConfiguration = Prelude.Nothing}
instance ToResourceProperties FilterCrossSheetControlProperty where
  toResourceProperties FilterCrossSheetControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilterCrossSheetControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilterControlId" JSON..= filterControlId,
                            "SourceFilterId" JSON..= sourceFilterId]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration]))}
instance JSON.ToJSON FilterCrossSheetControlProperty where
  toJSON FilterCrossSheetControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilterControlId" JSON..= filterControlId,
               "SourceFilterId" JSON..= sourceFilterId]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration])))
instance Property "CascadingControlConfiguration" FilterCrossSheetControlProperty where
  type PropertyType "CascadingControlConfiguration" FilterCrossSheetControlProperty = CascadingControlConfigurationProperty
  set newValue FilterCrossSheetControlProperty {..}
    = FilterCrossSheetControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "FilterControlId" FilterCrossSheetControlProperty where
  type PropertyType "FilterControlId" FilterCrossSheetControlProperty = Value Prelude.Text
  set newValue FilterCrossSheetControlProperty {..}
    = FilterCrossSheetControlProperty {filterControlId = newValue, ..}
instance Property "SourceFilterId" FilterCrossSheetControlProperty where
  type PropertyType "SourceFilterId" FilterCrossSheetControlProperty = Value Prelude.Text
  set newValue FilterCrossSheetControlProperty {..}
    = FilterCrossSheetControlProperty {sourceFilterId = newValue, ..}