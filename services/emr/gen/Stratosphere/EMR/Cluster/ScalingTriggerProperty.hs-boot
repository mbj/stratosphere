module Stratosphere.EMR.Cluster.ScalingTriggerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingTriggerProperty :: Prelude.Type
instance ToResourceProperties ScalingTriggerProperty
instance JSON.ToJSON ScalingTriggerProperty