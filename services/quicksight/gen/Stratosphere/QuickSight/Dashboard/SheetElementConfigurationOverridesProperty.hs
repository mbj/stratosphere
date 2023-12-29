module Stratosphere.QuickSight.Dashboard.SheetElementConfigurationOverridesProperty (
        SheetElementConfigurationOverridesProperty(..),
        mkSheetElementConfigurationOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetElementConfigurationOverridesProperty
  = SheetElementConfigurationOverridesProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetElementConfigurationOverridesProperty ::
  SheetElementConfigurationOverridesProperty
mkSheetElementConfigurationOverridesProperty
  = SheetElementConfigurationOverridesProperty
      {visibility = Prelude.Nothing}
instance ToResourceProperties SheetElementConfigurationOverridesProperty where
  toResourceProperties
    SheetElementConfigurationOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SheetElementConfigurationOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON SheetElementConfigurationOverridesProperty where
  toJSON SheetElementConfigurationOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" SheetElementConfigurationOverridesProperty where
  type PropertyType "Visibility" SheetElementConfigurationOverridesProperty = Value Prelude.Text
  set newValue SheetElementConfigurationOverridesProperty {}
    = SheetElementConfigurationOverridesProperty
        {visibility = Prelude.pure newValue, ..}