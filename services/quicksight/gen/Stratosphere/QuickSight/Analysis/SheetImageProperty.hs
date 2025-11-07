module Stratosphere.QuickSight.Analysis.SheetImageProperty (
        module Exports, SheetImageProperty(..), mkSheetImageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ImageCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ImageInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetImageScalingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetImageSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetImageTooltipConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetImageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html>
    SheetImageProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-actions>
                        actions :: (Prelude.Maybe [ImageCustomActionProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-imagecontentalttext>
                        imageContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-interactions>
                        interactions :: (Prelude.Maybe ImageInteractionOptionsProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-scaling>
                        scaling :: (Prelude.Maybe SheetImageScalingConfigurationProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-sheetimageid>
                        sheetImageId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-source>
                        source :: SheetImageSourceProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimage.html#cfn-quicksight-analysis-sheetimage-tooltip>
                        tooltip :: (Prelude.Maybe SheetImageTooltipConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetImageProperty ::
  Value Prelude.Text
  -> SheetImageSourceProperty -> SheetImageProperty
mkSheetImageProperty sheetImageId source
  = SheetImageProperty
      {haddock_workaround_ = (), sheetImageId = sheetImageId,
       source = source, actions = Prelude.Nothing,
       imageContentAltText = Prelude.Nothing,
       interactions = Prelude.Nothing, scaling = Prelude.Nothing,
       tooltip = Prelude.Nothing}
instance ToResourceProperties SheetImageProperty where
  toResourceProperties SheetImageProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetImage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SheetImageId" JSON..= sheetImageId, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ImageContentAltText" Prelude.<$> imageContentAltText,
                               (JSON..=) "Interactions" Prelude.<$> interactions,
                               (JSON..=) "Scaling" Prelude.<$> scaling,
                               (JSON..=) "Tooltip" Prelude.<$> tooltip]))}
instance JSON.ToJSON SheetImageProperty where
  toJSON SheetImageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SheetImageId" JSON..= sheetImageId, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ImageContentAltText" Prelude.<$> imageContentAltText,
                  (JSON..=) "Interactions" Prelude.<$> interactions,
                  (JSON..=) "Scaling" Prelude.<$> scaling,
                  (JSON..=) "Tooltip" Prelude.<$> tooltip])))
instance Property "Actions" SheetImageProperty where
  type PropertyType "Actions" SheetImageProperty = [ImageCustomActionProperty]
  set newValue SheetImageProperty {..}
    = SheetImageProperty {actions = Prelude.pure newValue, ..}
instance Property "ImageContentAltText" SheetImageProperty where
  type PropertyType "ImageContentAltText" SheetImageProperty = Value Prelude.Text
  set newValue SheetImageProperty {..}
    = SheetImageProperty
        {imageContentAltText = Prelude.pure newValue, ..}
instance Property "Interactions" SheetImageProperty where
  type PropertyType "Interactions" SheetImageProperty = ImageInteractionOptionsProperty
  set newValue SheetImageProperty {..}
    = SheetImageProperty {interactions = Prelude.pure newValue, ..}
instance Property "Scaling" SheetImageProperty where
  type PropertyType "Scaling" SheetImageProperty = SheetImageScalingConfigurationProperty
  set newValue SheetImageProperty {..}
    = SheetImageProperty {scaling = Prelude.pure newValue, ..}
instance Property "SheetImageId" SheetImageProperty where
  type PropertyType "SheetImageId" SheetImageProperty = Value Prelude.Text
  set newValue SheetImageProperty {..}
    = SheetImageProperty {sheetImageId = newValue, ..}
instance Property "Source" SheetImageProperty where
  type PropertyType "Source" SheetImageProperty = SheetImageSourceProperty
  set newValue SheetImageProperty {..}
    = SheetImageProperty {source = newValue, ..}
instance Property "Tooltip" SheetImageProperty where
  type PropertyType "Tooltip" SheetImageProperty = SheetImageTooltipConfigurationProperty
  set newValue SheetImageProperty {..}
    = SheetImageProperty {tooltip = Prelude.pure newValue, ..}