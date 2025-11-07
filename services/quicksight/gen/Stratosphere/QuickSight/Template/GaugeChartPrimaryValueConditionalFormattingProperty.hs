module Stratosphere.QuickSight.Template.GaugeChartPrimaryValueConditionalFormattingProperty (
        module Exports,
        GaugeChartPrimaryValueConditionalFormattingProperty(..),
        mkGaugeChartPrimaryValueConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingIconProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartPrimaryValueConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartprimaryvalueconditionalformatting.html>
    GaugeChartPrimaryValueConditionalFormattingProperty {haddock_workaround_ :: (),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartprimaryvalueconditionalformatting.html#cfn-quicksight-template-gaugechartprimaryvalueconditionalformatting-icon>
                                                         icon :: (Prelude.Maybe ConditionalFormattingIconProperty),
                                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartprimaryvalueconditionalformatting.html#cfn-quicksight-template-gaugechartprimaryvalueconditionalformatting-textcolor>
                                                         textColor :: (Prelude.Maybe ConditionalFormattingColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartPrimaryValueConditionalFormattingProperty ::
  GaugeChartPrimaryValueConditionalFormattingProperty
mkGaugeChartPrimaryValueConditionalFormattingProperty
  = GaugeChartPrimaryValueConditionalFormattingProperty
      {haddock_workaround_ = (), icon = Prelude.Nothing,
       textColor = Prelude.Nothing}
instance ToResourceProperties GaugeChartPrimaryValueConditionalFormattingProperty where
  toResourceProperties
    GaugeChartPrimaryValueConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartPrimaryValueConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Icon" Prelude.<$> icon,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON GaugeChartPrimaryValueConditionalFormattingProperty where
  toJSON GaugeChartPrimaryValueConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Icon" Prelude.<$> icon,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Icon" GaugeChartPrimaryValueConditionalFormattingProperty where
  type PropertyType "Icon" GaugeChartPrimaryValueConditionalFormattingProperty = ConditionalFormattingIconProperty
  set
    newValue
    GaugeChartPrimaryValueConditionalFormattingProperty {..}
    = GaugeChartPrimaryValueConditionalFormattingProperty
        {icon = Prelude.pure newValue, ..}
instance Property "TextColor" GaugeChartPrimaryValueConditionalFormattingProperty where
  type PropertyType "TextColor" GaugeChartPrimaryValueConditionalFormattingProperty = ConditionalFormattingColorProperty
  set
    newValue
    GaugeChartPrimaryValueConditionalFormattingProperty {..}
    = GaugeChartPrimaryValueConditionalFormattingProperty
        {textColor = Prelude.pure newValue, ..}