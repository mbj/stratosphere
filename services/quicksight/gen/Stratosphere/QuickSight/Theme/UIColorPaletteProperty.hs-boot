module Stratosphere.QuickSight.Theme.UIColorPaletteProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UIColorPaletteProperty :: Prelude.Type
instance ToResourceProperties UIColorPaletteProperty
instance JSON.ToJSON UIColorPaletteProperty