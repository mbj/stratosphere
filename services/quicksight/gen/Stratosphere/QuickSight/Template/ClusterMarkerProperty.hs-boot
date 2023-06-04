module Stratosphere.QuickSight.Template.ClusterMarkerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ClusterMarkerProperty :: Prelude.Type
instance ToResourceProperties ClusterMarkerProperty
instance JSON.ToJSON ClusterMarkerProperty