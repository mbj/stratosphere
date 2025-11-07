module Stratosphere.BedrockAgentCore.Memory.UserPreferenceOverrideProperty (
        module Exports, UserPreferenceOverrideProperty(..),
        mkUserPreferenceOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.UserPreferenceOverrideConsolidationConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.UserPreferenceOverrideExtractionConfigurationInputProperty as Exports
import Stratosphere.ResourceProperties
data UserPreferenceOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverride.html>
    UserPreferenceOverrideProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverride.html#cfn-bedrockagentcore-memory-userpreferenceoverride-consolidation>
                                    consolidation :: (Prelude.Maybe UserPreferenceOverrideConsolidationConfigurationInputProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverride.html#cfn-bedrockagentcore-memory-userpreferenceoverride-extraction>
                                    extraction :: (Prelude.Maybe UserPreferenceOverrideExtractionConfigurationInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPreferenceOverrideProperty :: UserPreferenceOverrideProperty
mkUserPreferenceOverrideProperty
  = UserPreferenceOverrideProperty
      {haddock_workaround_ = (), consolidation = Prelude.Nothing,
       extraction = Prelude.Nothing}
instance ToResourceProperties UserPreferenceOverrideProperty where
  toResourceProperties UserPreferenceOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.UserPreferenceOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Consolidation" Prelude.<$> consolidation,
                            (JSON..=) "Extraction" Prelude.<$> extraction])}
instance JSON.ToJSON UserPreferenceOverrideProperty where
  toJSON UserPreferenceOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Consolidation" Prelude.<$> consolidation,
               (JSON..=) "Extraction" Prelude.<$> extraction]))
instance Property "Consolidation" UserPreferenceOverrideProperty where
  type PropertyType "Consolidation" UserPreferenceOverrideProperty = UserPreferenceOverrideConsolidationConfigurationInputProperty
  set newValue UserPreferenceOverrideProperty {..}
    = UserPreferenceOverrideProperty
        {consolidation = Prelude.pure newValue, ..}
instance Property "Extraction" UserPreferenceOverrideProperty where
  type PropertyType "Extraction" UserPreferenceOverrideProperty = UserPreferenceOverrideExtractionConfigurationInputProperty
  set newValue UserPreferenceOverrideProperty {..}
    = UserPreferenceOverrideProperty
        {extraction = Prelude.pure newValue, ..}