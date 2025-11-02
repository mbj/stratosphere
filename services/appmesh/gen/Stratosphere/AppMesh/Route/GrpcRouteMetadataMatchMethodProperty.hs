module Stratosphere.AppMesh.Route.GrpcRouteMetadataMatchMethodProperty (
        module Exports, GrpcRouteMetadataMatchMethodProperty(..),
        mkGrpcRouteMetadataMatchMethodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.MatchRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GrpcRouteMetadataMatchMethodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html>
    GrpcRouteMetadataMatchMethodProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-exact>
                                          exact :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-prefix>
                                          prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-range>
                                          range :: (Prelude.Maybe MatchRangeProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-regex>
                                          regex :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroutemetadatamatchmethod.html#cfn-appmesh-route-grpcroutemetadatamatchmethod-suffix>
                                          suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcRouteMetadataMatchMethodProperty ::
  GrpcRouteMetadataMatchMethodProperty
mkGrpcRouteMetadataMatchMethodProperty
  = GrpcRouteMetadataMatchMethodProperty
      {haddock_workaround_ = (), exact = Prelude.Nothing,
       prefix = Prelude.Nothing, range = Prelude.Nothing,
       regex = Prelude.Nothing, suffix = Prelude.Nothing}
instance ToResourceProperties GrpcRouteMetadataMatchMethodProperty where
  toResourceProperties GrpcRouteMetadataMatchMethodProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.GrpcRouteMetadataMatchMethod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Prefix" Prelude.<$> prefix,
                            (JSON..=) "Range" Prelude.<$> range,
                            (JSON..=) "Regex" Prelude.<$> regex,
                            (JSON..=) "Suffix" Prelude.<$> suffix])}
instance JSON.ToJSON GrpcRouteMetadataMatchMethodProperty where
  toJSON GrpcRouteMetadataMatchMethodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Prefix" Prelude.<$> prefix,
               (JSON..=) "Range" Prelude.<$> range,
               (JSON..=) "Regex" Prelude.<$> regex,
               (JSON..=) "Suffix" Prelude.<$> suffix]))
instance Property "Exact" GrpcRouteMetadataMatchMethodProperty where
  type PropertyType "Exact" GrpcRouteMetadataMatchMethodProperty = Value Prelude.Text
  set newValue GrpcRouteMetadataMatchMethodProperty {..}
    = GrpcRouteMetadataMatchMethodProperty
        {exact = Prelude.pure newValue, ..}
instance Property "Prefix" GrpcRouteMetadataMatchMethodProperty where
  type PropertyType "Prefix" GrpcRouteMetadataMatchMethodProperty = Value Prelude.Text
  set newValue GrpcRouteMetadataMatchMethodProperty {..}
    = GrpcRouteMetadataMatchMethodProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "Range" GrpcRouteMetadataMatchMethodProperty where
  type PropertyType "Range" GrpcRouteMetadataMatchMethodProperty = MatchRangeProperty
  set newValue GrpcRouteMetadataMatchMethodProperty {..}
    = GrpcRouteMetadataMatchMethodProperty
        {range = Prelude.pure newValue, ..}
instance Property "Regex" GrpcRouteMetadataMatchMethodProperty where
  type PropertyType "Regex" GrpcRouteMetadataMatchMethodProperty = Value Prelude.Text
  set newValue GrpcRouteMetadataMatchMethodProperty {..}
    = GrpcRouteMetadataMatchMethodProperty
        {regex = Prelude.pure newValue, ..}
instance Property "Suffix" GrpcRouteMetadataMatchMethodProperty where
  type PropertyType "Suffix" GrpcRouteMetadataMatchMethodProperty = Value Prelude.Text
  set newValue GrpcRouteMetadataMatchMethodProperty {..}
    = GrpcRouteMetadataMatchMethodProperty
        {suffix = Prelude.pure newValue, ..}