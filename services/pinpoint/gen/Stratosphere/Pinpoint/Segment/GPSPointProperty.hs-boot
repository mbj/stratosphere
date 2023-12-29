module Stratosphere.Pinpoint.Segment.GPSPointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GPSPointProperty :: Prelude.Type
instance ToResourceProperties GPSPointProperty
instance Prelude.Eq GPSPointProperty
instance Prelude.Show GPSPointProperty
instance JSON.ToJSON GPSPointProperty