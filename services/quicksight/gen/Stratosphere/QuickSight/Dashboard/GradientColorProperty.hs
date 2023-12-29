module Stratosphere.QuickSight.Dashboard.GradientColorProperty (
        module Exports, GradientColorProperty(..), mkGradientColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GradientStopProperty as Exports
import Stratosphere.ResourceProperties
data GradientColorProperty
  = GradientColorProperty {stops :: (Prelude.Maybe [GradientStopProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGradientColorProperty :: GradientColorProperty
mkGradientColorProperty
  = GradientColorProperty {stops = Prelude.Nothing}
instance ToResourceProperties GradientColorProperty where
  toResourceProperties GradientColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GradientColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Stops" Prelude.<$> stops])}
instance JSON.ToJSON GradientColorProperty where
  toJSON GradientColorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Stops" Prelude.<$> stops]))
instance Property "Stops" GradientColorProperty where
  type PropertyType "Stops" GradientColorProperty = [GradientStopProperty]
  set newValue GradientColorProperty {}
    = GradientColorProperty {stops = Prelude.pure newValue, ..}