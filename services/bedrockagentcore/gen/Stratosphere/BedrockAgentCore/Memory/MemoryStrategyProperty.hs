module Stratosphere.BedrockAgentCore.Memory.MemoryStrategyProperty (
        module Exports, MemoryStrategyProperty(..),
        mkMemoryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.CustomMemoryStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SemanticMemoryStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SummaryMemoryStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.UserPreferenceMemoryStrategyProperty as Exports
import Stratosphere.ResourceProperties
data MemoryStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html>
    MemoryStrategyProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-custommemorystrategy>
                            customMemoryStrategy :: (Prelude.Maybe CustomMemoryStrategyProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-semanticmemorystrategy>
                            semanticMemoryStrategy :: (Prelude.Maybe SemanticMemoryStrategyProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-summarymemorystrategy>
                            summaryMemoryStrategy :: (Prelude.Maybe SummaryMemoryStrategyProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-memorystrategy.html#cfn-bedrockagentcore-memory-memorystrategy-userpreferencememorystrategy>
                            userPreferenceMemoryStrategy :: (Prelude.Maybe UserPreferenceMemoryStrategyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryStrategyProperty :: MemoryStrategyProperty
mkMemoryStrategyProperty
  = MemoryStrategyProperty
      {haddock_workaround_ = (), customMemoryStrategy = Prelude.Nothing,
       semanticMemoryStrategy = Prelude.Nothing,
       summaryMemoryStrategy = Prelude.Nothing,
       userPreferenceMemoryStrategy = Prelude.Nothing}
instance ToResourceProperties MemoryStrategyProperty where
  toResourceProperties MemoryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.MemoryStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomMemoryStrategy" Prelude.<$> customMemoryStrategy,
                            (JSON..=) "SemanticMemoryStrategy"
                              Prelude.<$> semanticMemoryStrategy,
                            (JSON..=) "SummaryMemoryStrategy"
                              Prelude.<$> summaryMemoryStrategy,
                            (JSON..=) "UserPreferenceMemoryStrategy"
                              Prelude.<$> userPreferenceMemoryStrategy])}
instance JSON.ToJSON MemoryStrategyProperty where
  toJSON MemoryStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomMemoryStrategy" Prelude.<$> customMemoryStrategy,
               (JSON..=) "SemanticMemoryStrategy"
                 Prelude.<$> semanticMemoryStrategy,
               (JSON..=) "SummaryMemoryStrategy"
                 Prelude.<$> summaryMemoryStrategy,
               (JSON..=) "UserPreferenceMemoryStrategy"
                 Prelude.<$> userPreferenceMemoryStrategy]))
instance Property "CustomMemoryStrategy" MemoryStrategyProperty where
  type PropertyType "CustomMemoryStrategy" MemoryStrategyProperty = CustomMemoryStrategyProperty
  set newValue MemoryStrategyProperty {..}
    = MemoryStrategyProperty
        {customMemoryStrategy = Prelude.pure newValue, ..}
instance Property "SemanticMemoryStrategy" MemoryStrategyProperty where
  type PropertyType "SemanticMemoryStrategy" MemoryStrategyProperty = SemanticMemoryStrategyProperty
  set newValue MemoryStrategyProperty {..}
    = MemoryStrategyProperty
        {semanticMemoryStrategy = Prelude.pure newValue, ..}
instance Property "SummaryMemoryStrategy" MemoryStrategyProperty where
  type PropertyType "SummaryMemoryStrategy" MemoryStrategyProperty = SummaryMemoryStrategyProperty
  set newValue MemoryStrategyProperty {..}
    = MemoryStrategyProperty
        {summaryMemoryStrategy = Prelude.pure newValue, ..}
instance Property "UserPreferenceMemoryStrategy" MemoryStrategyProperty where
  type PropertyType "UserPreferenceMemoryStrategy" MemoryStrategyProperty = UserPreferenceMemoryStrategyProperty
  set newValue MemoryStrategyProperty {..}
    = MemoryStrategyProperty
        {userPreferenceMemoryStrategy = Prelude.pure newValue, ..}