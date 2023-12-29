module Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteMatchProperty (
        module Exports, HttpGatewayRouteMatchProperty(..),
        mkHttpGatewayRouteMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteHostnameMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpGatewayRouteHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpPathMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.QueryParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpGatewayRouteMatchProperty
  = HttpGatewayRouteMatchProperty {headers :: (Prelude.Maybe [HttpGatewayRouteHeaderProperty]),
                                   hostname :: (Prelude.Maybe GatewayRouteHostnameMatchProperty),
                                   method :: (Prelude.Maybe (Value Prelude.Text)),
                                   path :: (Prelude.Maybe HttpPathMatchProperty),
                                   port :: (Prelude.Maybe (Value Prelude.Integer)),
                                   prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                   queryParameters :: (Prelude.Maybe [QueryParameterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpGatewayRouteMatchProperty :: HttpGatewayRouteMatchProperty
mkHttpGatewayRouteMatchProperty
  = HttpGatewayRouteMatchProperty
      {headers = Prelude.Nothing, hostname = Prelude.Nothing,
       method = Prelude.Nothing, path = Prelude.Nothing,
       port = Prelude.Nothing, prefix = Prelude.Nothing,
       queryParameters = Prelude.Nothing}
instance ToResourceProperties HttpGatewayRouteMatchProperty where
  toResourceProperties HttpGatewayRouteMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.HttpGatewayRouteMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Headers" Prelude.<$> headers,
                            (JSON..=) "Hostname" Prelude.<$> hostname,
                            (JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "QueryParameters" Prelude.<$> queryParameters])}
instance JSON.ToJSON HttpGatewayRouteMatchProperty where
  toJSON HttpGatewayRouteMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Headers" Prelude.<$> headers,
               (JSON..=) "Hostname" Prelude.<$> hostname,
               (JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "QueryParameters" Prelude.<$> queryParameters]))
instance Property "Headers" HttpGatewayRouteMatchProperty where
  type PropertyType "Headers" HttpGatewayRouteMatchProperty = [HttpGatewayRouteHeaderProperty]
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty
        {headers = Prelude.pure newValue, ..}
instance Property "Hostname" HttpGatewayRouteMatchProperty where
  type PropertyType "Hostname" HttpGatewayRouteMatchProperty = GatewayRouteHostnameMatchProperty
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty
        {hostname = Prelude.pure newValue, ..}
instance Property "Method" HttpGatewayRouteMatchProperty where
  type PropertyType "Method" HttpGatewayRouteMatchProperty = Value Prelude.Text
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty
        {method = Prelude.pure newValue, ..}
instance Property "Path" HttpGatewayRouteMatchProperty where
  type PropertyType "Path" HttpGatewayRouteMatchProperty = HttpPathMatchProperty
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty {path = Prelude.pure newValue, ..}
instance Property "Port" HttpGatewayRouteMatchProperty where
  type PropertyType "Port" HttpGatewayRouteMatchProperty = Value Prelude.Integer
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty {port = Prelude.pure newValue, ..}
instance Property "Prefix" HttpGatewayRouteMatchProperty where
  type PropertyType "Prefix" HttpGatewayRouteMatchProperty = Value Prelude.Text
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "QueryParameters" HttpGatewayRouteMatchProperty where
  type PropertyType "QueryParameters" HttpGatewayRouteMatchProperty = [QueryParameterProperty]
  set newValue HttpGatewayRouteMatchProperty {..}
    = HttpGatewayRouteMatchProperty
        {queryParameters = Prelude.pure newValue, ..}