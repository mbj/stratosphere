module Stratosphere.BedrockAgentCore.Memory.SelfManagedConfigurationProperty (
        module Exports, SelfManagedConfigurationProperty(..),
        mkSelfManagedConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.InvocationConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.TriggerConditionInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-selfmanagedconfiguration.html>
    SelfManagedConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-selfmanagedconfiguration.html#cfn-bedrockagentcore-memory-selfmanagedconfiguration-historicalcontextwindowsize>
                                      historicalContextWindowSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-selfmanagedconfiguration.html#cfn-bedrockagentcore-memory-selfmanagedconfiguration-invocationconfiguration>
                                      invocationConfiguration :: (Prelude.Maybe InvocationConfigurationInputProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-selfmanagedconfiguration.html#cfn-bedrockagentcore-memory-selfmanagedconfiguration-triggerconditions>
                                      triggerConditions :: (Prelude.Maybe [TriggerConditionInputProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedConfigurationProperty ::
  SelfManagedConfigurationProperty
mkSelfManagedConfigurationProperty
  = SelfManagedConfigurationProperty
      {haddock_workaround_ = (),
       historicalContextWindowSize = Prelude.Nothing,
       invocationConfiguration = Prelude.Nothing,
       triggerConditions = Prelude.Nothing}
instance ToResourceProperties SelfManagedConfigurationProperty where
  toResourceProperties SelfManagedConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SelfManagedConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HistoricalContextWindowSize"
                              Prelude.<$> historicalContextWindowSize,
                            (JSON..=) "InvocationConfiguration"
                              Prelude.<$> invocationConfiguration,
                            (JSON..=) "TriggerConditions" Prelude.<$> triggerConditions])}
instance JSON.ToJSON SelfManagedConfigurationProperty where
  toJSON SelfManagedConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HistoricalContextWindowSize"
                 Prelude.<$> historicalContextWindowSize,
               (JSON..=) "InvocationConfiguration"
                 Prelude.<$> invocationConfiguration,
               (JSON..=) "TriggerConditions" Prelude.<$> triggerConditions]))
instance Property "HistoricalContextWindowSize" SelfManagedConfigurationProperty where
  type PropertyType "HistoricalContextWindowSize" SelfManagedConfigurationProperty = Value Prelude.Integer
  set newValue SelfManagedConfigurationProperty {..}
    = SelfManagedConfigurationProperty
        {historicalContextWindowSize = Prelude.pure newValue, ..}
instance Property "InvocationConfiguration" SelfManagedConfigurationProperty where
  type PropertyType "InvocationConfiguration" SelfManagedConfigurationProperty = InvocationConfigurationInputProperty
  set newValue SelfManagedConfigurationProperty {..}
    = SelfManagedConfigurationProperty
        {invocationConfiguration = Prelude.pure newValue, ..}
instance Property "TriggerConditions" SelfManagedConfigurationProperty where
  type PropertyType "TriggerConditions" SelfManagedConfigurationProperty = [TriggerConditionInputProperty]
  set newValue SelfManagedConfigurationProperty {..}
    = SelfManagedConfigurationProperty
        {triggerConditions = Prelude.pure newValue, ..}