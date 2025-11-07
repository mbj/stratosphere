module Stratosphere.QuickSight.Template.DataFieldSeriesItemProperty (
        module Exports, DataFieldSeriesItemProperty(..),
        mkDataFieldSeriesItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartSeriesSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataFieldSeriesItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datafieldseriesitem.html>
    DataFieldSeriesItemProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datafieldseriesitem.html#cfn-quicksight-template-datafieldseriesitem-axisbinding>
                                 axisBinding :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datafieldseriesitem.html#cfn-quicksight-template-datafieldseriesitem-fieldid>
                                 fieldId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datafieldseriesitem.html#cfn-quicksight-template-datafieldseriesitem-fieldvalue>
                                 fieldValue :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datafieldseriesitem.html#cfn-quicksight-template-datafieldseriesitem-settings>
                                 settings :: (Prelude.Maybe LineChartSeriesSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataFieldSeriesItemProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DataFieldSeriesItemProperty
mkDataFieldSeriesItemProperty axisBinding fieldId
  = DataFieldSeriesItemProperty
      {haddock_workaround_ = (), axisBinding = axisBinding,
       fieldId = fieldId, fieldValue = Prelude.Nothing,
       settings = Prelude.Nothing}
instance ToResourceProperties DataFieldSeriesItemProperty where
  toResourceProperties DataFieldSeriesItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataFieldSeriesItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AxisBinding" JSON..= axisBinding, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "FieldValue" Prelude.<$> fieldValue,
                               (JSON..=) "Settings" Prelude.<$> settings]))}
instance JSON.ToJSON DataFieldSeriesItemProperty where
  toJSON DataFieldSeriesItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AxisBinding" JSON..= axisBinding, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "FieldValue" Prelude.<$> fieldValue,
                  (JSON..=) "Settings" Prelude.<$> settings])))
instance Property "AxisBinding" DataFieldSeriesItemProperty where
  type PropertyType "AxisBinding" DataFieldSeriesItemProperty = Value Prelude.Text
  set newValue DataFieldSeriesItemProperty {..}
    = DataFieldSeriesItemProperty {axisBinding = newValue, ..}
instance Property "FieldId" DataFieldSeriesItemProperty where
  type PropertyType "FieldId" DataFieldSeriesItemProperty = Value Prelude.Text
  set newValue DataFieldSeriesItemProperty {..}
    = DataFieldSeriesItemProperty {fieldId = newValue, ..}
instance Property "FieldValue" DataFieldSeriesItemProperty where
  type PropertyType "FieldValue" DataFieldSeriesItemProperty = Value Prelude.Text
  set newValue DataFieldSeriesItemProperty {..}
    = DataFieldSeriesItemProperty
        {fieldValue = Prelude.pure newValue, ..}
instance Property "Settings" DataFieldSeriesItemProperty where
  type PropertyType "Settings" DataFieldSeriesItemProperty = LineChartSeriesSettingsProperty
  set newValue DataFieldSeriesItemProperty {..}
    = DataFieldSeriesItemProperty
        {settings = Prelude.pure newValue, ..}