module Stratosphere.DLM.LifecyclePolicy.DeprecateRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DeprecateRuleProperty :: Prelude.Type
instance ToResourceProperties DeprecateRuleProperty
instance JSON.ToJSON DeprecateRuleProperty