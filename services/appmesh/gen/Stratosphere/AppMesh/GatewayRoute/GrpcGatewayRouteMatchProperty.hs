module Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteMatchProperty (
        module Exports, GrpcGatewayRouteMatchProperty(..),
        mkGrpcGatewayRouteMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GatewayRouteHostnameMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.AppMesh.GatewayRoute.GrpcGatewayRouteMetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcGatewayRouteMatchProperty
  = GrpcGatewayRouteMatchProperty {hostname :: (Prelude.Maybe GatewayRouteHostnameMatchProperty),
                                   metadata :: (Prelude.Maybe [GrpcGatewayRouteMetadataProperty]),
                                   port :: (Prelude.Maybe (Value Prelude.Integer)),
                                   serviceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcGatewayRouteMatchProperty :: GrpcGatewayRouteMatchProperty
mkGrpcGatewayRouteMatchProperty
  = GrpcGatewayRouteMatchProperty
      {hostname = Prelude.Nothing, metadata = Prelude.Nothing,
       port = Prelude.Nothing, serviceName = Prelude.Nothing}
instance ToResourceProperties GrpcGatewayRouteMatchProperty where
  toResourceProperties GrpcGatewayRouteMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::GatewayRoute.GrpcGatewayRouteMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Hostname" Prelude.<$> hostname,
                            (JSON..=) "Metadata" Prelude.<$> metadata,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName])}
instance JSON.ToJSON GrpcGatewayRouteMatchProperty where
  toJSON GrpcGatewayRouteMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Hostname" Prelude.<$> hostname,
               (JSON..=) "Metadata" Prelude.<$> metadata,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "ServiceName" Prelude.<$> serviceName]))
instance Property "Hostname" GrpcGatewayRouteMatchProperty where
  type PropertyType "Hostname" GrpcGatewayRouteMatchProperty = GatewayRouteHostnameMatchProperty
  set newValue GrpcGatewayRouteMatchProperty {..}
    = GrpcGatewayRouteMatchProperty
        {hostname = Prelude.pure newValue, ..}
instance Property "Metadata" GrpcGatewayRouteMatchProperty where
  type PropertyType "Metadata" GrpcGatewayRouteMatchProperty = [GrpcGatewayRouteMetadataProperty]
  set newValue GrpcGatewayRouteMatchProperty {..}
    = GrpcGatewayRouteMatchProperty
        {metadata = Prelude.pure newValue, ..}
instance Property "Port" GrpcGatewayRouteMatchProperty where
  type PropertyType "Port" GrpcGatewayRouteMatchProperty = Value Prelude.Integer
  set newValue GrpcGatewayRouteMatchProperty {..}
    = GrpcGatewayRouteMatchProperty {port = Prelude.pure newValue, ..}
instance Property "ServiceName" GrpcGatewayRouteMatchProperty where
  type PropertyType "ServiceName" GrpcGatewayRouteMatchProperty = Value Prelude.Text
  set newValue GrpcGatewayRouteMatchProperty {..}
    = GrpcGatewayRouteMatchProperty
        {serviceName = Prelude.pure newValue, ..}