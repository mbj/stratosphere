module Stratosphere.EMR.Cluster.ScalingTriggerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingTriggerProperty :: Prelude.Type
instance ToResourceProperties ScalingTriggerProperty
instance Prelude.Eq ScalingTriggerProperty
instance Prelude.Show ScalingTriggerProperty
instance JSON.ToJSON ScalingTriggerProperty