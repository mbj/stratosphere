module Stratosphere.QuickSight.Analysis.LegendOptionsProperty (
        module Exports, LegendOptionsProperty(..), mkLegendOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LegendOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html>
    LegendOptionsProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html#cfn-quicksight-analysis-legendoptions-height>
                           height :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html#cfn-quicksight-analysis-legendoptions-position>
                           position :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html#cfn-quicksight-analysis-legendoptions-title>
                           title :: (Prelude.Maybe LabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html#cfn-quicksight-analysis-legendoptions-valuefontconfiguration>
                           valueFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html#cfn-quicksight-analysis-legendoptions-visibility>
                           visibility :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-legendoptions.html#cfn-quicksight-analysis-legendoptions-width>
                           width :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLegendOptionsProperty :: LegendOptionsProperty
mkLegendOptionsProperty
  = LegendOptionsProperty
      {haddock_workaround_ = (), height = Prelude.Nothing,
       position = Prelude.Nothing, title = Prelude.Nothing,
       valueFontConfiguration = Prelude.Nothing,
       visibility = Prelude.Nothing, width = Prelude.Nothing}
instance ToResourceProperties LegendOptionsProperty where
  toResourceProperties LegendOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LegendOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Title" Prelude.<$> title,
                            (JSON..=) "ValueFontConfiguration"
                              Prelude.<$> valueFontConfiguration,
                            (JSON..=) "Visibility" Prelude.<$> visibility,
                            (JSON..=) "Width" Prelude.<$> width])}
instance JSON.ToJSON LegendOptionsProperty where
  toJSON LegendOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Title" Prelude.<$> title,
               (JSON..=) "ValueFontConfiguration"
                 Prelude.<$> valueFontConfiguration,
               (JSON..=) "Visibility" Prelude.<$> visibility,
               (JSON..=) "Width" Prelude.<$> width]))
instance Property "Height" LegendOptionsProperty where
  type PropertyType "Height" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {height = Prelude.pure newValue, ..}
instance Property "Position" LegendOptionsProperty where
  type PropertyType "Position" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {position = Prelude.pure newValue, ..}
instance Property "Title" LegendOptionsProperty where
  type PropertyType "Title" LegendOptionsProperty = LabelOptionsProperty
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {title = Prelude.pure newValue, ..}
instance Property "ValueFontConfiguration" LegendOptionsProperty where
  type PropertyType "ValueFontConfiguration" LegendOptionsProperty = FontConfigurationProperty
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty
        {valueFontConfiguration = Prelude.pure newValue, ..}
instance Property "Visibility" LegendOptionsProperty where
  type PropertyType "Visibility" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {visibility = Prelude.pure newValue, ..}
instance Property "Width" LegendOptionsProperty where
  type PropertyType "Width" LegendOptionsProperty = Value Prelude.Text
  set newValue LegendOptionsProperty {..}
    = LegendOptionsProperty {width = Prelude.pure newValue, ..}