module Stratosphere.QuickSight.Dashboard.FreeFormLayoutElementProperty (
        module Exports, FreeFormLayoutElementProperty(..),
        mkFreeFormLayoutElementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FreeFormLayoutElementBackgroundStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FreeFormLayoutElementBorderStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LoadingAnimationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetElementRenderingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeFormLayoutElementProperty
  = FreeFormLayoutElementProperty {backgroundStyle :: (Prelude.Maybe FreeFormLayoutElementBackgroundStyleProperty),
                                   borderStyle :: (Prelude.Maybe FreeFormLayoutElementBorderStyleProperty),
                                   elementId :: (Value Prelude.Text),
                                   elementType :: (Value Prelude.Text),
                                   height :: (Value Prelude.Text),
                                   loadingAnimation :: (Prelude.Maybe LoadingAnimationProperty),
                                   renderingRules :: (Prelude.Maybe [SheetElementRenderingRuleProperty]),
                                   selectedBorderStyle :: (Prelude.Maybe FreeFormLayoutElementBorderStyleProperty),
                                   visibility :: (Prelude.Maybe (Value Prelude.Text)),
                                   width :: (Value Prelude.Text),
                                   xAxisLocation :: (Value Prelude.Text),
                                   yAxisLocation :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeFormLayoutElementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Text -> FreeFormLayoutElementProperty
mkFreeFormLayoutElementProperty
  elementId
  elementType
  height
  width
  xAxisLocation
  yAxisLocation
  = FreeFormLayoutElementProperty
      {elementId = elementId, elementType = elementType, height = height,
       width = width, xAxisLocation = xAxisLocation,
       yAxisLocation = yAxisLocation, backgroundStyle = Prelude.Nothing,
       borderStyle = Prelude.Nothing, loadingAnimation = Prelude.Nothing,
       renderingRules = Prelude.Nothing,
       selectedBorderStyle = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutElementProperty where
  toResourceProperties FreeFormLayoutElementProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FreeFormLayoutElement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ElementId" JSON..= elementId, "ElementType" JSON..= elementType,
                            "Height" JSON..= height, "Width" JSON..= width,
                            "XAxisLocation" JSON..= xAxisLocation,
                            "YAxisLocation" JSON..= yAxisLocation]
                           (Prelude.catMaybes
                              [(JSON..=) "BackgroundStyle" Prelude.<$> backgroundStyle,
                               (JSON..=) "BorderStyle" Prelude.<$> borderStyle,
                               (JSON..=) "LoadingAnimation" Prelude.<$> loadingAnimation,
                               (JSON..=) "RenderingRules" Prelude.<$> renderingRules,
                               (JSON..=) "SelectedBorderStyle" Prelude.<$> selectedBorderStyle,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON FreeFormLayoutElementProperty where
  toJSON FreeFormLayoutElementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ElementId" JSON..= elementId, "ElementType" JSON..= elementType,
               "Height" JSON..= height, "Width" JSON..= width,
               "XAxisLocation" JSON..= xAxisLocation,
               "YAxisLocation" JSON..= yAxisLocation]
              (Prelude.catMaybes
                 [(JSON..=) "BackgroundStyle" Prelude.<$> backgroundStyle,
                  (JSON..=) "BorderStyle" Prelude.<$> borderStyle,
                  (JSON..=) "LoadingAnimation" Prelude.<$> loadingAnimation,
                  (JSON..=) "RenderingRules" Prelude.<$> renderingRules,
                  (JSON..=) "SelectedBorderStyle" Prelude.<$> selectedBorderStyle,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "BackgroundStyle" FreeFormLayoutElementProperty where
  type PropertyType "BackgroundStyle" FreeFormLayoutElementProperty = FreeFormLayoutElementBackgroundStyleProperty
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty
        {backgroundStyle = Prelude.pure newValue, ..}
instance Property "BorderStyle" FreeFormLayoutElementProperty where
  type PropertyType "BorderStyle" FreeFormLayoutElementProperty = FreeFormLayoutElementBorderStyleProperty
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty
        {borderStyle = Prelude.pure newValue, ..}
instance Property "ElementId" FreeFormLayoutElementProperty where
  type PropertyType "ElementId" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty {elementId = newValue, ..}
instance Property "ElementType" FreeFormLayoutElementProperty where
  type PropertyType "ElementType" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty {elementType = newValue, ..}
instance Property "Height" FreeFormLayoutElementProperty where
  type PropertyType "Height" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty {height = newValue, ..}
instance Property "LoadingAnimation" FreeFormLayoutElementProperty where
  type PropertyType "LoadingAnimation" FreeFormLayoutElementProperty = LoadingAnimationProperty
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty
        {loadingAnimation = Prelude.pure newValue, ..}
instance Property "RenderingRules" FreeFormLayoutElementProperty where
  type PropertyType "RenderingRules" FreeFormLayoutElementProperty = [SheetElementRenderingRuleProperty]
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty
        {renderingRules = Prelude.pure newValue, ..}
instance Property "SelectedBorderStyle" FreeFormLayoutElementProperty where
  type PropertyType "SelectedBorderStyle" FreeFormLayoutElementProperty = FreeFormLayoutElementBorderStyleProperty
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty
        {selectedBorderStyle = Prelude.pure newValue, ..}
instance Property "Visibility" FreeFormLayoutElementProperty where
  type PropertyType "Visibility" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty
        {visibility = Prelude.pure newValue, ..}
instance Property "Width" FreeFormLayoutElementProperty where
  type PropertyType "Width" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty {width = newValue, ..}
instance Property "XAxisLocation" FreeFormLayoutElementProperty where
  type PropertyType "XAxisLocation" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty {xAxisLocation = newValue, ..}
instance Property "YAxisLocation" FreeFormLayoutElementProperty where
  type PropertyType "YAxisLocation" FreeFormLayoutElementProperty = Value Prelude.Text
  set newValue FreeFormLayoutElementProperty {..}
    = FreeFormLayoutElementProperty {yAxisLocation = newValue, ..}