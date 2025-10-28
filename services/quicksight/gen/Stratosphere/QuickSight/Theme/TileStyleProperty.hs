module Stratosphere.QuickSight.Theme.TileStyleProperty (
        module Exports, TileStyleProperty(..), mkTileStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Theme.BorderStyleProperty as Exports
import Stratosphere.ResourceProperties
data TileStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-tilestyle.html>
    TileStyleProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-theme-tilestyle.html#cfn-quicksight-theme-tilestyle-border>
                       border :: (Prelude.Maybe BorderStyleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTileStyleProperty :: TileStyleProperty
mkTileStyleProperty
  = TileStyleProperty
      {haddock_workaround_ = (), border = Prelude.Nothing}
instance ToResourceProperties TileStyleProperty where
  toResourceProperties TileStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Theme.TileStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Border" Prelude.<$> border])}
instance JSON.ToJSON TileStyleProperty where
  toJSON TileStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Border" Prelude.<$> border]))
instance Property "Border" TileStyleProperty where
  type PropertyType "Border" TileStyleProperty = BorderStyleProperty
  set newValue TileStyleProperty {..}
    = TileStyleProperty {border = Prelude.pure newValue, ..}