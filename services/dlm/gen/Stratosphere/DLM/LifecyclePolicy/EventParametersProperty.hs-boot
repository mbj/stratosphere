module Stratosphere.DLM.LifecyclePolicy.EventParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventParametersProperty :: Prelude.Type
instance ToResourceProperties EventParametersProperty
instance JSON.ToJSON EventParametersProperty