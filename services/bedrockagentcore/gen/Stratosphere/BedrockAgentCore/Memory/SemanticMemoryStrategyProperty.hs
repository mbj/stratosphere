module Stratosphere.BedrockAgentCore.Memory.SemanticMemoryStrategyProperty (
        SemanticMemoryStrategyProperty(..),
        mkSemanticMemoryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SemanticMemoryStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html>
    SemanticMemoryStrategyProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-createdat>
                                    createdAt :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-description>
                                    description :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-name>
                                    name :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-namespaces>
                                    namespaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-status>
                                    status :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-strategyid>
                                    strategyId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-type>
                                    type' :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticmemorystrategy.html#cfn-bedrockagentcore-memory-semanticmemorystrategy-updatedat>
                                    updatedAt :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticMemoryStrategyProperty ::
  Value Prelude.Text -> SemanticMemoryStrategyProperty
mkSemanticMemoryStrategyProperty name
  = SemanticMemoryStrategyProperty
      {haddock_workaround_ = (), name = name,
       createdAt = Prelude.Nothing, description = Prelude.Nothing,
       namespaces = Prelude.Nothing, status = Prelude.Nothing,
       strategyId = Prelude.Nothing, type' = Prelude.Nothing,
       updatedAt = Prelude.Nothing}
instance ToResourceProperties SemanticMemoryStrategyProperty where
  toResourceProperties SemanticMemoryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SemanticMemoryStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Namespaces" Prelude.<$> namespaces,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "StrategyId" Prelude.<$> strategyId,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "UpdatedAt" Prelude.<$> updatedAt]))}
instance JSON.ToJSON SemanticMemoryStrategyProperty where
  toJSON SemanticMemoryStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CreatedAt" Prelude.<$> createdAt,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Namespaces" Prelude.<$> namespaces,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "StrategyId" Prelude.<$> strategyId,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "UpdatedAt" Prelude.<$> updatedAt])))
instance Property "CreatedAt" SemanticMemoryStrategyProperty where
  type PropertyType "CreatedAt" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "Description" SemanticMemoryStrategyProperty where
  type PropertyType "Description" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" SemanticMemoryStrategyProperty where
  type PropertyType "Name" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty {name = newValue, ..}
instance Property "Namespaces" SemanticMemoryStrategyProperty where
  type PropertyType "Namespaces" SemanticMemoryStrategyProperty = ValueList Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {namespaces = Prelude.pure newValue, ..}
instance Property "Status" SemanticMemoryStrategyProperty where
  type PropertyType "Status" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {status = Prelude.pure newValue, ..}
instance Property "StrategyId" SemanticMemoryStrategyProperty where
  type PropertyType "StrategyId" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {strategyId = Prelude.pure newValue, ..}
instance Property "Type" SemanticMemoryStrategyProperty where
  type PropertyType "Type" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {type' = Prelude.pure newValue, ..}
instance Property "UpdatedAt" SemanticMemoryStrategyProperty where
  type PropertyType "UpdatedAt" SemanticMemoryStrategyProperty = Value Prelude.Text
  set newValue SemanticMemoryStrategyProperty {..}
    = SemanticMemoryStrategyProperty
        {updatedAt = Prelude.pure newValue, ..}