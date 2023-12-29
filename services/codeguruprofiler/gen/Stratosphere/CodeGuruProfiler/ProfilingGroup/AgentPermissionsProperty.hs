module Stratosphere.CodeGuruProfiler.ProfilingGroup.AgentPermissionsProperty (
        AgentPermissionsProperty(..), mkAgentPermissionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentPermissionsProperty
  = AgentPermissionsProperty {principals :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentPermissionsProperty ::
  ValueList Prelude.Text -> AgentPermissionsProperty
mkAgentPermissionsProperty principals
  = AgentPermissionsProperty {principals = principals}
instance ToResourceProperties AgentPermissionsProperty where
  toResourceProperties AgentPermissionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeGuruProfiler::ProfilingGroup.AgentPermissions",
         supportsTags = Prelude.False,
         properties = ["Principals" JSON..= principals]}
instance JSON.ToJSON AgentPermissionsProperty where
  toJSON AgentPermissionsProperty {..}
    = JSON.object ["Principals" JSON..= principals]
instance Property "Principals" AgentPermissionsProperty where
  type PropertyType "Principals" AgentPermissionsProperty = ValueList Prelude.Text
  set newValue AgentPermissionsProperty {}
    = AgentPermissionsProperty {principals = newValue, ..}