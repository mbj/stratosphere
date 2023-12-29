module Stratosphere.Batch.SchedulingPolicy.FairsharePolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FairsharePolicyProperty :: Prelude.Type
instance ToResourceProperties FairsharePolicyProperty
instance Prelude.Eq FairsharePolicyProperty
instance Prelude.Show FairsharePolicyProperty
instance JSON.ToJSON FairsharePolicyProperty