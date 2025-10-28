module Stratosphere.AppMesh.Route.GrpcRouteMatchProperty (
        module Exports, GrpcRouteMatchProperty(..),
        mkGrpcRouteMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcRouteMetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcRouteMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html>
    GrpcRouteMatchProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-metadata>
                            metadata :: (Prelude.Maybe [GrpcRouteMetadataProperty]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-methodname>
                            methodName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-port>
                            port :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutematch.html#cfn-appmesh-route-grpcroutematch-servicename>
                            serviceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcRouteMatchProperty :: GrpcRouteMatchProperty
mkGrpcRouteMatchProperty
  = GrpcRouteMatchProperty
      {haddock_workaround_ = (), metadata = Prelude.Nothing,
       methodName = Prelude.Nothing, port = Prelude.Nothing,
       serviceName = Prelude.Nothing}
instance ToResourceProperties GrpcRouteMatchProperty where
  toResourceProperties GrpcRouteMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcRouteMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Metadata" Prelude.<$> metadata,
                            (JSON..=) "MethodName" Prelude.<$> methodName,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName])}
instance JSON.ToJSON GrpcRouteMatchProperty where
  toJSON GrpcRouteMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Metadata" Prelude.<$> metadata,
               (JSON..=) "MethodName" Prelude.<$> methodName,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "ServiceName" Prelude.<$> serviceName]))
instance Property "Metadata" GrpcRouteMatchProperty where
  type PropertyType "Metadata" GrpcRouteMatchProperty = [GrpcRouteMetadataProperty]
  set newValue GrpcRouteMatchProperty {..}
    = GrpcRouteMatchProperty {metadata = Prelude.pure newValue, ..}
instance Property "MethodName" GrpcRouteMatchProperty where
  type PropertyType "MethodName" GrpcRouteMatchProperty = Value Prelude.Text
  set newValue GrpcRouteMatchProperty {..}
    = GrpcRouteMatchProperty {methodName = Prelude.pure newValue, ..}
instance Property "Port" GrpcRouteMatchProperty where
  type PropertyType "Port" GrpcRouteMatchProperty = Value Prelude.Integer
  set newValue GrpcRouteMatchProperty {..}
    = GrpcRouteMatchProperty {port = Prelude.pure newValue, ..}
instance Property "ServiceName" GrpcRouteMatchProperty where
  type PropertyType "ServiceName" GrpcRouteMatchProperty = Value Prelude.Text
  set newValue GrpcRouteMatchProperty {..}
    = GrpcRouteMatchProperty {serviceName = Prelude.pure newValue, ..}