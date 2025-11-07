module Stratosphere.QuickSight.Analysis.TooltipOptionsProperty (
        module Exports, TooltipOptionsProperty(..),
        mkTooltipOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FieldBasedTooltipProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TooltipOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipoptions.html>
    TooltipOptionsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipoptions.html#cfn-quicksight-analysis-tooltipoptions-fieldbasedtooltip>
                            fieldBasedTooltip :: (Prelude.Maybe FieldBasedTooltipProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipoptions.html#cfn-quicksight-analysis-tooltipoptions-selectedtooltiptype>
                            selectedTooltipType :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tooltipoptions.html#cfn-quicksight-analysis-tooltipoptions-tooltipvisibility>
                            tooltipVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTooltipOptionsProperty :: TooltipOptionsProperty
mkTooltipOptionsProperty
  = TooltipOptionsProperty
      {haddock_workaround_ = (), fieldBasedTooltip = Prelude.Nothing,
       selectedTooltipType = Prelude.Nothing,
       tooltipVisibility = Prelude.Nothing}
instance ToResourceProperties TooltipOptionsProperty where
  toResourceProperties TooltipOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TooltipOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldBasedTooltip" Prelude.<$> fieldBasedTooltip,
                            (JSON..=) "SelectedTooltipType" Prelude.<$> selectedTooltipType,
                            (JSON..=) "TooltipVisibility" Prelude.<$> tooltipVisibility])}
instance JSON.ToJSON TooltipOptionsProperty where
  toJSON TooltipOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldBasedTooltip" Prelude.<$> fieldBasedTooltip,
               (JSON..=) "SelectedTooltipType" Prelude.<$> selectedTooltipType,
               (JSON..=) "TooltipVisibility" Prelude.<$> tooltipVisibility]))
instance Property "FieldBasedTooltip" TooltipOptionsProperty where
  type PropertyType "FieldBasedTooltip" TooltipOptionsProperty = FieldBasedTooltipProperty
  set newValue TooltipOptionsProperty {..}
    = TooltipOptionsProperty
        {fieldBasedTooltip = Prelude.pure newValue, ..}
instance Property "SelectedTooltipType" TooltipOptionsProperty where
  type PropertyType "SelectedTooltipType" TooltipOptionsProperty = Value Prelude.Text
  set newValue TooltipOptionsProperty {..}
    = TooltipOptionsProperty
        {selectedTooltipType = Prelude.pure newValue, ..}
instance Property "TooltipVisibility" TooltipOptionsProperty where
  type PropertyType "TooltipVisibility" TooltipOptionsProperty = Value Prelude.Text
  set newValue TooltipOptionsProperty {..}
    = TooltipOptionsProperty
        {tooltipVisibility = Prelude.pure newValue, ..}