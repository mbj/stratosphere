module Stratosphere.BedrockAgentCore.Memory.CustomMemoryStrategyProperty (
        module Exports, CustomMemoryStrategyProperty(..),
        mkCustomMemoryStrategyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.CustomConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomMemoryStrategyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html>
    CustomMemoryStrategyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-configuration>
                                  configuration :: (Prelude.Maybe CustomConfigurationInputProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-createdat>
                                  createdAt :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-name>
                                  name :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-namespaces>
                                  namespaces :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-status>
                                  status :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-strategyid>
                                  strategyId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-type>
                                  type' :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-custommemorystrategy.html#cfn-bedrockagentcore-memory-custommemorystrategy-updatedat>
                                  updatedAt :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomMemoryStrategyProperty ::
  Value Prelude.Text -> CustomMemoryStrategyProperty
mkCustomMemoryStrategyProperty name
  = CustomMemoryStrategyProperty
      {haddock_workaround_ = (), name = name,
       configuration = Prelude.Nothing, createdAt = Prelude.Nothing,
       description = Prelude.Nothing, namespaces = Prelude.Nothing,
       status = Prelude.Nothing, strategyId = Prelude.Nothing,
       type' = Prelude.Nothing, updatedAt = Prelude.Nothing}
instance ToResourceProperties CustomMemoryStrategyProperty where
  toResourceProperties CustomMemoryStrategyProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.CustomMemoryStrategy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Configuration" Prelude.<$> configuration,
                               (JSON..=) "CreatedAt" Prelude.<$> createdAt,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Namespaces" Prelude.<$> namespaces,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "StrategyId" Prelude.<$> strategyId,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "UpdatedAt" Prelude.<$> updatedAt]))}
instance JSON.ToJSON CustomMemoryStrategyProperty where
  toJSON CustomMemoryStrategyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Configuration" Prelude.<$> configuration,
                  (JSON..=) "CreatedAt" Prelude.<$> createdAt,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Namespaces" Prelude.<$> namespaces,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "StrategyId" Prelude.<$> strategyId,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "UpdatedAt" Prelude.<$> updatedAt])))
instance Property "Configuration" CustomMemoryStrategyProperty where
  type PropertyType "Configuration" CustomMemoryStrategyProperty = CustomConfigurationInputProperty
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty
        {configuration = Prelude.pure newValue, ..}
instance Property "CreatedAt" CustomMemoryStrategyProperty where
  type PropertyType "CreatedAt" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty
        {createdAt = Prelude.pure newValue, ..}
instance Property "Description" CustomMemoryStrategyProperty where
  type PropertyType "Description" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" CustomMemoryStrategyProperty where
  type PropertyType "Name" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty {name = newValue, ..}
instance Property "Namespaces" CustomMemoryStrategyProperty where
  type PropertyType "Namespaces" CustomMemoryStrategyProperty = ValueList Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty
        {namespaces = Prelude.pure newValue, ..}
instance Property "Status" CustomMemoryStrategyProperty where
  type PropertyType "Status" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty {status = Prelude.pure newValue, ..}
instance Property "StrategyId" CustomMemoryStrategyProperty where
  type PropertyType "StrategyId" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty
        {strategyId = Prelude.pure newValue, ..}
instance Property "Type" CustomMemoryStrategyProperty where
  type PropertyType "Type" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty {type' = Prelude.pure newValue, ..}
instance Property "UpdatedAt" CustomMemoryStrategyProperty where
  type PropertyType "UpdatedAt" CustomMemoryStrategyProperty = Value Prelude.Text
  set newValue CustomMemoryStrategyProperty {..}
    = CustomMemoryStrategyProperty
        {updatedAt = Prelude.pure newValue, ..}