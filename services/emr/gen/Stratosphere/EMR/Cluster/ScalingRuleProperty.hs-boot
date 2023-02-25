module Stratosphere.EMR.Cluster.ScalingRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScalingRuleProperty :: Prelude.Type
instance ToResourceProperties ScalingRuleProperty
instance JSON.ToJSON ScalingRuleProperty