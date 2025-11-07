module Stratosphere.QuickSight.Dashboard.ClusterMarkerProperty (
        module Exports, ClusterMarkerProperty(..), mkClusterMarkerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SimpleClusterMarkerProperty as Exports
import Stratosphere.ResourceProperties
data ClusterMarkerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-clustermarker.html>
    ClusterMarkerProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-clustermarker.html#cfn-quicksight-dashboard-clustermarker-simpleclustermarker>
                           simpleClusterMarker :: (Prelude.Maybe SimpleClusterMarkerProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterMarkerProperty :: ClusterMarkerProperty
mkClusterMarkerProperty
  = ClusterMarkerProperty
      {haddock_workaround_ = (), simpleClusterMarker = Prelude.Nothing}
instance ToResourceProperties ClusterMarkerProperty where
  toResourceProperties ClusterMarkerProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ClusterMarker",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SimpleClusterMarker" Prelude.<$> simpleClusterMarker])}
instance JSON.ToJSON ClusterMarkerProperty where
  toJSON ClusterMarkerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SimpleClusterMarker" Prelude.<$> simpleClusterMarker]))
instance Property "SimpleClusterMarker" ClusterMarkerProperty where
  type PropertyType "SimpleClusterMarker" ClusterMarkerProperty = SimpleClusterMarkerProperty
  set newValue ClusterMarkerProperty {..}
    = ClusterMarkerProperty
        {simpleClusterMarker = Prelude.pure newValue, ..}