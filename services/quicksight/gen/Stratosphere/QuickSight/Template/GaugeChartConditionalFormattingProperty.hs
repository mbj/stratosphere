module Stratosphere.QuickSight.Template.GaugeChartConditionalFormattingProperty (
        module Exports, GaugeChartConditionalFormattingProperty(..),
        mkGaugeChartConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GaugeChartConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartconditionalformatting.html>
    GaugeChartConditionalFormattingProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartconditionalformatting.html#cfn-quicksight-template-gaugechartconditionalformatting-conditionalformattingoptions>
                                             conditionalFormattingOptions :: (Prelude.Maybe [GaugeChartConditionalFormattingOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartConditionalFormattingProperty ::
  GaugeChartConditionalFormattingProperty
mkGaugeChartConditionalFormattingProperty
  = GaugeChartConditionalFormattingProperty
      {haddock_workaround_ = (),
       conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties GaugeChartConditionalFormattingProperty where
  toResourceProperties GaugeChartConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GaugeChartConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON GaugeChartConditionalFormattingProperty where
  toJSON GaugeChartConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" GaugeChartConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" GaugeChartConditionalFormattingProperty = [GaugeChartConditionalFormattingOptionProperty]
  set newValue GaugeChartConditionalFormattingProperty {..}
    = GaugeChartConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}