module Stratosphere.DLM.LifecyclePolicy.ArchiveRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ArchiveRuleProperty :: Prelude.Type
instance ToResourceProperties ArchiveRuleProperty
instance JSON.ToJSON ArchiveRuleProperty