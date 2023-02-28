module Stratosphere.QuickSight.Theme.SheetStyleProperty (
        module Exports, SheetStyleProperty(..), mkSheetStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.TileLayoutStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.TileStyleProperty as Exports
import Stratosphere.ResourceProperties
data SheetStyleProperty
  = SheetStyleProperty {tile :: (Prelude.Maybe TileStyleProperty),
                        tileLayout :: (Prelude.Maybe TileLayoutStyleProperty)}
mkSheetStyleProperty :: SheetStyleProperty
mkSheetStyleProperty
  = SheetStyleProperty
      {tile = Prelude.Nothing, tileLayout = Prelude.Nothing}
instance ToResourceProperties SheetStyleProperty where
  toResourceProperties SheetStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.SheetStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Tile" Prelude.<$> tile,
                            (JSON..=) "TileLayout" Prelude.<$> tileLayout])}
instance JSON.ToJSON SheetStyleProperty where
  toJSON SheetStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Tile" Prelude.<$> tile,
               (JSON..=) "TileLayout" Prelude.<$> tileLayout]))
instance Property "Tile" SheetStyleProperty where
  type PropertyType "Tile" SheetStyleProperty = TileStyleProperty
  set newValue SheetStyleProperty {..}
    = SheetStyleProperty {tile = Prelude.pure newValue, ..}
instance Property "TileLayout" SheetStyleProperty where
  type PropertyType "TileLayout" SheetStyleProperty = TileLayoutStyleProperty
  set newValue SheetStyleProperty {..}
    = SheetStyleProperty {tileLayout = Prelude.pure newValue, ..}