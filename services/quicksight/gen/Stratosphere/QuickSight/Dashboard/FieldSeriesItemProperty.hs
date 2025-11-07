module Stratosphere.QuickSight.Dashboard.FieldSeriesItemProperty (
        module Exports, FieldSeriesItemProperty(..),
        mkFieldSeriesItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LineChartSeriesSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldSeriesItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldseriesitem.html>
    FieldSeriesItemProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldseriesitem.html#cfn-quicksight-dashboard-fieldseriesitem-axisbinding>
                             axisBinding :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldseriesitem.html#cfn-quicksight-dashboard-fieldseriesitem-fieldid>
                             fieldId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-fieldseriesitem.html#cfn-quicksight-dashboard-fieldseriesitem-settings>
                             settings :: (Prelude.Maybe LineChartSeriesSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldSeriesItemProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FieldSeriesItemProperty
mkFieldSeriesItemProperty axisBinding fieldId
  = FieldSeriesItemProperty
      {haddock_workaround_ = (), axisBinding = axisBinding,
       fieldId = fieldId, settings = Prelude.Nothing}
instance ToResourceProperties FieldSeriesItemProperty where
  toResourceProperties FieldSeriesItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FieldSeriesItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AxisBinding" JSON..= axisBinding, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes [(JSON..=) "Settings" Prelude.<$> settings]))}
instance JSON.ToJSON FieldSeriesItemProperty where
  toJSON FieldSeriesItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AxisBinding" JSON..= axisBinding, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes [(JSON..=) "Settings" Prelude.<$> settings])))
instance Property "AxisBinding" FieldSeriesItemProperty where
  type PropertyType "AxisBinding" FieldSeriesItemProperty = Value Prelude.Text
  set newValue FieldSeriesItemProperty {..}
    = FieldSeriesItemProperty {axisBinding = newValue, ..}
instance Property "FieldId" FieldSeriesItemProperty where
  type PropertyType "FieldId" FieldSeriesItemProperty = Value Prelude.Text
  set newValue FieldSeriesItemProperty {..}
    = FieldSeriesItemProperty {fieldId = newValue, ..}
instance Property "Settings" FieldSeriesItemProperty where
  type PropertyType "Settings" FieldSeriesItemProperty = LineChartSeriesSettingsProperty
  set newValue FieldSeriesItemProperty {..}
    = FieldSeriesItemProperty {settings = Prelude.pure newValue, ..}