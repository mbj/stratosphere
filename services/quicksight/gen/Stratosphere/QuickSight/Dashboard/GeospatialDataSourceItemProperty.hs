module Stratosphere.QuickSight.Dashboard.GeospatialDataSourceItemProperty (
        module Exports, GeospatialDataSourceItemProperty(..),
        mkGeospatialDataSourceItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.GeospatialStaticFileSourceProperty as Exports
import Stratosphere.ResourceProperties
data GeospatialDataSourceItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialdatasourceitem.html>
    GeospatialDataSourceItemProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-geospatialdatasourceitem.html#cfn-quicksight-dashboard-geospatialdatasourceitem-staticfiledatasource>
                                      staticFileDataSource :: (Prelude.Maybe GeospatialStaticFileSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialDataSourceItemProperty ::
  GeospatialDataSourceItemProperty
mkGeospatialDataSourceItemProperty
  = GeospatialDataSourceItemProperty
      {haddock_workaround_ = (), staticFileDataSource = Prelude.Nothing}
instance ToResourceProperties GeospatialDataSourceItemProperty where
  toResourceProperties GeospatialDataSourceItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.GeospatialDataSourceItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StaticFileDataSource"
                              Prelude.<$> staticFileDataSource])}
instance JSON.ToJSON GeospatialDataSourceItemProperty where
  toJSON GeospatialDataSourceItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StaticFileDataSource"
                 Prelude.<$> staticFileDataSource]))
instance Property "StaticFileDataSource" GeospatialDataSourceItemProperty where
  type PropertyType "StaticFileDataSource" GeospatialDataSourceItemProperty = GeospatialStaticFileSourceProperty
  set newValue GeospatialDataSourceItemProperty {..}
    = GeospatialDataSourceItemProperty
        {staticFileDataSource = Prelude.pure newValue, ..}