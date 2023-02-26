module Stratosphere.Pinpoint.Segment.CoordinatesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CoordinatesProperty :: Prelude.Type
instance ToResourceProperties CoordinatesProperty
instance JSON.ToJSON CoordinatesProperty