module Stratosphere.Location.Map (
        module Exports, Map(..), mkMap
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Location.Map.MapConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Map
  = Map {configuration :: MapConfigurationProperty,
         description :: (Prelude.Maybe (Value Prelude.Text)),
         mapName :: (Value Prelude.Text),
         pricingPlan :: (Prelude.Maybe (Value Prelude.Text))}
mkMap :: MapConfigurationProperty -> Value Prelude.Text -> Map
mkMap configuration mapName
  = Map
      {configuration = configuration, mapName = mapName,
       description = Prelude.Nothing, pricingPlan = Prelude.Nothing}
instance ToResourceProperties Map where
  toResourceProperties Map {..}
    = ResourceProperties
        {awsType = "AWS::Location::Map", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Configuration" JSON..= configuration, "MapName" JSON..= mapName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PricingPlan" Prelude.<$> pricingPlan]))}
instance JSON.ToJSON Map where
  toJSON Map {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Configuration" JSON..= configuration, "MapName" JSON..= mapName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PricingPlan" Prelude.<$> pricingPlan])))
instance Property "Configuration" Map where
  type PropertyType "Configuration" Map = MapConfigurationProperty
  set newValue Map {..} = Map {configuration = newValue, ..}
instance Property "Description" Map where
  type PropertyType "Description" Map = Value Prelude.Text
  set newValue Map {..}
    = Map {description = Prelude.pure newValue, ..}
instance Property "MapName" Map where
  type PropertyType "MapName" Map = Value Prelude.Text
  set newValue Map {..} = Map {mapName = newValue, ..}
instance Property "PricingPlan" Map where
  type PropertyType "PricingPlan" Map = Value Prelude.Text
  set newValue Map {..}
    = Map {pricingPlan = Prelude.pure newValue, ..}