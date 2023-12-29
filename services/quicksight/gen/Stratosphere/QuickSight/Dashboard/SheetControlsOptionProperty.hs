module Stratosphere.QuickSight.Dashboard.SheetControlsOptionProperty (
        SheetControlsOptionProperty(..), mkSheetControlsOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetControlsOptionProperty
  = SheetControlsOptionProperty {visibilityState :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSheetControlsOptionProperty :: SheetControlsOptionProperty
mkSheetControlsOptionProperty
  = SheetControlsOptionProperty {visibilityState = Prelude.Nothing}
instance ToResourceProperties SheetControlsOptionProperty where
  toResourceProperties SheetControlsOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SheetControlsOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VisibilityState" Prelude.<$> visibilityState])}
instance JSON.ToJSON SheetControlsOptionProperty where
  toJSON SheetControlsOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VisibilityState" Prelude.<$> visibilityState]))
instance Property "VisibilityState" SheetControlsOptionProperty where
  type PropertyType "VisibilityState" SheetControlsOptionProperty = Value Prelude.Text
  set newValue SheetControlsOptionProperty {}
    = SheetControlsOptionProperty
        {visibilityState = Prelude.pure newValue, ..}