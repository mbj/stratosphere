module Stratosphere.DLM.LifecyclePolicy.RetainRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetainRuleProperty :: Prelude.Type
instance ToResourceProperties RetainRuleProperty
instance Prelude.Eq RetainRuleProperty
instance Prelude.Show RetainRuleProperty
instance JSON.ToJSON RetainRuleProperty