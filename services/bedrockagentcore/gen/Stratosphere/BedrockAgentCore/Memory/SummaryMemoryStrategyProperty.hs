module Stratosphere.BedrockAgentCore.Memory.SummaryMemoryStrategyProperty (
        SummaryMemoryStrategyProperty(..), mkSummaryMemoryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SummaryMemoryStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html>
    SummaryMemoryStrategyProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-createdat>
                                   createdAt :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-description>
                                   description :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-name>
                                   name :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-namespaces>
                                   namespaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-status>
                                   status :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-strategyid>
                                   strategyId :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-type>
                                   type' :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summarymemorystrategy.html#cfn-bedrockagentcore-memory-summarymemorystrategy-updatedat>
                                   updatedAt :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSummaryMemoryStrategyProperty ::
  Value Prelude.Text -> SummaryMemoryStrategyProperty
mkSummaryMemoryStrategyProperty name
  = SummaryMemoryStrategyProperty
      {haddock_workaround_ = (), name = name,
       createdAt = Prelude.Nothing, description = Prelude.Nothing,
       namespaces = Prelude.Nothing, status = Prelude.Nothing,
       strategyId = Prelude.Nothing, type' = Prelude.Nothing,
       updatedAt = Prelude.Nothing}
instance ToResourceProperties SummaryMemoryStrategyProperty where
  toResourceProperties SummaryMemoryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SummaryMemoryStrategy",
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
instance JSON.ToJSON SummaryMemoryStrategyProperty where
  toJSON SummaryMemoryStrategyProperty {..}
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
instance Property "CreatedAt" SummaryMemoryStrategyProperty where
  type PropertyType "CreatedAt" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "Description" SummaryMemoryStrategyProperty where
  type PropertyType "Description" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" SummaryMemoryStrategyProperty where
  type PropertyType "Name" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty {name = newValue, ..}
instance Property "Namespaces" SummaryMemoryStrategyProperty where
  type PropertyType "Namespaces" SummaryMemoryStrategyProperty = ValueList Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty
        {namespaces = Prelude.pure newValue, ..}
instance Property "Status" SummaryMemoryStrategyProperty where
  type PropertyType "Status" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty
        {status = Prelude.pure newValue, ..}
instance Property "StrategyId" SummaryMemoryStrategyProperty where
  type PropertyType "StrategyId" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty
        {strategyId = Prelude.pure newValue, ..}
instance Property "Type" SummaryMemoryStrategyProperty where
  type PropertyType "Type" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty {type' = Prelude.pure newValue, ..}
instance Property "UpdatedAt" SummaryMemoryStrategyProperty where
  type PropertyType "UpdatedAt" SummaryMemoryStrategyProperty = Value Prelude.Text
  set newValue SummaryMemoryStrategyProperty {..}
    = SummaryMemoryStrategyProperty
        {updatedAt = Prelude.pure newValue, ..}