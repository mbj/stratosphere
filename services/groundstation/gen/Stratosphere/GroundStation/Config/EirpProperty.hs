module Stratosphere.GroundStation.Config.EirpProperty (
        EirpProperty(..), mkEirpProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EirpProperty
  = EirpProperty {units :: (Prelude.Maybe (Value Prelude.Text)),
                  value :: (Prelude.Maybe (Value Prelude.Double))}
mkEirpProperty :: EirpProperty
mkEirpProperty
  = EirpProperty {units = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties EirpProperty where
  toResourceProperties EirpProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.Eirp",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Units" Prelude.<$> units,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EirpProperty where
  toJSON EirpProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Units" Prelude.<$> units,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Units" EirpProperty where
  type PropertyType "Units" EirpProperty = Value Prelude.Text
  set newValue EirpProperty {..}
    = EirpProperty {units = Prelude.pure newValue, ..}
instance Property "Value" EirpProperty where
  type PropertyType "Value" EirpProperty = Value Prelude.Double
  set newValue EirpProperty {..}
    = EirpProperty {value = Prelude.pure newValue, ..}