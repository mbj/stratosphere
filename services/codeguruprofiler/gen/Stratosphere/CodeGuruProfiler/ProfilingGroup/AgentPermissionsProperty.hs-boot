module Stratosphere.CodeGuruProfiler.ProfilingGroup.AgentPermissionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AgentPermissionsProperty :: Prelude.Type
instance ToResourceProperties AgentPermissionsProperty
instance JSON.ToJSON AgentPermissionsProperty