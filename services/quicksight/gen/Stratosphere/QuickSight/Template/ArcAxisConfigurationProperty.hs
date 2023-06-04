module Stratosphere.QuickSight.Template.ArcAxisConfigurationProperty (
        module Exports, ArcAxisConfigurationProperty(..),
        mkArcAxisConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ArcAxisDisplayRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArcAxisConfigurationProperty
  = ArcAxisConfigurationProperty {range :: (Prelude.Maybe ArcAxisDisplayRangeProperty),
                                  reserveRange :: (Prelude.Maybe (Value Prelude.Double))}
mkArcAxisConfigurationProperty :: ArcAxisConfigurationProperty
mkArcAxisConfigurationProperty
  = ArcAxisConfigurationProperty
      {range = Prelude.Nothing, reserveRange = Prelude.Nothing}
instance ToResourceProperties ArcAxisConfigurationProperty where
  toResourceProperties ArcAxisConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ArcAxisConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "ReserveRange" Prelude.<$> reserveRange])}
instance JSON.ToJSON ArcAxisConfigurationProperty where
  toJSON ArcAxisConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "ReserveRange" Prelude.<$> reserveRange]))
instance Property "Range" ArcAxisConfigurationProperty where
  type PropertyType "Range" ArcAxisConfigurationProperty = ArcAxisDisplayRangeProperty
  set newValue ArcAxisConfigurationProperty {..}
    = ArcAxisConfigurationProperty {range = Prelude.pure newValue, ..}
instance Property "ReserveRange" ArcAxisConfigurationProperty where
  type PropertyType "ReserveRange" ArcAxisConfigurationProperty = Value Prelude.Double
  set newValue ArcAxisConfigurationProperty {..}
    = ArcAxisConfigurationProperty
        {reserveRange = Prelude.pure newValue, ..}