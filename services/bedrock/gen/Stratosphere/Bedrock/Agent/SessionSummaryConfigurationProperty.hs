module Stratosphere.Bedrock.Agent.SessionSummaryConfigurationProperty (
        SessionSummaryConfigurationProperty(..),
        mkSessionSummaryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SessionSummaryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-sessionsummaryconfiguration.html>
    SessionSummaryConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-sessionsummaryconfiguration.html#cfn-bedrock-agent-sessionsummaryconfiguration-maxrecentsessions>
                                         maxRecentSessions :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSessionSummaryConfigurationProperty ::
  SessionSummaryConfigurationProperty
mkSessionSummaryConfigurationProperty
  = SessionSummaryConfigurationProperty
      {haddock_workaround_ = (), maxRecentSessions = Prelude.Nothing}
instance ToResourceProperties SessionSummaryConfigurationProperty where
  toResourceProperties SessionSummaryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.SessionSummaryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxRecentSessions" Prelude.<$> maxRecentSessions])}
instance JSON.ToJSON SessionSummaryConfigurationProperty where
  toJSON SessionSummaryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxRecentSessions" Prelude.<$> maxRecentSessions]))
instance Property "MaxRecentSessions" SessionSummaryConfigurationProperty where
  type PropertyType "MaxRecentSessions" SessionSummaryConfigurationProperty = Value Prelude.Double
  set newValue SessionSummaryConfigurationProperty {..}
    = SessionSummaryConfigurationProperty
        {maxRecentSessions = Prelude.pure newValue, ..}