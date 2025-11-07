module Stratosphere.BedrockAgentCore.Memory.UserPreferenceMemoryStrategyProperty (
        UserPreferenceMemoryStrategyProperty(..),
        mkUserPreferenceMemoryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPreferenceMemoryStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html>
    UserPreferenceMemoryStrategyProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-createdat>
                                          createdAt :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-description>
                                          description :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-name>
                                          name :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-namespaces>
                                          namespaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-status>
                                          status :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-strategyid>
                                          strategyId :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-type>
                                          type' :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferencememorystrategy.html#cfn-bedrockagentcore-memory-userpreferencememorystrategy-updatedat>
                                          updatedAt :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPreferenceMemoryStrategyProperty ::
  Value Prelude.Text -> UserPreferenceMemoryStrategyProperty
mkUserPreferenceMemoryStrategyProperty name
  = UserPreferenceMemoryStrategyProperty
      {haddock_workaround_ = (), name = name,
       createdAt = Prelude.Nothing, description = Prelude.Nothing,
       namespaces = Prelude.Nothing, status = Prelude.Nothing,
       strategyId = Prelude.Nothing, type' = Prelude.Nothing,
       updatedAt = Prelude.Nothing}
instance ToResourceProperties UserPreferenceMemoryStrategyProperty where
  toResourceProperties UserPreferenceMemoryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.UserPreferenceMemoryStrategy",
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
instance JSON.ToJSON UserPreferenceMemoryStrategyProperty where
  toJSON UserPreferenceMemoryStrategyProperty {..}
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
instance Property "CreatedAt" UserPreferenceMemoryStrategyProperty where
  type PropertyType "CreatedAt" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "Description" UserPreferenceMemoryStrategyProperty where
  type PropertyType "Description" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" UserPreferenceMemoryStrategyProperty where
  type PropertyType "Name" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty {name = newValue, ..}
instance Property "Namespaces" UserPreferenceMemoryStrategyProperty where
  type PropertyType "Namespaces" UserPreferenceMemoryStrategyProperty = ValueList Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {namespaces = Prelude.pure newValue, ..}
instance Property "Status" UserPreferenceMemoryStrategyProperty where
  type PropertyType "Status" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {status = Prelude.pure newValue, ..}
instance Property "StrategyId" UserPreferenceMemoryStrategyProperty where
  type PropertyType "StrategyId" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {strategyId = Prelude.pure newValue, ..}
instance Property "Type" UserPreferenceMemoryStrategyProperty where
  type PropertyType "Type" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {type' = Prelude.pure newValue, ..}
instance Property "UpdatedAt" UserPreferenceMemoryStrategyProperty where
  type PropertyType "UpdatedAt" UserPreferenceMemoryStrategyProperty = Value Prelude.Text
  set newValue UserPreferenceMemoryStrategyProperty {..}
    = UserPreferenceMemoryStrategyProperty
        {updatedAt = Prelude.pure newValue, ..}