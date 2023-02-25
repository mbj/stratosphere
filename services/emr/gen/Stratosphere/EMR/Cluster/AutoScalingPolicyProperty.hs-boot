module Stratosphere.EMR.Cluster.AutoScalingPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AutoScalingPolicyProperty :: Prelude.Type
instance ToResourceProperties AutoScalingPolicyProperty
instance JSON.ToJSON AutoScalingPolicyProperty