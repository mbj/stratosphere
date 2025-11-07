module Stratosphere.QuickSight.Analysis.GeospatialPolygonLayerProperty (
        module Exports, GeospatialPolygonLayerProperty(..),
        mkGeospatialPolygonLayerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GeospatialPolygonStyleProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialPolygonLayerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonlayer.html>
    GeospatialPolygonLayerProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpolygonlayer.html#cfn-quicksight-analysis-geospatialpolygonlayer-style>
                                    style :: GeospatialPolygonStyleProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPolygonLayerProperty ::
  GeospatialPolygonStyleProperty -> GeospatialPolygonLayerProperty
mkGeospatialPolygonLayerProperty style
  = GeospatialPolygonLayerProperty
      {haddock_workaround_ = (), style = style}
instance ToResourceProperties GeospatialPolygonLayerProperty where
  toResourceProperties GeospatialPolygonLayerProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GeospatialPolygonLayer",
         supportsTags = Prelude.False, properties = ["Style" JSON..= style]}
instance JSON.ToJSON GeospatialPolygonLayerProperty where
  toJSON GeospatialPolygonLayerProperty {..}
    = JSON.object ["Style" JSON..= style]
instance Property "Style" GeospatialPolygonLayerProperty where
  type PropertyType "Style" GeospatialPolygonLayerProperty = GeospatialPolygonStyleProperty
  set newValue GeospatialPolygonLayerProperty {..}
    = GeospatialPolygonLayerProperty {style = newValue, ..}