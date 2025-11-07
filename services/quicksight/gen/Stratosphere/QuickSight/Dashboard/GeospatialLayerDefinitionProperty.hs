module Stratosphere.QuickSight.Dashboard.GeospatialLayerDefinitionProperty (
        module Exports, GeospatialLayerDefinitionProperty(..),
        mkGeospatialLayerDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialLineLayerProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialPointLayerProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialPolygonLayerProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialLayerDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html>
    GeospatialLayerDefinitionProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html#cfn-quicksight-dashboard-geospatiallayerdefinition-linelayer>
                                       lineLayer :: (Prelude.Maybe GeospatialLineLayerProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html#cfn-quicksight-dashboard-geospatiallayerdefinition-pointlayer>
                                       pointLayer :: (Prelude.Maybe GeospatialPointLayerProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatiallayerdefinition.html#cfn-quicksight-dashboard-geospatiallayerdefinition-polygonlayer>
                                       polygonLayer :: (Prelude.Maybe GeospatialPolygonLayerProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialLayerDefinitionProperty ::
  GeospatialLayerDefinitionProperty
mkGeospatialLayerDefinitionProperty
  = GeospatialLayerDefinitionProperty
      {haddock_workaround_ = (), lineLayer = Prelude.Nothing,
       pointLayer = Prelude.Nothing, polygonLayer = Prelude.Nothing}
instance ToResourceProperties GeospatialLayerDefinitionProperty where
  toResourceProperties GeospatialLayerDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialLayerDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineLayer" Prelude.<$> lineLayer,
                            (JSON..=) "PointLayer" Prelude.<$> pointLayer,
                            (JSON..=) "PolygonLayer" Prelude.<$> polygonLayer])}
instance JSON.ToJSON GeospatialLayerDefinitionProperty where
  toJSON GeospatialLayerDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineLayer" Prelude.<$> lineLayer,
               (JSON..=) "PointLayer" Prelude.<$> pointLayer,
               (JSON..=) "PolygonLayer" Prelude.<$> polygonLayer]))
instance Property "LineLayer" GeospatialLayerDefinitionProperty where
  type PropertyType "LineLayer" GeospatialLayerDefinitionProperty = GeospatialLineLayerProperty
  set newValue GeospatialLayerDefinitionProperty {..}
    = GeospatialLayerDefinitionProperty
        {lineLayer = Prelude.pure newValue, ..}
instance Property "PointLayer" GeospatialLayerDefinitionProperty where
  type PropertyType "PointLayer" GeospatialLayerDefinitionProperty = GeospatialPointLayerProperty
  set newValue GeospatialLayerDefinitionProperty {..}
    = GeospatialLayerDefinitionProperty
        {pointLayer = Prelude.pure newValue, ..}
instance Property "PolygonLayer" GeospatialLayerDefinitionProperty where
  type PropertyType "PolygonLayer" GeospatialLayerDefinitionProperty = GeospatialPolygonLayerProperty
  set newValue GeospatialLayerDefinitionProperty {..}
    = GeospatialLayerDefinitionProperty
        {polygonLayer = Prelude.pure newValue, ..}