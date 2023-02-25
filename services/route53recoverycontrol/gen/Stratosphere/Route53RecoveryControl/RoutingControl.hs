module Stratosphere.Route53RecoveryControl.RoutingControl (
        RoutingControl(..), mkRoutingControl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingControl
  = RoutingControl {clusterArn :: (Prelude.Maybe (Value Prelude.Text)),
                    controlPanelArn :: (Prelude.Maybe (Value Prelude.Text)),
                    name :: (Value Prelude.Text)}
mkRoutingControl :: Value Prelude.Text -> RoutingControl
mkRoutingControl name
  = RoutingControl
      {name = name, clusterArn = Prelude.Nothing,
       controlPanelArn = Prelude.Nothing}
instance ToResourceProperties RoutingControl where
  toResourceProperties RoutingControl {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::RoutingControl",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ClusterArn" Prelude.<$> clusterArn,
                               (JSON..=) "ControlPanelArn" Prelude.<$> controlPanelArn]))}
instance JSON.ToJSON RoutingControl where
  toJSON RoutingControl {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ClusterArn" Prelude.<$> clusterArn,
                  (JSON..=) "ControlPanelArn" Prelude.<$> controlPanelArn])))
instance Property "ClusterArn" RoutingControl where
  type PropertyType "ClusterArn" RoutingControl = Value Prelude.Text
  set newValue RoutingControl {..}
    = RoutingControl {clusterArn = Prelude.pure newValue, ..}
instance Property "ControlPanelArn" RoutingControl where
  type PropertyType "ControlPanelArn" RoutingControl = Value Prelude.Text
  set newValue RoutingControl {..}
    = RoutingControl {controlPanelArn = Prelude.pure newValue, ..}
instance Property "Name" RoutingControl where
  type PropertyType "Name" RoutingControl = Value Prelude.Text
  set newValue RoutingControl {..}
    = RoutingControl {name = newValue, ..}