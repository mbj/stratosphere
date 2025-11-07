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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-clustermarkerconfiguration.html>
    ClusterMarkerConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-clustermarkerconfiguration.html#cfn-quicksight-analysis-clustermarkerconfiguration-clustermarker>
                                        clusterMarker :: (Prelude.Maybe ClusterMarkerProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterMarkerConfigurationProperty ::
  ClusterMarkerConfigurationProperty
mkClusterMarkerConfigurationProperty
  = ClusterMarkerConfigurationProperty
      {haddock_workaround_ = (), clusterMarker = Prelude.Nothing}
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
  set newValue ClusterMarkerConfigurationProperty {..}
    = ClusterMarkerConfigurationProperty
        {clusterMarker = Prelude.pure newValue, ..}