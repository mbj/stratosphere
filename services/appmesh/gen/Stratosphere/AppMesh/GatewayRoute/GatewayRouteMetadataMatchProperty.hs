module Stratosphere.AppMesh.GatewayRoute.GatewayRouteMetadataMatchProperty (
        module Exports, GatewayRouteMetadataMatchProperty(..),
        mkGatewayRouteMetadataMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteRangeMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteMetadataMatchProperty
  = GatewayRouteMetadataMatchProperty {exact :: (Prelude.Maybe (Value Prelude.Text)),
                                       prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                       range :: (Prelude.Maybe GatewayRouteRangeMatchProperty),
                                       regex :: (Prelude.Maybe (Value Prelude.Text)),
                                       suffix :: (Prelude.Maybe (Value Prelude.Text))}
mkGatewayRouteMetadataMatchProperty ::
  GatewayRouteMetadataMatchProperty
mkGatewayRouteMetadataMatchProperty
  = GatewayRouteMetadataMatchProperty
      {exact = Prelude.Nothing, prefix = Prelude.Nothing,
       range = Prelude.Nothing, regex = Prelude.Nothing,
       suffix = Prelude.Nothing}
instance ToResourceProperties GatewayRouteMetadataMatchProperty where
  toResourceProperties GatewayRouteMetadataMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GatewayRouteMetadataMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Regex" Prelude.<$> regex,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON GatewayRouteMetadataMatchProperty where
  toJSON GatewayRouteMetadataMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Regex" Prelude.<$> regex,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Exact" GatewayRouteMetadataMatchProperty where
  type PropertyType "Exact" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {exact = Prelude.pure newValue, ..}
instance Property "Prefix" GatewayRouteMetadataMatchProperty where
  type PropertyType "Prefix" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "Range" GatewayRouteMetadataMatchProperty where
  type PropertyType "Range" GatewayRouteMetadataMatchProperty = GatewayRouteRangeMatchProperty
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {range = Prelude.pure newValue, ..}
instance Property "Regex" GatewayRouteMetadataMatchProperty where
  type PropertyType "Regex" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {regex = Prelude.pure newValue, ..}
instance Property "Suffix" GatewayRouteMetadataMatchProperty where
  type PropertyType "Suffix" GatewayRouteMetadataMatchProperty = Value Prelude.Text
  set newValue GatewayRouteMetadataMatchProperty {..}
    = GatewayRouteMetadataMatchProperty
        {suffix = Prelude.pure newValue, ..}