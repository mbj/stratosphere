module Stratosphere.MediaLive.SignalMap (
        SignalMap(..), mkSignalMap
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SignalMap
  = SignalMap {cloudWatchAlarmTemplateGroupIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               discoveryEntryPointArn :: (Value Prelude.Text),
               eventBridgeRuleTemplateGroupIdentifiers :: (Prelude.Maybe (ValueList Prelude.Text)),
               forceRediscovery :: (Prelude.Maybe (Value Prelude.Bool)),
               name :: (Value Prelude.Text),
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSignalMap ::
  Value Prelude.Text -> Value Prelude.Text -> SignalMap
mkSignalMap discoveryEntryPointArn name
  = SignalMap
      {discoveryEntryPointArn = discoveryEntryPointArn, name = name,
       cloudWatchAlarmTemplateGroupIdentifiers = Prelude.Nothing,
       description = Prelude.Nothing,
       eventBridgeRuleTemplateGroupIdentifiers = Prelude.Nothing,
       forceRediscovery = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SignalMap where
  toResourceProperties SignalMap {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::SignalMap",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DiscoveryEntryPointArn" JSON..= discoveryEntryPointArn,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchAlarmTemplateGroupIdentifiers"
                                 Prelude.<$> cloudWatchAlarmTemplateGroupIdentifiers,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventBridgeRuleTemplateGroupIdentifiers"
                                 Prelude.<$> eventBridgeRuleTemplateGroupIdentifiers,
                               (JSON..=) "ForceRediscovery" Prelude.<$> forceRediscovery,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SignalMap where
  toJSON SignalMap {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DiscoveryEntryPointArn" JSON..= discoveryEntryPointArn,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchAlarmTemplateGroupIdentifiers"
                    Prelude.<$> cloudWatchAlarmTemplateGroupIdentifiers,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventBridgeRuleTemplateGroupIdentifiers"
                    Prelude.<$> eventBridgeRuleTemplateGroupIdentifiers,
                  (JSON..=) "ForceRediscovery" Prelude.<$> forceRediscovery,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CloudWatchAlarmTemplateGroupIdentifiers" SignalMap where
  type PropertyType "CloudWatchAlarmTemplateGroupIdentifiers" SignalMap = ValueList Prelude.Text
  set newValue SignalMap {..}
    = SignalMap
        {cloudWatchAlarmTemplateGroupIdentifiers = Prelude.pure newValue,
         ..}
instance Property "Description" SignalMap where
  type PropertyType "Description" SignalMap = Value Prelude.Text
  set newValue SignalMap {..}
    = SignalMap {description = Prelude.pure newValue, ..}
instance Property "DiscoveryEntryPointArn" SignalMap where
  type PropertyType "DiscoveryEntryPointArn" SignalMap = Value Prelude.Text
  set newValue SignalMap {..}
    = SignalMap {discoveryEntryPointArn = newValue, ..}
instance Property "EventBridgeRuleTemplateGroupIdentifiers" SignalMap where
  type PropertyType "EventBridgeRuleTemplateGroupIdentifiers" SignalMap = ValueList Prelude.Text
  set newValue SignalMap {..}
    = SignalMap
        {eventBridgeRuleTemplateGroupIdentifiers = Prelude.pure newValue,
         ..}
instance Property "ForceRediscovery" SignalMap where
  type PropertyType "ForceRediscovery" SignalMap = Value Prelude.Bool
  set newValue SignalMap {..}
    = SignalMap {forceRediscovery = Prelude.pure newValue, ..}
instance Property "Name" SignalMap where
  type PropertyType "Name" SignalMap = Value Prelude.Text
  set newValue SignalMap {..} = SignalMap {name = newValue, ..}
instance Property "Tags" SignalMap where
  type PropertyType "Tags" SignalMap = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SignalMap {..}
    = SignalMap {tags = Prelude.pure newValue, ..}