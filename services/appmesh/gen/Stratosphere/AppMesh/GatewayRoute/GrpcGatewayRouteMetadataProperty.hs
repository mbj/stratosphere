module Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteMetadataProperty (
        module Exports, GrpcGatewayRouteMetadataProperty(..),
        mkGrpcGatewayRouteMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteMetadataMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcGatewayRouteMetadataProperty
  = GrpcGatewayRouteMetadataProperty {invert :: (Prelude.Maybe (Value Prelude.Bool)),
                                      match :: (Prelude.Maybe GatewayRouteMetadataMatchProperty),
                                      name :: (Value Prelude.Text)}
mkGrpcGatewayRouteMetadataProperty ::
  Value Prelude.Text -> GrpcGatewayRouteMetadataProperty
mkGrpcGatewayRouteMetadataProperty name
  = GrpcGatewayRouteMetadataProperty
      {name = name, invert = Prelude.Nothing, match = Prelude.Nothing}
instance ToResourceProperties GrpcGatewayRouteMetadataProperty where
  toResourceProperties GrpcGatewayRouteMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRouteMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Invert" Prelude.<$> invert,
                               (JSON..=) "Match" Prelude.<$> match]))}
instance JSON.ToJSON GrpcGatewayRouteMetadataProperty where
  toJSON GrpcGatewayRouteMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Invert" Prelude.<$> invert,
                  (JSON..=) "Match" Prelude.<$> match])))
instance Property "Invert" GrpcGatewayRouteMetadataProperty where
  type PropertyType "Invert" GrpcGatewayRouteMetadataProperty = Value Prelude.Bool
  set newValue GrpcGatewayRouteMetadataProperty {..}
    = GrpcGatewayRouteMetadataProperty
        {invert = Prelude.pure newValue, ..}
instance Property "Match" GrpcGatewayRouteMetadataProperty where
  type PropertyType "Match" GrpcGatewayRouteMetadataProperty = GatewayRouteMetadataMatchProperty
  set newValue GrpcGatewayRouteMetadataProperty {..}
    = GrpcGatewayRouteMetadataProperty
        {match = Prelude.pure newValue, ..}
instance Property "Name" GrpcGatewayRouteMetadataProperty where
  type PropertyType "Name" GrpcGatewayRouteMetadataProperty = Value Prelude.Text
  set newValue GrpcGatewayRouteMetadataProperty {..}
    = GrpcGatewayRouteMetadataProperty {name = newValue, ..}