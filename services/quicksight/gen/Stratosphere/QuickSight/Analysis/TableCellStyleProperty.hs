module Stratosphere.QuickSight.Analysis.TableCellStyleProperty (
        module Exports, TableCellStyleProperty(..),
        mkTableCellStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FontConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GlobalTableBorderOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableCellStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html>
    TableCellStyleProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-backgroundcolor>
                            backgroundColor :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-border>
                            border :: (Prelude.Maybe GlobalTableBorderOptionsProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-fontconfiguration>
                            fontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-height>
                            height :: (Prelude.Maybe (Value Prelude.Double)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-horizontaltextalignment>
                            horizontalTextAlignment :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-textwrap>
                            textWrap :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-verticaltextalignment>
                            verticalTextAlignment :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablecellstyle.html#cfn-quicksight-analysis-tablecellstyle-visibility>
                            visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableCellStyleProperty :: TableCellStyleProperty
mkTableCellStyleProperty
  = TableCellStyleProperty
      {haddock_workaround_ = (), backgroundColor = Prelude.Nothing,
       border = Prelude.Nothing, fontConfiguration = Prelude.Nothing,
       height = Prelude.Nothing,
       horizontalTextAlignment = Prelude.Nothing,
       textWrap = Prelude.Nothing,
       verticalTextAlignment = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties TableCellStyleProperty where
  toResourceProperties TableCellStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableCellStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
                            (JSON..=) "Border" Prelude.<$> border,
                            (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
                            (JSON..=) "Height" Prelude.<$> height,
                            (JSON..=) "HorizontalTextAlignment"
                              Prelude.<$> horizontalTextAlignment,
                            (JSON..=) "TextWrap" Prelude.<$> textWrap,
                            (JSON..=) "VerticalTextAlignment"
                              Prelude.<$> verticalTextAlignment,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON TableCellStyleProperty where
  toJSON TableCellStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BackgroundColor" Prelude.<$> backgroundColor,
               (JSON..=) "Border" Prelude.<$> border,
               (JSON..=) "FontConfiguration" Prelude.<$> fontConfiguration,
               (JSON..=) "Height" Prelude.<$> height,
               (JSON..=) "HorizontalTextAlignment"
                 Prelude.<$> horizontalTextAlignment,
               (JSON..=) "TextWrap" Prelude.<$> textWrap,
               (JSON..=) "VerticalTextAlignment"
                 Prelude.<$> verticalTextAlignment,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "BackgroundColor" TableCellStyleProperty where
  type PropertyType "BackgroundColor" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {backgroundColor = Prelude.pure newValue, ..}
instance Property "Border" TableCellStyleProperty where
  type PropertyType "Border" TableCellStyleProperty = GlobalTableBorderOptionsProperty
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {border = Prelude.pure newValue, ..}
instance Property "FontConfiguration" TableCellStyleProperty where
  type PropertyType "FontConfiguration" TableCellStyleProperty = FontConfigurationProperty
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {fontConfiguration = Prelude.pure newValue, ..}
instance Property "Height" TableCellStyleProperty where
  type PropertyType "Height" TableCellStyleProperty = Value Prelude.Double
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {height = Prelude.pure newValue, ..}
instance Property "HorizontalTextAlignment" TableCellStyleProperty where
  type PropertyType "HorizontalTextAlignment" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {horizontalTextAlignment = Prelude.pure newValue, ..}
instance Property "TextWrap" TableCellStyleProperty where
  type PropertyType "TextWrap" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {textWrap = Prelude.pure newValue, ..}
instance Property "VerticalTextAlignment" TableCellStyleProperty where
  type PropertyType "VerticalTextAlignment" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty
        {verticalTextAlignment = Prelude.pure newValue, ..}
instance Property "Visibility" TableCellStyleProperty where
  type PropertyType "Visibility" TableCellStyleProperty = Value Prelude.Text
  set newValue TableCellStyleProperty {..}
    = TableCellStyleProperty {visibility = Prelude.pure newValue, ..}