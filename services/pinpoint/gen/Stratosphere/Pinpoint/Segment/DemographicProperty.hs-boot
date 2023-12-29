module Stratosphere.Pinpoint.Segment.DemographicProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DemographicProperty :: Prelude.Type
instance ToResourceProperties DemographicProperty
instance Prelude.Eq DemographicProperty
instance Prelude.Show DemographicProperty
instance JSON.ToJSON DemographicProperty