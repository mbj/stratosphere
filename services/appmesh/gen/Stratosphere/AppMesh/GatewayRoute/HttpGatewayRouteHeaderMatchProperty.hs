module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteHeaderMatchProperty (
        module Exports, HttpGatewayRouteHeaderMatchProperty(..),
        mkHttpGatewayRouteHeaderMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteRangeMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpGatewayRouteHeaderMatchProperty
  = HttpGatewayRouteHeaderMatchProperty {exact :: (Prelude.Maybe (Value Prelude.Text)),
                                         prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                         range :: (Prelude.Maybe GatewayRouteRangeMatchProperty),
                                         regex :: (Prelude.Maybe (Value Prelude.Text)),
                                         suffix :: (Prelude.Maybe (Value Prelude.Text))}
mkHttpGatewayRouteHeaderMatchProperty ::
  HttpGatewayRouteHeaderMatchProperty
mkHttpGatewayRouteHeaderMatchProperty
  = HttpGatewayRouteHeaderMatchProperty
      {exact = Prelude.Nothing, prefix = Prelude.Nothing,
       range = Prelude.Nothing, regex = Prelude.Nothing,
       suffix = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRouteHeaderMatchProperty where
  toResourceProperties HttpGatewayRouteHeaderMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRouteHeaderMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Regex" Prelude.<$> regex,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON HttpGatewayRouteHeaderMatchProperty where
  toJSON HttpGatewayRouteHeaderMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Regex" Prelude.<$> regex,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Exact" HttpGatewayRouteHeaderMatchProperty where
  type PropertyType "Exact" HttpGatewayRouteHeaderMatchProperty = Value Prelude.Text
  set newValue HttpGatewayRouteHeaderMatchProperty {..}
    = HttpGatewayRouteHeaderMatchProperty
        {exact = Prelude.pure newValue, ..}
instance Property "Prefix" HttpGatewayRouteHeaderMatchProperty where
  type PropertyType "Prefix" HttpGatewayRouteHeaderMatchProperty = Value Prelude.Text
  set newValue HttpGatewayRouteHeaderMatchProperty {..}
    = HttpGatewayRouteHeaderMatchProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "Range" HttpGatewayRouteHeaderMatchProperty where
  type PropertyType "Range" HttpGatewayRouteHeaderMatchProperty = GatewayRouteRangeMatchProperty
  set newValue HttpGatewayRouteHeaderMatchProperty {..}
    = HttpGatewayRouteHeaderMatchProperty
        {range = Prelude.pure newValue, ..}
instance Property "Regex" HttpGatewayRouteHeaderMatchProperty where
  type PropertyType "Regex" HttpGatewayRouteHeaderMatchProperty = Value Prelude.Text
  set newValue HttpGatewayRouteHeaderMatchProperty {..}
    = HttpGatewayRouteHeaderMatchProperty
        {regex = Prelude.pure newValue, ..}
instance Property "Suffix" HttpGatewayRouteHeaderMatchProperty where
  type PropertyType "Suffix" HttpGatewayRouteHeaderMatchProperty = Value Prelude.Text
  set newValue HttpGatewayRouteHeaderMatchProperty {..}
    = HttpGatewayRouteHeaderMatchProperty
        {suffix = Prelude.pure newValue, ..}