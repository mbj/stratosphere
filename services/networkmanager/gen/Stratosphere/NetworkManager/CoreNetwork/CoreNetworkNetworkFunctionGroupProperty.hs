module Stratosphere.NetworkManager.CoreNetwork.CoreNetworkNetworkFunctionGroupProperty (
        module Exports, CoreNetworkNetworkFunctionGroupProperty(..),
        mkCoreNetworkNetworkFunctionGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkManager.CoreNetwork.SegmentsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoreNetworkNetworkFunctionGroupProperty
  = CoreNetworkNetworkFunctionGroupProperty {edgeLocations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                             name :: (Prelude.Maybe (Value Prelude.Text)),
                                             segments :: (Prelude.Maybe SegmentsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoreNetworkNetworkFunctionGroupProperty ::
  CoreNetworkNetworkFunctionGroupProperty
mkCoreNetworkNetworkFunctionGroupProperty
  = CoreNetworkNetworkFunctionGroupProperty
      {edgeLocations = Prelude.Nothing, name = Prelude.Nothing,
       segments = Prelude.Nothing}
instance ToResourceProperties CoreNetworkNetworkFunctionGroupProperty where
  toResourceProperties CoreNetworkNetworkFunctionGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::CoreNetwork.CoreNetworkNetworkFunctionGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EdgeLocations" Prelude.<$> edgeLocations,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Segments" Prelude.<$> segments])}
instance JSON.ToJSON CoreNetworkNetworkFunctionGroupProperty where
  toJSON CoreNetworkNetworkFunctionGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EdgeLocations" Prelude.<$> edgeLocations,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Segments" Prelude.<$> segments]))
instance Property "EdgeLocations" CoreNetworkNetworkFunctionGroupProperty where
  type PropertyType "EdgeLocations" CoreNetworkNetworkFunctionGroupProperty = ValueList Prelude.Text
  set newValue CoreNetworkNetworkFunctionGroupProperty {..}
    = CoreNetworkNetworkFunctionGroupProperty
        {edgeLocations = Prelude.pure newValue, ..}
instance Property "Name" CoreNetworkNetworkFunctionGroupProperty where
  type PropertyType "Name" CoreNetworkNetworkFunctionGroupProperty = Value Prelude.Text
  set newValue CoreNetworkNetworkFunctionGroupProperty {..}
    = CoreNetworkNetworkFunctionGroupProperty
        {name = Prelude.pure newValue, ..}
instance Property "Segments" CoreNetworkNetworkFunctionGroupProperty where
  type PropertyType "Segments" CoreNetworkNetworkFunctionGroupProperty = SegmentsProperty
  set newValue CoreNetworkNetworkFunctionGroupProperty {..}
    = CoreNetworkNetworkFunctionGroupProperty
        {segments = Prelude.pure newValue, ..}