module Stratosphere.BedrockAgentCore.Memory.SemanticOverrideProperty (
        module Exports, SemanticOverrideProperty(..),
        mkSemanticOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SemanticOverrideConsolidationConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SemanticOverrideExtractionConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data SemanticOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverride.html>
    SemanticOverrideProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverride.html#cfn-bedrockagentcore-memory-semanticoverride-consolidation>
                              consolidation :: (Prelude.Maybe SemanticOverrideConsolidationConfigurationInputProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverride.html#cfn-bedrockagentcore-memory-semanticoverride-extraction>
                              extraction :: (Prelude.Maybe SemanticOverrideExtractionConfigurationInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticOverrideProperty :: SemanticOverrideProperty
mkSemanticOverrideProperty
  = SemanticOverrideProperty
      {haddock_workaround_ = (), consolidation = Prelude.Nothing,
       extraction = Prelude.Nothing}
instance ToResourceProperties SemanticOverrideProperty where
  toResourceProperties SemanticOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SemanticOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Consolidation" Prelude.<$> consolidation,
                            (JSON..=) "Extraction" Prelude.<$> extraction])}
instance JSON.ToJSON SemanticOverrideProperty where
  toJSON SemanticOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Consolidation" Prelude.<$> consolidation,
               (JSON..=) "Extraction" Prelude.<$> extraction]))
instance Property "Consolidation" SemanticOverrideProperty where
  type PropertyType "Consolidation" SemanticOverrideProperty = SemanticOverrideConsolidationConfigurationInputProperty
  set newValue SemanticOverrideProperty {..}
    = SemanticOverrideProperty
        {consolidation = Prelude.pure newValue, ..}
instance Property "Extraction" SemanticOverrideProperty where
  type PropertyType "Extraction" SemanticOverrideProperty = SemanticOverrideExtractionConfigurationInputProperty
  set newValue SemanticOverrideProperty {..}
    = SemanticOverrideProperty {extraction = Prelude.pure newValue, ..}