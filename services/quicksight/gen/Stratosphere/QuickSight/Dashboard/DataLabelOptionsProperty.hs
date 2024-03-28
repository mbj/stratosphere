module Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty (
        module Exports, DataLabelOptionsProperty(..),
        mkDataLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLabelOptionsProperty
  = DataLabelOptionsProperty {categoryLabelVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                              dataLabelTypes :: (Prelude.Maybe [DataLabelTypeProperty]),
                              labelColor :: (Prelude.Maybe (Value Prelude.Text)),
                              labelContent :: (Prelude.Maybe (Value Prelude.Text)),
                              labelFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                              measureLabelVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                              overlap :: (Prelude.Maybe (Value Prelude.Text)),
                              position :: (Prelude.Maybe (Value Prelude.Text)),
                              totalsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLabelOptionsProperty :: DataLabelOptionsProperty
mkDataLabelOptionsProperty
  = DataLabelOptionsProperty
      {categoryLabelVisibility = Prelude.Nothing,
       dataLabelTypes = Prelude.Nothing, labelColor = Prelude.Nothing,
       labelContent = Prelude.Nothing,
       labelFontConfiguration = Prelude.Nothing,
       measureLabelVisibility = Prelude.Nothing,
       overlap = Prelude.Nothing, position = Prelude.Nothing,
       totalsVisibility = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties DataLabelOptionsProperty where
  toResourceProperties DataLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelVisibility"
                              Prelude.<$> categoryLabelVisibility,
                            (JSON..=) "DataLabelTypes" Prelude.<$> dataLabelTypes,
                            (JSON..=) "LabelColor" Prelude.<$> labelColor,
                            (JSON..=) "LabelContent" Prelude.<$> labelContent,
                            (JSON..=) "LabelFontConfiguration"
                              Prelude.<$> labelFontConfiguration,
                            (JSON..=) "MeasureLabelVisibility"
                              Prelude.<$> measureLabelVisibility,
                            (JSON..=) "Overlap" Prelude.<$> overlap,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON DataLabelOptionsProperty where
  toJSON DataLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelVisibility"
                 Prelude.<$> categoryLabelVisibility,
               (JSON..=) "DataLabelTypes" Prelude.<$> dataLabelTypes,
               (JSON..=) "LabelColor" Prelude.<$> labelColor,
               (JSON..=) "LabelContent" Prelude.<$> labelContent,
               (JSON..=) "LabelFontConfiguration"
                 Prelude.<$> labelFontConfiguration,
               (JSON..=) "MeasureLabelVisibility"
                 Prelude.<$> measureLabelVisibility,
               (JSON..=) "Overlap" Prelude.<$> overlap,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "TotalsVisibility" Prelude.<$> totalsVisibility,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "CategoryLabelVisibility" DataLabelOptionsProperty where
  type PropertyType "CategoryLabelVisibility" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty
        {categoryLabelVisibility = Prelude.pure newValue, ..}
instance Property "DataLabelTypes" DataLabelOptionsProperty where
  type PropertyType "DataLabelTypes" DataLabelOptionsProperty = [DataLabelTypeProperty]
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty
        {dataLabelTypes = Prelude.pure newValue, ..}
instance Property "LabelColor" DataLabelOptionsProperty where
  type PropertyType "LabelColor" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty {labelColor = Prelude.pure newValue, ..}
instance Property "LabelContent" DataLabelOptionsProperty where
  type PropertyType "LabelContent" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty
        {labelContent = Prelude.pure newValue, ..}
instance Property "LabelFontConfiguration" DataLabelOptionsProperty where
  type PropertyType "LabelFontConfiguration" DataLabelOptionsProperty = FontConfigurationProperty
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty
        {labelFontConfiguration = Prelude.pure newValue, ..}
instance Property "MeasureLabelVisibility" DataLabelOptionsProperty where
  type PropertyType "MeasureLabelVisibility" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty
        {measureLabelVisibility = Prelude.pure newValue, ..}
instance Property "Overlap" DataLabelOptionsProperty where
  type PropertyType "Overlap" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty {overlap = Prelude.pure newValue, ..}
instance Property "Position" DataLabelOptionsProperty where
  type PropertyType "Position" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty {position = Prelude.pure newValue, ..}
instance Property "TotalsVisibility" DataLabelOptionsProperty where
  type PropertyType "TotalsVisibility" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty
        {totalsVisibility = Prelude.pure newValue, ..}
instance Property "Visibility" DataLabelOptionsProperty where
  type PropertyType "Visibility" DataLabelOptionsProperty = Value Prelude.Text
  set newValue DataLabelOptionsProperty {..}
    = DataLabelOptionsProperty {visibility = Prelude.pure newValue, ..}