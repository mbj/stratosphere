module Stratosphere.EMR.Cluster.ComputeLimitsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComputeLimitsProperty :: Prelude.Type
instance ToResourceProperties ComputeLimitsProperty
instance Prelude.Eq ComputeLimitsProperty
instance Prelude.Show ComputeLimitsProperty
instance JSON.ToJSON ComputeLimitsProperty