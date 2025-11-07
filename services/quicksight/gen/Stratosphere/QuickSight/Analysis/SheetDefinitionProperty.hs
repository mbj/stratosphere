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
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetImageProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetTextBoxProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html>
    SheetDefinitionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-contenttype>
                             contentType :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-filtercontrols>
                             filterControls :: (Prelude.Maybe [FilterControlProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-images>
                             images :: (Prelude.Maybe [SheetImageProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-layouts>
                             layouts :: (Prelude.Maybe [LayoutProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-name>
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-parametercontrols>
                             parameterControls :: (Prelude.Maybe [ParameterControlProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-sheetcontrollayouts>
                             sheetControlLayouts :: (Prelude.Maybe [SheetControlLayoutProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-sheetid>
                             sheetId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-textboxes>
                             textBoxes :: (Prelude.Maybe [SheetTextBoxProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-title>
                             title :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetdefinition.html#cfn-quicksight-analysis-sheetdefinition-visuals>
                             visuals :: (Prelude.Maybe [VisualProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetDefinitionProperty ::
  Value Prelude.Text -> SheetDefinitionProperty
mkSheetDefinitionProperty sheetId
  = SheetDefinitionProperty
      {haddock_workaround_ = (), sheetId = sheetId,
       contentType = Prelude.Nothing, description = Prelude.Nothing,
       filterControls = Prelude.Nothing, images = Prelude.Nothing,
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
                               (JSON..=) "Images" Prelude.<$> images,
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
                  (JSON..=) "Images" Prelude.<$> images,
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
instance Property "Images" SheetDefinitionProperty where
  type PropertyType "Images" SheetDefinitionProperty = [SheetImageProperty]
  set newValue SheetDefinitionProperty {..}
    = SheetDefinitionProperty {images = Prelude.pure newValue, ..}
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