module Stratosphere.DLM.LifecyclePolicy.EventSourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EventSourceProperty :: Prelude.Type
instance ToResourceProperties EventSourceProperty
instance JSON.ToJSON EventSourceProperty