module Stratosphere.QuickSight.Dashboard.SimpleClusterMarkerProperty (
        SimpleClusterMarkerProperty(..), mkSimpleClusterMarkerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimpleClusterMarkerProperty
  = SimpleClusterMarkerProperty {color :: (Prelude.Maybe (Value Prelude.Text))}
mkSimpleClusterMarkerProperty :: SimpleClusterMarkerProperty
mkSimpleClusterMarkerProperty
  = SimpleClusterMarkerProperty {color = Prelude.Nothing}
instance ToResourceProperties SimpleClusterMarkerProperty where
  toResourceProperties SimpleClusterMarkerProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SimpleClusterMarker",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Color" Prelude.<$> color])}
instance JSON.ToJSON SimpleClusterMarkerProperty where
  toJSON SimpleClusterMarkerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Color" Prelude.<$> color]))
instance Property "Color" SimpleClusterMarkerProperty where
  type PropertyType "Color" SimpleClusterMarkerProperty = Value Prelude.Text
  set newValue SimpleClusterMarkerProperty {}
    = SimpleClusterMarkerProperty {color = Prelude.pure newValue, ..}