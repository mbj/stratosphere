module Stratosphere.DataSync.LocationNFS.OnPremConfigProperty (
        OnPremConfigProperty(..), mkOnPremConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnPremConfigProperty
  = OnPremConfigProperty {agentArns :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnPremConfigProperty ::
  ValueList Prelude.Text -> OnPremConfigProperty
mkOnPremConfigProperty agentArns
  = OnPremConfigProperty {agentArns = agentArns}
instance ToResourceProperties OnPremConfigProperty where
  toResourceProperties OnPremConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationNFS.OnPremConfig",
         supportsTags = Prelude.False,
         properties = ["AgentArns" JSON..= agentArns]}
instance JSON.ToJSON OnPremConfigProperty where
  toJSON OnPremConfigProperty {..}
    = JSON.object ["AgentArns" JSON..= agentArns]
instance Property "AgentArns" OnPremConfigProperty where
  type PropertyType "AgentArns" OnPremConfigProperty = ValueList Prelude.Text
  set newValue OnPremConfigProperty {}
    = OnPremConfigProperty {agentArns = newValue, ..}