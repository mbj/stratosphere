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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-sheetstyle.html>
    SheetStyleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-sheetstyle.html#cfn-quicksight-theme-sheetstyle-tile>
                        tile :: (Prelude.Maybe TileStyleProperty),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-sheetstyle.html#cfn-quicksight-theme-sheetstyle-tilelayout>
                        tileLayout :: (Prelude.Maybe TileLayoutStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
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