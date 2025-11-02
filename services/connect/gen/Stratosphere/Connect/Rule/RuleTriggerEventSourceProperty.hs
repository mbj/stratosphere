module Stratosphere.Connect.Rule.RuleTriggerEventSourceProperty (
        RuleTriggerEventSourceProperty(..),
        mkRuleTriggerEventSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleTriggerEventSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-ruletriggereventsource.html>
    RuleTriggerEventSourceProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-ruletriggereventsource.html#cfn-connect-rule-ruletriggereventsource-eventsourcename>
                                    eventSourceName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-ruletriggereventsource.html#cfn-connect-rule-ruletriggereventsource-integrationassociationarn>
                                    integrationAssociationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleTriggerEventSourceProperty ::
  Value Prelude.Text -> RuleTriggerEventSourceProperty
mkRuleTriggerEventSourceProperty eventSourceName
  = RuleTriggerEventSourceProperty
      {haddock_workaround_ = (), eventSourceName = eventSourceName,
       integrationAssociationArn = Prelude.Nothing}
instance ToResourceProperties RuleTriggerEventSourceProperty where
  toResourceProperties RuleTriggerEventSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.RuleTriggerEventSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventSourceName" JSON..= eventSourceName]
                           (Prelude.catMaybes
                              [(JSON..=) "IntegrationAssociationArn"
                                 Prelude.<$> integrationAssociationArn]))}
instance JSON.ToJSON RuleTriggerEventSourceProperty where
  toJSON RuleTriggerEventSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventSourceName" JSON..= eventSourceName]
              (Prelude.catMaybes
                 [(JSON..=) "IntegrationAssociationArn"
                    Prelude.<$> integrationAssociationArn])))
instance Property "EventSourceName" RuleTriggerEventSourceProperty where
  type PropertyType "EventSourceName" RuleTriggerEventSourceProperty = Value Prelude.Text
  set newValue RuleTriggerEventSourceProperty {..}
    = RuleTriggerEventSourceProperty {eventSourceName = newValue, ..}
instance Property "IntegrationAssociationArn" RuleTriggerEventSourceProperty where
  type PropertyType "IntegrationAssociationArn" RuleTriggerEventSourceProperty = Value Prelude.Text
  set newValue RuleTriggerEventSourceProperty {..}
    = RuleTriggerEventSourceProperty
        {integrationAssociationArn = Prelude.pure newValue, ..}