module Stratosphere.GameLift.Alias.RoutingStrategyProperty (
        RoutingStrategyProperty(..), mkRoutingStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingStrategyProperty
  = RoutingStrategyProperty {fleetId :: (Prelude.Maybe (Value Prelude.Text)),
                             message :: (Prelude.Maybe (Value Prelude.Text)),
                             type' :: (Value Prelude.Text)}
mkRoutingStrategyProperty ::
  Value Prelude.Text -> RoutingStrategyProperty
mkRoutingStrategyProperty type'
  = RoutingStrategyProperty
      {type' = type', fleetId = Prelude.Nothing,
       message = Prelude.Nothing}
instance ToResourceProperties RoutingStrategyProperty where
  toResourceProperties RoutingStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Alias.RoutingStrategy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "FleetId" Prelude.<$> fleetId,
                               (JSON..=) "Message" Prelude.<$> message]))}
instance JSON.ToJSON RoutingStrategyProperty where
  toJSON RoutingStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "FleetId" Prelude.<$> fleetId,
                  (JSON..=) "Message" Prelude.<$> message])))
instance Property "FleetId" RoutingStrategyProperty where
  type PropertyType "FleetId" RoutingStrategyProperty = Value Prelude.Text
  set newValue RoutingStrategyProperty {..}
    = RoutingStrategyProperty {fleetId = Prelude.pure newValue, ..}
instance Property "Message" RoutingStrategyProperty where
  type PropertyType "Message" RoutingStrategyProperty = Value Prelude.Text
  set newValue RoutingStrategyProperty {..}
    = RoutingStrategyProperty {message = Prelude.pure newValue, ..}
instance Property "Type" RoutingStrategyProperty where
  type PropertyType "Type" RoutingStrategyProperty = Value Prelude.Text
  set newValue RoutingStrategyProperty {..}
    = RoutingStrategyProperty {type' = newValue, ..}