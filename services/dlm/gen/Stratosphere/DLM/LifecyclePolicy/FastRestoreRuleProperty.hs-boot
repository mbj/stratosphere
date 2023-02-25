module Stratosphere.DLM.LifecyclePolicy.FastRestoreRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FastRestoreRuleProperty :: Prelude.Type
instance ToResourceProperties FastRestoreRuleProperty
instance JSON.ToJSON FastRestoreRuleProperty