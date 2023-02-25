module Stratosphere.QuickSight.Theme.TileLayoutStyleProperty (
        module Exports, TileLayoutStyleProperty(..),
        mkTileLayoutStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.GutterStyleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.MarginStyleProperty as Exports
import Stratosphere.ResourceProperties
data TileLayoutStyleProperty
  = TileLayoutStyleProperty {gutter :: (Prelude.Maybe GutterStyleProperty),
                             margin :: (Prelude.Maybe MarginStyleProperty)}
mkTileLayoutStyleProperty :: TileLayoutStyleProperty
mkTileLayoutStyleProperty
  = TileLayoutStyleProperty
      {gutter = Prelude.Nothing, margin = Prelude.Nothing}
instance ToResourceProperties TileLayoutStyleProperty where
  toResourceProperties TileLayoutStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.TileLayoutStyle",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Gutter" Prelude.<$> gutter,
                            (JSON..=) "Margin" Prelude.<$> margin])}
instance JSON.ToJSON TileLayoutStyleProperty where
  toJSON TileLayoutStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Gutter" Prelude.<$> gutter,
               (JSON..=) "Margin" Prelude.<$> margin]))
instance Property "Gutter" TileLayoutStyleProperty where
  type PropertyType "Gutter" TileLayoutStyleProperty = GutterStyleProperty
  set newValue TileLayoutStyleProperty {..}
    = TileLayoutStyleProperty {gutter = Prelude.pure newValue, ..}
instance Property "Margin" TileLayoutStyleProperty where
  type PropertyType "Margin" TileLayoutStyleProperty = MarginStyleProperty
  set newValue TileLayoutStyleProperty {..}
    = TileLayoutStyleProperty {margin = Prelude.pure newValue, ..}