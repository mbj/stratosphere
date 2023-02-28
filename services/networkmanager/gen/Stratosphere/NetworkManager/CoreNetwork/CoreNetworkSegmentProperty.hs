module Stratosphere.NetworkManager.CoreNetwork.CoreNetworkSegmentProperty (
        CoreNetworkSegmentProperty(..), mkCoreNetworkSegmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreNetworkSegmentProperty
  = CoreNetworkSegmentProperty {edgeLocations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                name :: (Prelude.Maybe (Value Prelude.Text)),
                                sharedSegments :: (Prelude.Maybe (ValueList Prelude.Text))}
mkCoreNetworkSegmentProperty :: CoreNetworkSegmentProperty
mkCoreNetworkSegmentProperty
  = CoreNetworkSegmentProperty
      {edgeLocations = Prelude.Nothing, name = Prelude.Nothing,
       sharedSegments = Prelude.Nothing}
instance ToResourceProperties CoreNetworkSegmentProperty where
  toResourceProperties CoreNetworkSegmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork.CoreNetworkSegment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EdgeLocations" Prelude.<$> edgeLocations,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SharedSegments" Prelude.<$> sharedSegments])}
instance JSON.ToJSON CoreNetworkSegmentProperty where
  toJSON CoreNetworkSegmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EdgeLocations" Prelude.<$> edgeLocations,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SharedSegments" Prelude.<$> sharedSegments]))
instance Property "EdgeLocations" CoreNetworkSegmentProperty where
  type PropertyType "EdgeLocations" CoreNetworkSegmentProperty = ValueList Prelude.Text
  set newValue CoreNetworkSegmentProperty {..}
    = CoreNetworkSegmentProperty
        {edgeLocations = Prelude.pure newValue, ..}
instance Property "Name" CoreNetworkSegmentProperty where
  type PropertyType "Name" CoreNetworkSegmentProperty = Value Prelude.Text
  set newValue CoreNetworkSegmentProperty {..}
    = CoreNetworkSegmentProperty {name = Prelude.pure newValue, ..}
instance Property "SharedSegments" CoreNetworkSegmentProperty where
  type PropertyType "SharedSegments" CoreNetworkSegmentProperty = ValueList Prelude.Text
  set newValue CoreNetworkSegmentProperty {..}
    = CoreNetworkSegmentProperty
        {sharedSegments = Prelude.pure newValue, ..}