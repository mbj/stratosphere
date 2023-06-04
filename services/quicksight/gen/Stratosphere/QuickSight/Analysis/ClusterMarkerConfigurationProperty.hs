module Stratosphere.QuickSight.Analysis.ClusterMarkerConfigurationProperty (
        module Exports, ClusterMarkerConfigurationProperty(..),
        mkClusterMarkerConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ClusterMarkerProperty as Exports
import Stratosphere.ResourceProperties
data ClusterMarkerConfigurationProperty
  = ClusterMarkerConfigurationProperty {clusterMarker :: (Prelude.Maybe ClusterMarkerProperty)}
mkClusterMarkerConfigurationProperty ::
  ClusterMarkerConfigurationProperty
mkClusterMarkerConfigurationProperty
  = ClusterMarkerConfigurationProperty
      {clusterMarker = Prelude.Nothing}
instance ToResourceProperties ClusterMarkerConfigurationProperty where
  toResourceProperties ClusterMarkerConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ClusterMarkerConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterMarker" Prelude.<$> clusterMarker])}
instance JSON.ToJSON ClusterMarkerConfigurationProperty where
  toJSON ClusterMarkerConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterMarker" Prelude.<$> clusterMarker]))
instance Property "ClusterMarker" ClusterMarkerConfigurationProperty where
  type PropertyType "ClusterMarker" ClusterMarkerConfigurationProperty = ClusterMarkerProperty
  set newValue ClusterMarkerConfigurationProperty {}
    = ClusterMarkerConfigurationProperty
        {clusterMarker = Prelude.pure newValue, ..}