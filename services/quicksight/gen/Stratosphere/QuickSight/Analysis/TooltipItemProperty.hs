module Stratosphere.QuickSight.Analysis.TooltipItemProperty (
        module Exports, TooltipItemProperty(..), mkTooltipItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnTooltipItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldTooltipItemProperty as Exports
import Stratosphere.ResourceProperties
data TooltipItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipitem.html>
    TooltipItemProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipitem.html#cfn-quicksight-analysis-tooltipitem-columntooltipitem>
                         columnTooltipItem :: (Prelude.Maybe ColumnTooltipItemProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipitem.html#cfn-quicksight-analysis-tooltipitem-fieldtooltipitem>
                         fieldTooltipItem :: (Prelude.Maybe FieldTooltipItemProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTooltipItemProperty :: TooltipItemProperty
mkTooltipItemProperty
  = TooltipItemProperty
      {haddock_workaround_ = (), columnTooltipItem = Prelude.Nothing,
       fieldTooltipItem = Prelude.Nothing}
instance ToResourceProperties TooltipItemProperty where
  toResourceProperties TooltipItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TooltipItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnTooltipItem" Prelude.<$> columnTooltipItem,
                            (JSON..=) "FieldTooltipItem" Prelude.<$> fieldTooltipItem])}
instance JSON.ToJSON TooltipItemProperty where
  toJSON TooltipItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnTooltipItem" Prelude.<$> columnTooltipItem,
               (JSON..=) "FieldTooltipItem" Prelude.<$> fieldTooltipItem]))
instance Property "ColumnTooltipItem" TooltipItemProperty where
  type PropertyType "ColumnTooltipItem" TooltipItemProperty = ColumnTooltipItemProperty
  set newValue TooltipItemProperty {..}
    = TooltipItemProperty
        {columnTooltipItem = Prelude.pure newValue, ..}
instance Property "FieldTooltipItem" TooltipItemProperty where
  type PropertyType "FieldTooltipItem" TooltipItemProperty = FieldTooltipItemProperty
  set newValue TooltipItemProperty {..}
    = TooltipItemProperty
        {fieldTooltipItem = Prelude.pure newValue, ..}