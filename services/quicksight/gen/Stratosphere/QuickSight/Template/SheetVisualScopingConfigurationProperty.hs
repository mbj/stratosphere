module Stratosphere.QuickSight.Template.SheetVisualScopingConfigurationProperty (
        SheetVisualScopingConfigurationProperty(..),
        mkSheetVisualScopingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetVisualScopingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetvisualscopingconfiguration.html>
    SheetVisualScopingConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetvisualscopingconfiguration.html#cfn-quicksight-template-sheetvisualscopingconfiguration-scope>
                                             scope :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetvisualscopingconfiguration.html#cfn-quicksight-template-sheetvisualscopingconfiguration-sheetid>
                                             sheetId :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sheetvisualscopingconfiguration.html#cfn-quicksight-template-sheetvisualscopingconfiguration-visualids>
                                             visualIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetVisualScopingConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SheetVisualScopingConfigurationProperty
mkSheetVisualScopingConfigurationProperty scope sheetId
  = SheetVisualScopingConfigurationProperty
      {haddock_workaround_ = (), scope = scope, sheetId = sheetId,
       visualIds = Prelude.Nothing}
instance ToResourceProperties SheetVisualScopingConfigurationProperty where
  toResourceProperties SheetVisualScopingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SheetVisualScopingConfiguration",
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