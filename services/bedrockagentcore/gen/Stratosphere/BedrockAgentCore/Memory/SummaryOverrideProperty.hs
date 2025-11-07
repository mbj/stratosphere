module Stratosphere.BedrockAgentCore.Memory.SummaryOverrideProperty (
        module Exports, SummaryOverrideProperty(..),
        mkSummaryOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SummaryOverrideConsolidationConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data SummaryOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverride.html>
    SummaryOverrideProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverride.html#cfn-bedrockagentcore-memory-summaryoverride-consolidation>
                             consolidation :: (Prelude.Maybe SummaryOverrideConsolidationConfigurationInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSummaryOverrideProperty :: SummaryOverrideProperty
mkSummaryOverrideProperty
  = SummaryOverrideProperty
      {haddock_workaround_ = (), consolidation = Prelude.Nothing}
instance ToResourceProperties SummaryOverrideProperty where
  toResourceProperties SummaryOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SummaryOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Consolidation" Prelude.<$> consolidation])}
instance JSON.ToJSON SummaryOverrideProperty where
  toJSON SummaryOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Consolidation" Prelude.<$> consolidation]))
instance Property "Consolidation" SummaryOverrideProperty where
  type PropertyType "Consolidation" SummaryOverrideProperty = SummaryOverrideConsolidationConfigurationInputProperty
  set newValue SummaryOverrideProperty {..}
    = SummaryOverrideProperty
        {consolidation = Prelude.pure newValue, ..}