module Stratosphere.DLM.LifecyclePolicy.RetainRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetainRuleProperty :: Prelude.Type
instance ToResourceProperties RetainRuleProperty
instance JSON.ToJSON RetainRuleProperty