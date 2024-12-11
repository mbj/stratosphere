module Stratosphere.SES.MailManagerRuleSet.RelayActionProperty (
        RelayActionProperty(..), mkRelayActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelayActionProperty
  = RelayActionProperty {actionFailurePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                         mailFrom :: (Prelude.Maybe (Value Prelude.Text)),
                         relay :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelayActionProperty :: Value Prelude.Text -> RelayActionProperty
mkRelayActionProperty relay
  = RelayActionProperty
      {relay = relay, actionFailurePolicy = Prelude.Nothing,
       mailFrom = Prelude.Nothing}
instance ToResourceProperties RelayActionProperty where
  toResourceProperties RelayActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RelayAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Relay" JSON..= relay]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionFailurePolicy" Prelude.<$> actionFailurePolicy,
                               (JSON..=) "MailFrom" Prelude.<$> mailFrom]))}
instance JSON.ToJSON RelayActionProperty where
  toJSON RelayActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Relay" JSON..= relay]
              (Prelude.catMaybes
                 [(JSON..=) "ActionFailurePolicy" Prelude.<$> actionFailurePolicy,
                  (JSON..=) "MailFrom" Prelude.<$> mailFrom])))
instance Property "ActionFailurePolicy" RelayActionProperty where
  type PropertyType "ActionFailurePolicy" RelayActionProperty = Value Prelude.Text
  set newValue RelayActionProperty {..}
    = RelayActionProperty
        {actionFailurePolicy = Prelude.pure newValue, ..}
instance Property "MailFrom" RelayActionProperty where
  type PropertyType "MailFrom" RelayActionProperty = Value Prelude.Text
  set newValue RelayActionProperty {..}
    = RelayActionProperty {mailFrom = Prelude.pure newValue, ..}
instance Property "Relay" RelayActionProperty where
  type PropertyType "Relay" RelayActionProperty = Value Prelude.Text
  set newValue RelayActionProperty {..}
    = RelayActionProperty {relay = newValue, ..}