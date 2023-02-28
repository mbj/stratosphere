module Stratosphere.AppMesh.GatewayRoute.QueryParameterProperty (
        module Exports, QueryParameterProperty(..),
        mkQueryParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.HttpQueryParameterMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryParameterProperty
  = QueryParameterProperty {match :: (Prelude.Maybe HttpQueryParameterMatchProperty),
                            name :: (Value Prelude.Text)}
mkQueryParameterProperty ::
  Value Prelude.Text -> QueryParameterProperty
mkQueryParameterProperty name
  = QueryParameterProperty {name = name, match = Prelude.Nothing}
instance ToResourceProperties QueryParameterProperty where
  toResourceProperties QueryParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.QueryParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Match" Prelude.<$> match]))}
instance JSON.ToJSON QueryParameterProperty where
  toJSON QueryParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Match" Prelude.<$> match])))
instance Property "Match" QueryParameterProperty where
  type PropertyType "Match" QueryParameterProperty = HttpQueryParameterMatchProperty
  set newValue QueryParameterProperty {..}
    = QueryParameterProperty {match = Prelude.pure newValue, ..}
instance Property "Name" QueryParameterProperty where
  type PropertyType "Name" QueryParameterProperty = Value Prelude.Text
  set newValue QueryParameterProperty {..}
    = QueryParameterProperty {name = newValue, ..}