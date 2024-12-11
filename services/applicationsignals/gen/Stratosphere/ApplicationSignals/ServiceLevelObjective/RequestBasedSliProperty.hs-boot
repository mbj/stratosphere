module Stratosphere.ApplicationSignals.ServiceLevelObjective.RequestBasedSliProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RequestBasedSliProperty :: Prelude.Type
instance ToResourceProperties RequestBasedSliProperty
instance Prelude.Eq RequestBasedSliProperty
instance Prelude.Show RequestBasedSliProperty
instance JSON.ToJSON RequestBasedSliProperty