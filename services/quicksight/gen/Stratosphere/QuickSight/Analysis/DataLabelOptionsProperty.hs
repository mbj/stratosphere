module Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty (
        module Exports, DataLabelOptionsProperty(..),
        mkDataLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html>
    DataLabelOptionsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-categorylabelvisibility>
                              categoryLabelVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-datalabeltypes>
                              dataLabelTypes :: (Prelude.Maybe [DataLabelTypeProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-labelcolor>
                              labelColor :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-labelcontent>
                              labelContent :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-labelfontconfiguration>
                              labelFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-measurelabelvisibility>
                              measureLabelVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-overlap>
                              overlap :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-position>
                              position :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-totalsvisibility>
                              totalsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datalabeloptions.html#cfn-quicksight-analysis-datalabeloptions-visibility>
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLabelOptionsProperty :: DataLabelOptionsProperty
mkDataLabelOptionsProperty
  = DataLabelOptionsProperty
      {haddock_workaround_ = (),
       categoryLabelVisibility = Prelude.Nothing,
       dataLabelTypes = Prelude.Nothing, labelColor = Prelude.Nothing,
       labelContent = Prelude.Nothing,
       labelFontConfiguration = Prelude.Nothing,
       measureLabelVisibility = Prelude.Nothing,
       overlap = Prelude.Nothing, position = Prelude.Nothing,
       totalsVisibility = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties DataLabelOptionsProperty where
  toResourceProperties DataLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DataLabelOptions",
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