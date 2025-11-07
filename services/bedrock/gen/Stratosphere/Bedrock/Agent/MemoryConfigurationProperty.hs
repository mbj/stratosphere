module Stratosphere.Bedrock.Agent.MemoryConfigurationProperty (
        module Exports, MemoryConfigurationProperty(..),
        mkMemoryConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.SessionSummaryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html>
    MemoryConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html#cfn-bedrock-agent-memoryconfiguration-enabledmemorytypes>
                                 enabledMemoryTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html#cfn-bedrock-agent-memoryconfiguration-sessionsummaryconfiguration>
                                 sessionSummaryConfiguration :: (Prelude.Maybe SessionSummaryConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html#cfn-bedrock-agent-memoryconfiguration-storagedays>
                                 storageDays :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryConfigurationProperty :: MemoryConfigurationProperty
mkMemoryConfigurationProperty
  = MemoryConfigurationProperty
      {haddock_workaround_ = (), enabledMemoryTypes = Prelude.Nothing,
       sessionSummaryConfiguration = Prelude.Nothing,
       storageDays = Prelude.Nothing}
instance ToResourceProperties MemoryConfigurationProperty where
  toResourceProperties MemoryConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.MemoryConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnabledMemoryTypes" Prelude.<$> enabledMemoryTypes,
                            (JSON..=) "SessionSummaryConfiguration"
                              Prelude.<$> sessionSummaryConfiguration,
                            (JSON..=) "StorageDays" Prelude.<$> storageDays])}
instance JSON.ToJSON MemoryConfigurationProperty where
  toJSON MemoryConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnabledMemoryTypes" Prelude.<$> enabledMemoryTypes,
               (JSON..=) "SessionSummaryConfiguration"
                 Prelude.<$> sessionSummaryConfiguration,
               (JSON..=) "StorageDays" Prelude.<$> storageDays]))
instance Property "EnabledMemoryTypes" MemoryConfigurationProperty where
  type PropertyType "EnabledMemoryTypes" MemoryConfigurationProperty = ValueList Prelude.Text
  set newValue MemoryConfigurationProperty {..}
    = MemoryConfigurationProperty
        {enabledMemoryTypes = Prelude.pure newValue, ..}
instance Property "SessionSummaryConfiguration" MemoryConfigurationProperty where
  type PropertyType "SessionSummaryConfiguration" MemoryConfigurationProperty = SessionSummaryConfigurationProperty
  set newValue MemoryConfigurationProperty {..}
    = MemoryConfigurationProperty
        {sessionSummaryConfiguration = Prelude.pure newValue, ..}
instance Property "StorageDays" MemoryConfigurationProperty where
  type PropertyType "StorageDays" MemoryConfigurationProperty = Value Prelude.Double
  set newValue MemoryConfigurationProperty {..}
    = MemoryConfigurationProperty
        {storageDays = Prelude.pure newValue, ..}