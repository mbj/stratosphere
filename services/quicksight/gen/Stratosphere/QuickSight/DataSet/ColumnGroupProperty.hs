module Stratosphere.QuickSight.DataSet.ColumnGroupProperty (
        module Exports, ColumnGroupProperty(..), mkColumnGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.GeoSpatialColumnGroupProperty as Exports
import Stratosphere.ResourceProperties
data ColumnGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-columngroup.html>
    ColumnGroupProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-columngroup.html#cfn-quicksight-dataset-columngroup-geospatialcolumngroup>
                         geoSpatialColumnGroup :: (Prelude.Maybe GeoSpatialColumnGroupProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnGroupProperty :: ColumnGroupProperty
mkColumnGroupProperty
  = ColumnGroupProperty
      {haddock_workaround_ = (), geoSpatialColumnGroup = Prelude.Nothing}
instance ToResourceProperties ColumnGroupProperty where
  toResourceProperties ColumnGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ColumnGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GeoSpatialColumnGroup"
                              Prelude.<$> geoSpatialColumnGroup])}
instance JSON.ToJSON ColumnGroupProperty where
  toJSON ColumnGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GeoSpatialColumnGroup"
                 Prelude.<$> geoSpatialColumnGroup]))
instance Property "GeoSpatialColumnGroup" ColumnGroupProperty where
  type PropertyType "GeoSpatialColumnGroup" ColumnGroupProperty = GeoSpatialColumnGroupProperty
  set newValue ColumnGroupProperty {..}
    = ColumnGroupProperty
        {geoSpatialColumnGroup = Prelude.pure newValue, ..}