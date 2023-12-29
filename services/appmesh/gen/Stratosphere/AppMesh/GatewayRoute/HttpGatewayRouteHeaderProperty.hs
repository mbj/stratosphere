module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteHeaderProperty (
        module Exports, HttpGatewayRouteHeaderProperty(..),
        mkHttpGatewayRouteHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteHeaderMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpGatewayRouteHeaderProperty
  = HttpGatewayRouteHeaderProperty {invert :: (Prelude.Maybe (Value Prelude.Bool)),
                                    match :: (Prelude.Maybe HttpGatewayRouteHeaderMatchProperty),
                                    name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpGatewayRouteHeaderProperty ::
  Value Prelude.Text -> HttpGatewayRouteHeaderProperty
mkHttpGatewayRouteHeaderProperty name
  = HttpGatewayRouteHeaderProperty
      {name = name, invert = Prelude.Nothing, match = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRouteHeaderProperty where
  toResourceProperties HttpGatewayRouteHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRouteHeader",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Invert" Prelude.<$> invert,
                               (JSON..=) "Match" Prelude.<$> match]))}
instance JSON.ToJSON HttpGatewayRouteHeaderProperty where
  toJSON HttpGatewayRouteHeaderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Invert" Prelude.<$> invert,
                  (JSON..=) "Match" Prelude.<$> match])))
instance Property "Invert" HttpGatewayRouteHeaderProperty where
  type PropertyType "Invert" HttpGatewayRouteHeaderProperty = Value Prelude.Bool
  set newValue HttpGatewayRouteHeaderProperty {..}
    = HttpGatewayRouteHeaderProperty
        {invert = Prelude.pure newValue, ..}
instance Property "Match" HttpGatewayRouteHeaderProperty where
  type PropertyType "Match" HttpGatewayRouteHeaderProperty = HttpGatewayRouteHeaderMatchProperty
  set newValue HttpGatewayRouteHeaderProperty {..}
    = HttpGatewayRouteHeaderProperty
        {match = Prelude.pure newValue, ..}
instance Property "Name" HttpGatewayRouteHeaderProperty where
  type PropertyType "Name" HttpGatewayRouteHeaderProperty = Value Prelude.Text
  set newValue HttpGatewayRouteHeaderProperty {..}
    = HttpGatewayRouteHeaderProperty {name = newValue, ..}