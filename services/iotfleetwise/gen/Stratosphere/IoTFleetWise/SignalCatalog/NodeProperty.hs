module Stratosphere.IoTFleetWise.SignalCatalog.NodeProperty (
        module Exports, NodeProperty(..), mkNodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.SignalCatalog.ActuatorProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.SignalCatalog.AttributeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.SignalCatalog.BranchProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.SignalCatalog.SensorProperty as Exports
import Stratosphere.ResourceProperties
data NodeProperty
  = NodeProperty {actuator :: (Prelude.Maybe ActuatorProperty),
                  attribute :: (Prelude.Maybe AttributeProperty),
                  branch :: (Prelude.Maybe BranchProperty),
                  sensor :: (Prelude.Maybe SensorProperty)}
mkNodeProperty :: NodeProperty
mkNodeProperty
  = NodeProperty
      {actuator = Prelude.Nothing, attribute = Prelude.Nothing,
       branch = Prelude.Nothing, sensor = Prelude.Nothing}
instance ToResourceProperties NodeProperty where
  toResourceProperties NodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog.Node",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actuator" Prelude.<$> actuator,
                            (JSON..=) "Attribute" Prelude.<$> attribute,
                            (JSON..=) "Branch" Prelude.<$> branch,
                            (JSON..=) "Sensor" Prelude.<$> sensor])}
instance JSON.ToJSON NodeProperty where
  toJSON NodeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actuator" Prelude.<$> actuator,
               (JSON..=) "Attribute" Prelude.<$> attribute,
               (JSON..=) "Branch" Prelude.<$> branch,
               (JSON..=) "Sensor" Prelude.<$> sensor]))
instance Property "Actuator" NodeProperty where
  type PropertyType "Actuator" NodeProperty = ActuatorProperty
  set newValue NodeProperty {..}
    = NodeProperty {actuator = Prelude.pure newValue, ..}
instance Property "Attribute" NodeProperty where
  type PropertyType "Attribute" NodeProperty = AttributeProperty
  set newValue NodeProperty {..}
    = NodeProperty {attribute = Prelude.pure newValue, ..}
instance Property "Branch" NodeProperty where
  type PropertyType "Branch" NodeProperty = BranchProperty
  set newValue NodeProperty {..}
    = NodeProperty {branch = Prelude.pure newValue, ..}
instance Property "Sensor" NodeProperty where
  type PropertyType "Sensor" NodeProperty = SensorProperty
  set newValue NodeProperty {..}
    = NodeProperty {sensor = Prelude.pure newValue, ..}