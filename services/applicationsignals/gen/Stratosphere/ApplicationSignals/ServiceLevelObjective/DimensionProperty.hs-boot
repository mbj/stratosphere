module Stratosphere.ApplicationSignals.ServiceLevelObjective.DimensionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DimensionProperty :: Prelude.Type
instance ToResourceProperties DimensionProperty
instance Prelude.Eq DimensionProperty
instance Prelude.Show DimensionProperty
instance JSON.ToJSON DimensionProperty