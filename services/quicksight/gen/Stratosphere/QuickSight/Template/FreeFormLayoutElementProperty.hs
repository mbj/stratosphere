module Stratosphere.QuickSight.Template.FreeFormLayoutElementProperty (
        module Exports, FreeFormLayoutElementProperty(..),
        mkFreeFormLayoutElementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutElementBackgroundStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FreeFormLayoutElementBorderStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LoadingAnimationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SheetElementRenderingRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeFormLayoutElementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html>
    FreeFormLayoutElementProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-backgroundstyle>
                                   backgroundStyle :: (Prelude.Maybe FreeFormLayoutElementBackgroundStyleProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-borderstyle>
                                   borderStyle :: (Prelude.Maybe FreeFormLayoutElementBorderStyleProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-elementid>
                                   elementId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-elementtype>
                                   elementType :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-height>
                                   height :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-loadinganimation>
                                   loadingAnimation :: (Prelude.Maybe LoadingAnimationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-renderingrules>
                                   renderingRules :: (Prelude.Maybe [SheetElementRenderingRuleProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-selectedborderstyle>
                                   selectedBorderStyle :: (Prelude.Maybe FreeFormLayoutElementBorderStyleProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-visibility>
                                   visibility :: (Prelude.Maybe JSON.Object),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-width>
                                   width :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-xaxislocation>
                                   xAxisLocation :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-freeformlayoutelement.html#cfn-quicksight-template-freeformlayoutelement-yaxislocation>
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
      {haddock_workaround_ = (), elementId = elementId,
       elementType = elementType, height = height, width = width,
       xAxisLocation = xAxisLocation, yAxisLocation = yAxisLocation,
       backgroundStyle = Prelude.Nothing, borderStyle = Prelude.Nothing,
       loadingAnimation = Prelude.Nothing,
       renderingRules = Prelude.Nothing,
       selectedBorderStyle = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties FreeFormLayoutElementProperty where
  toResourceProperties FreeFormLayoutElementProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FreeFormLayoutElement",
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
  type PropertyType "Visibility" FreeFormLayoutElementProperty = JSON.Object
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