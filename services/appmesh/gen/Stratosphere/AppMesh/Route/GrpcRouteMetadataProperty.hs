module Stratosphere.AppMesh.Route.GrpcRouteMetadataProperty (
        module Exports, GrpcRouteMetadataProperty(..),
        mkGrpcRouteMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.GrpcRouteMetadataMatchMethodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcRouteMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html>
    GrpcRouteMetadataProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html#cfn-appmesh-route-grpcroutemetadata-invert>
                               invert :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html#cfn-appmesh-route-grpcroutemetadata-match>
                               match :: (Prelude.Maybe GrpcRouteMetadataMatchMethodProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadata.html#cfn-appmesh-route-grpcroutemetadata-name>
                               name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcRouteMetadataProperty ::
  Value Prelude.Text -> GrpcRouteMetadataProperty
mkGrpcRouteMetadataProperty name
  = GrpcRouteMetadataProperty
      {haddock_workaround_ = (), name = name, invert = Prelude.Nothing,
       match = Prelude.Nothing}
instance ToResourceProperties GrpcRouteMetadataProperty where
  toResourceProperties GrpcRouteMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcRouteMetadata",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Invert" Prelude.<$> invert,
                               (JSON..=) "Match" Prelude.<$> match]))}
instance JSON.ToJSON GrpcRouteMetadataProperty where
  toJSON GrpcRouteMetadataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Invert" Prelude.<$> invert,
                  (JSON..=) "Match" Prelude.<$> match])))
instance Property "Invert" GrpcRouteMetadataProperty where
  type PropertyType "Invert" GrpcRouteMetadataProperty = Value Prelude.Bool
  set newValue GrpcRouteMetadataProperty {..}
    = GrpcRouteMetadataProperty {invert = Prelude.pure newValue, ..}
instance Property "Match" GrpcRouteMetadataProperty where
  type PropertyType "Match" GrpcRouteMetadataProperty = GrpcRouteMetadataMatchMethodProperty
  set newValue GrpcRouteMetadataProperty {..}
    = GrpcRouteMetadataProperty {match = Prelude.pure newValue, ..}
instance Property "Name" GrpcRouteMetadataProperty where
  type PropertyType "Name" GrpcRouteMetadataProperty = Value Prelude.Text
  set newValue GrpcRouteMetadataProperty {..}
    = GrpcRouteMetadataProperty {name = newValue, ..}