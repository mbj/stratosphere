module Stratosphere.QuickSight.Analysis.SheetVisualScopingConfigurationProperty (
        SheetVisualScopingConfigurationProperty(..),
        mkSheetVisualScopingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetVisualScopingConfigurationProperty
  = SheetVisualScopingConfigurationProperty {scope :: (Value Prelude.Text),
                                             sheetId :: (Value Prelude.Text),
                                             visualIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkSheetVisualScopingConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SheetVisualScopingConfigurationProperty
mkSheetVisualScopingConfigurationProperty scope sheetId
  = SheetVisualScopingConfigurationProperty
      {scope = scope, sheetId = sheetId, visualIds = Prelude.Nothing}
instance ToResourceProperties SheetVisualScopingConfigurationProperty where
  toResourceProperties SheetVisualScopingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetVisualScopingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Scope" JSON..= scope, "SheetId" JSON..= sheetId]
                           (Prelude.catMaybes [(JSON..=) "VisualIds" Prelude.<$> visualIds]))}
instance JSON.ToJSON SheetVisualScopingConfigurationProperty where
  toJSON SheetVisualScopingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Scope" JSON..= scope, "SheetId" JSON..= sheetId]
              (Prelude.catMaybes [(JSON..=) "VisualIds" Prelude.<$> visualIds])))
instance Property "Scope" SheetVisualScopingConfigurationProperty where
  type PropertyType "Scope" SheetVisualScopingConfigurationProperty = Value Prelude.Text
  set newValue SheetVisualScopingConfigurationProperty {..}
    = SheetVisualScopingConfigurationProperty {scope = newValue, ..}
instance Property "SheetId" SheetVisualScopingConfigurationProperty where
  type PropertyType "SheetId" SheetVisualScopingConfigurationProperty = Value Prelude.Text
  set newValue SheetVisualScopingConfigurationProperty {..}
    = SheetVisualScopingConfigurationProperty {sheetId = newValue, ..}
instance Property "VisualIds" SheetVisualScopingConfigurationProperty where
  type PropertyType "VisualIds" SheetVisualScopingConfigurationProperty = ValueList Prelude.Text
  set newValue SheetVisualScopingConfigurationProperty {..}
    = SheetVisualScopingConfigurationProperty
        {visualIds = Prelude.pure newValue, ..}