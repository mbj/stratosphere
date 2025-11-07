module Stratosphere.QuickSight.Template.SheetImageTooltipConfigurationProperty (
        module Exports, SheetImageTooltipConfigurationProperty(..),
        mkSheetImageTooltipConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetImageTooltipTextProperty as Exports
import Stratosphere.ResourceProperties
data SheetImageTooltipConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagetooltipconfiguration.html>
    SheetImageTooltipConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagetooltipconfiguration.html#cfn-quicksight-template-sheetimagetooltipconfiguration-tooltiptext>
                                            tooltipText :: (Prelude.Maybe SheetImageTooltipTextProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetimagetooltipconfiguration.html#cfn-quicksight-template-sheetimagetooltipconfiguration-visibility>
                                            visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetImageTooltipConfigurationProperty ::
  SheetImageTooltipConfigurationProperty
mkSheetImageTooltipConfigurationProperty
  = SheetImageTooltipConfigurationProperty
      {haddock_workaround_ = (), tooltipText = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties SheetImageTooltipConfigurationProperty where
  toResourceProperties SheetImageTooltipConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SheetImageTooltipConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TooltipText" Prelude.<$> tooltipText,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON SheetImageTooltipConfigurationProperty where
  toJSON SheetImageTooltipConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TooltipText" Prelude.<$> tooltipText,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "TooltipText" SheetImageTooltipConfigurationProperty where
  type PropertyType "TooltipText" SheetImageTooltipConfigurationProperty = SheetImageTooltipTextProperty
  set newValue SheetImageTooltipConfigurationProperty {..}
    = SheetImageTooltipConfigurationProperty
        {tooltipText = Prelude.pure newValue, ..}
instance Property "Visibility" SheetImageTooltipConfigurationProperty where
  type PropertyType "Visibility" SheetImageTooltipConfigurationProperty = JSON.Object
  set newValue SheetImageTooltipConfigurationProperty {..}
    = SheetImageTooltipConfigurationProperty
        {visibility = Prelude.pure newValue, ..}