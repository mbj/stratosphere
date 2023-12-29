module Stratosphere.QuickSight.Template.GeospatialPointStyleOptionsProperty (
        module Exports, GeospatialPointStyleOptionsProperty(..),
        mkGeospatialPointStyleOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ClusterMarkerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeospatialPointStyleOptionsProperty
  = GeospatialPointStyleOptionsProperty {clusterMarkerConfiguration :: (Prelude.Maybe ClusterMarkerConfigurationProperty),
                                         selectedPointStyle :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeospatialPointStyleOptionsProperty ::
  GeospatialPointStyleOptionsProperty
mkGeospatialPointStyleOptionsProperty
  = GeospatialPointStyleOptionsProperty
      {clusterMarkerConfiguration = Prelude.Nothing,
       selectedPointStyle = Prelude.Nothing}
instance ToResourceProperties GeospatialPointStyleOptionsProperty where
  toResourceProperties GeospatialPointStyleOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.GeospatialPointStyleOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterMarkerConfiguration"
                              Prelude.<$> clusterMarkerConfiguration,
                            (JSON..=) "SelectedPointStyle" Prelude.<$> selectedPointStyle])}
instance JSON.ToJSON GeospatialPointStyleOptionsProperty where
  toJSON GeospatialPointStyleOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterMarkerConfiguration"
                 Prelude.<$> clusterMarkerConfiguration,
               (JSON..=) "SelectedPointStyle" Prelude.<$> selectedPointStyle]))
instance Property "ClusterMarkerConfiguration" GeospatialPointStyleOptionsProperty where
  type PropertyType "ClusterMarkerConfiguration" GeospatialPointStyleOptionsProperty = ClusterMarkerConfigurationProperty
  set newValue GeospatialPointStyleOptionsProperty {..}
    = GeospatialPointStyleOptionsProperty
        {clusterMarkerConfiguration = Prelude.pure newValue, ..}
instance Property "SelectedPointStyle" GeospatialPointStyleOptionsProperty where
  type PropertyType "SelectedPointStyle" GeospatialPointStyleOptionsProperty = Value Prelude.Text
  set newValue GeospatialPointStyleOptionsProperty {..}
    = GeospatialPointStyleOptionsProperty
        {selectedPointStyle = Prelude.pure newValue, ..}