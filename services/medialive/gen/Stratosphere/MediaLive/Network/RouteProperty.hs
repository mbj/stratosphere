module Stratosphere.MediaLive.Network.RouteProperty (
        RouteProperty(..), mkRouteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RouteProperty
  = RouteProperty {cidr :: (Prelude.Maybe (Value Prelude.Text)),
                   gateway :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRouteProperty :: RouteProperty
mkRouteProperty
  = RouteProperty {cidr = Prelude.Nothing, gateway = Prelude.Nothing}
instance ToResourceProperties RouteProperty where
  toResourceProperties RouteProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Network.Route",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "Gateway" Prelude.<$> gateway])}
instance JSON.ToJSON RouteProperty where
  toJSON RouteProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "Gateway" Prelude.<$> gateway]))
instance Property "Cidr" RouteProperty where
  type PropertyType "Cidr" RouteProperty = Value Prelude.Text
  set newValue RouteProperty {..}
    = RouteProperty {cidr = Prelude.pure newValue, ..}
instance Property "Gateway" RouteProperty where
  type PropertyType "Gateway" RouteProperty = Value Prelude.Text
  set newValue RouteProperty {..}
    = RouteProperty {gateway = Prelude.pure newValue, ..}