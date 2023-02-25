module Stratosphere.Pinpoint.Segment.SegmentGroupsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SegmentGroupsProperty :: Prelude.Type
instance ToResourceProperties SegmentGroupsProperty
instance JSON.ToJSON SegmentGroupsProperty