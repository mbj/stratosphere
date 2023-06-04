module Stratosphere.QuickSight.Dashboard.SheetLayoutElementMaximizationOptionProperty (
        SheetLayoutElementMaximizationOptionProperty(..),
        mkSheetLayoutElementMaximizationOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetLayoutElementMaximizationOptionProperty
  = SheetLayoutElementMaximizationOptionProperty {availabilityStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkSheetLayoutElementMaximizationOptionProperty ::
  SheetLayoutElementMaximizationOptionProperty
mkSheetLayoutElementMaximizationOptionProperty
  = SheetLayoutElementMaximizationOptionProperty
      {availabilityStatus = Prelude.Nothing}
instance ToResourceProperties SheetLayoutElementMaximizationOptionProperty where
  toResourceProperties
    SheetLayoutElementMaximizationOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SheetLayoutElementMaximizationOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus])}
instance JSON.ToJSON SheetLayoutElementMaximizationOptionProperty where
  toJSON SheetLayoutElementMaximizationOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityStatus" Prelude.<$> availabilityStatus]))
instance Property "AvailabilityStatus" SheetLayoutElementMaximizationOptionProperty where
  type PropertyType "AvailabilityStatus" SheetLayoutElementMaximizationOptionProperty = Value Prelude.Text
  set newValue SheetLayoutElementMaximizationOptionProperty {}
    = SheetLayoutElementMaximizationOptionProperty
        {availabilityStatus = Prelude.pure newValue, ..}