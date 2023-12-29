module Stratosphere.QuickSight.Analysis.SheetDefinitionProperty (
        module Exports, SheetDefinitionProperty(..),
        mkSheetDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LayoutProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParameterControlProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetControlLayoutProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetTextBoxProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetDefinitionProperty
  = SheetDefinitionProperty {contentType :: (Prelude.Maybe (Value Prelude.Text)),
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             filterControls :: (Prelude.Maybe [FilterControlProperty]),
                             layouts :: (Prelude.Maybe [LayoutProperty]),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             parameterControls :: (Prelude.Maybe [ParameterControlProperty]),
                             sheetControlLayouts :: (Prelude.Maybe [SheetControlLayoutProperty]),
                             sheetId :: (Value Prelude.Text),
                             textBoxes :: (Prelude.Maybe [SheetTextBoxProperty]),
                             title :: (Prelude.Maybe (Value Prelude.Text)),
                             visuals :: (Prelude.Maybe [VisualProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetDefinitionProperty ::
  Value Prelude.Text -> SheetDefinitionProperty
mkSheetDefinitionProperty sheetId
  = SheetDefinitionProperty
      {sheetId = sheetId, contentType = Prelude.Nothing,
       description = Prelude.Nothing, filterControls = Prelude.Nothing,
       layouts = Prelude.Nothing, name = Prelude.Nothing,
       parameterControls = Prelude.Nothing,
       sheetControlLayouts = Prelude.Nothing, textBoxes = Prelude.Nothing,
       title = Prelude.Nothing, visuals = Prelude.Nothing}
instance ToResourceProperties SheetDefinitionProperty where
  toResourceProperties SheetDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SheetId" JSON..= sheetId]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FilterControls" Prelude.<$> filterControls,
                               (JSON..=) "Layouts" Prelude.<$> layouts,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ParameterControls" Prelude.<$> parameterControls,
                               (JSON..=) "SheetControlLayouts" Prelude.<$> sheetControlLayouts,
                               (JSON..=) "TextBoxes" Prelude.<$> textBoxes,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "Visuals" Prelude.<$> visuals]))}
instance JSON.ToJSON SheetDefinitionProperty where
  toJSON SheetDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SheetId" JSON..= sheetId]
              (Prelude.catMaybes
                 [(JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FilterControls" Prelude.<$> filterControls,
                  (JSON..=) "Layouts" Prelude.<$> layouts,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ParameterControls" Prelude.<$> parameterControls,
                  (JSON..=) "SheetControlLayouts" Prelude.<$> sheetControlLayouts,
                  (JSON..=) "TextBoxes" Prelude.<$> textBoxes,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "Visuals" Prelude.<$> visuals])))
instance Property "ContentType" SheetDefinitionProperty where
  type PropertyType "ContentType" SheetDefinitionProperty = Value Prelude.Text
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {contentType = Prelude.pure newValue, ..}
instance Property "Description" SheetDefinitionProperty where
  type PropertyType "Description" SheetDefinitionProperty = Value Prelude.Text
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {description = Prelude.pure newValue, ..}
instance Property "FilterControls" SheetDefinitionProperty where
  type PropertyType "FilterControls" SheetDefinitionProperty = [FilterControlProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty
        {filterControls = Prelude.pure newValue, ..}
instance Property "Layouts" SheetDefinitionProperty where
  type PropertyType "Layouts" SheetDefinitionProperty = [LayoutProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {layouts = Prelude.pure newValue, ..}
instance Property "Name" SheetDefinitionProperty where
  type PropertyType "Name" SheetDefinitionProperty = Value Prelude.Text
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {name = Prelude.pure newValue, ..}
instance Property "ParameterControls" SheetDefinitionProperty where
  type PropertyType "ParameterControls" SheetDefinitionProperty = [ParameterControlProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty
        {parameterControls = Prelude.pure newValue, ..}
instance Property "SheetControlLayouts" SheetDefinitionProperty where
  type PropertyType "SheetControlLayouts" SheetDefinitionProperty = [SheetControlLayoutProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty
        {sheetControlLayouts = Prelude.pure newValue, ..}
instance Property "SheetId" SheetDefinitionProperty where
  type PropertyType "SheetId" SheetDefinitionProperty = Value Prelude.Text
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {sheetId = newValue, ..}
instance Property "TextBoxes" SheetDefinitionProperty where
  type PropertyType "TextBoxes" SheetDefinitionProperty = [SheetTextBoxProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {textBoxes = Prelude.pure newValue, ..}
instance Property "Title" SheetDefinitionProperty where
  type PropertyType "Title" SheetDefinitionProperty = Value Prelude.Text
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {title = Prelude.pure newValue, ..}
instance Property "Visuals" SheetDefinitionProperty where
  type PropertyType "Visuals" SheetDefinitionProperty = [VisualProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {visuals = Prelude.pure newValue, ..}