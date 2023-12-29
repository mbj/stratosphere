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
  = GrpcRouteMetadataMatchMethodProperty {exact :: (Prelude.Maybe (Value Prelude.Text)),
                                          prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                          range :: (Prelude.Maybe MatchRangeProperty),
                                          regex :: (Prelude.Maybe (Value Prelude.Text)),
                                          suffix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGrpcRouteMetadataMatchMethodProperty ::
  GrpcRouteMetadataMatchMethodProperty
mkGrpcRouteMetadataMatchMethodProperty
  = GrpcRouteMetadataMatchMethodProperty
      {exact = Prelude.Nothing, prefix = Prelude.Nothing,
       range = Prelude.Nothing, regex = Prelude.Nothing,
       suffix = Prelude.Nothing}
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