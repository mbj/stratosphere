module Stratosphere.AppMesh.Route.HttpRouteMatchProperty (
        module Exports, HttpRouteMatchProperty(..),
        mkHttpRouteMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpPathMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpRouteHeaderProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.Route.QueryParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpRouteMatchProperty
  = HttpRouteMatchProperty {headers :: (Prelude.Maybe [HttpRouteHeaderProperty]),
                            method :: (Prelude.Maybe (Value Prelude.Text)),
                            path :: (Prelude.Maybe HttpPathMatchProperty),
                            port :: (Prelude.Maybe (Value Prelude.Integer)),
                            prefix :: (Prelude.Maybe (Value Prelude.Text)),
                            queryParameters :: (Prelude.Maybe [QueryParameterProperty]),
                            scheme :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpRouteMatchProperty :: HttpRouteMatchProperty
mkHttpRouteMatchProperty
  = HttpRouteMatchProperty
      {headers = Prelude.Nothing, method = Prelude.Nothing,
       path = Prelude.Nothing, port = Prelude.Nothing,
       prefix = Prelude.Nothing, queryParameters = Prelude.Nothing,
       scheme = Prelude.Nothing}
instance ToResourceProperties HttpRouteMatchProperty where
  toResourceProperties HttpRouteMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpRouteMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Headers" Prelude.<$> headers,
                            (JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "QueryParameters" Prelude.<$> queryParameters,
                            (JSON..=) "Scheme" Prelude.<$> scheme])}
instance JSON.ToJSON HttpRouteMatchProperty where
  toJSON HttpRouteMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Headers" Prelude.<$> headers,
               (JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "QueryParameters" Prelude.<$> queryParameters,
               (JSON..=) "Scheme" Prelude.<$> scheme]))
instance Property "Headers" HttpRouteMatchProperty where
  type PropertyType "Headers" HttpRouteMatchProperty = [HttpRouteHeaderProperty]
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty {headers = Prelude.pure newValue, ..}
instance Property "Method" HttpRouteMatchProperty where
  type PropertyType "Method" HttpRouteMatchProperty = Value Prelude.Text
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty {method = Prelude.pure newValue, ..}
instance Property "Path" HttpRouteMatchProperty where
  type PropertyType "Path" HttpRouteMatchProperty = HttpPathMatchProperty
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty {path = Prelude.pure newValue, ..}
instance Property "Port" HttpRouteMatchProperty where
  type PropertyType "Port" HttpRouteMatchProperty = Value Prelude.Integer
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty {port = Prelude.pure newValue, ..}
instance Property "Prefix" HttpRouteMatchProperty where
  type PropertyType "Prefix" HttpRouteMatchProperty = Value Prelude.Text
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty {prefix = Prelude.pure newValue, ..}
instance Property "QueryParameters" HttpRouteMatchProperty where
  type PropertyType "QueryParameters" HttpRouteMatchProperty = [QueryParameterProperty]
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty
        {queryParameters = Prelude.pure newValue, ..}
instance Property "Scheme" HttpRouteMatchProperty where
  type PropertyType "Scheme" HttpRouteMatchProperty = Value Prelude.Text
  set newValue HttpRouteMatchProperty {..}
    = HttpRouteMatchProperty {scheme = Prelude.pure newValue, ..}