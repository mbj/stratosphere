module Stratosphere.BedrockAgentCore.Memory.CustomConfigurationInputProperty (
        module Exports, CustomConfigurationInputProperty(..),
        mkCustomConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SelfManagedConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SemanticOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.SummaryOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.UserPreferenceOverrideProperty as Exports
import Stratosphere.ResourceProperties
data CustomConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html>
    CustomConfigurationInputProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-selfmanagedconfiguration>
                                      selfManagedConfiguration :: (Prelude.Maybe SelfManagedConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-semanticoverride>
                                      semanticOverride :: (Prelude.Maybe SemanticOverrideProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-summaryoverride>
                                      summaryOverride :: (Prelude.Maybe SummaryOverrideProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-customconfigurationinput.html#cfn-bedrockagentcore-memory-customconfigurationinput-userpreferenceoverride>
                                      userPreferenceOverride :: (Prelude.Maybe UserPreferenceOverrideProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomConfigurationInputProperty ::
  CustomConfigurationInputProperty
mkCustomConfigurationInputProperty
  = CustomConfigurationInputProperty
      {haddock_workaround_ = (),
       selfManagedConfiguration = Prelude.Nothing,
       semanticOverride = Prelude.Nothing,
       summaryOverride = Prelude.Nothing,
       userPreferenceOverride = Prelude.Nothing}
instance ToResourceProperties CustomConfigurationInputProperty where
  toResourceProperties CustomConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.CustomConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SelfManagedConfiguration"
                              Prelude.<$> selfManagedConfiguration,
                            (JSON..=) "SemanticOverride" Prelude.<$> semanticOverride,
                            (JSON..=) "SummaryOverride" Prelude.<$> summaryOverride,
                            (JSON..=) "UserPreferenceOverride"
                              Prelude.<$> userPreferenceOverride])}
instance JSON.ToJSON CustomConfigurationInputProperty where
  toJSON CustomConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SelfManagedConfiguration"
                 Prelude.<$> selfManagedConfiguration,
               (JSON..=) "SemanticOverride" Prelude.<$> semanticOverride,
               (JSON..=) "SummaryOverride" Prelude.<$> summaryOverride,
               (JSON..=) "UserPreferenceOverride"
                 Prelude.<$> userPreferenceOverride]))
instance Property "SelfManagedConfiguration" CustomConfigurationInputProperty where
  type PropertyType "SelfManagedConfiguration" CustomConfigurationInputProperty = SelfManagedConfigurationProperty
  set newValue CustomConfigurationInputProperty {..}
    = CustomConfigurationInputProperty
        {selfManagedConfiguration = Prelude.pure newValue, ..}
instance Property "SemanticOverride" CustomConfigurationInputProperty where
  type PropertyType "SemanticOverride" CustomConfigurationInputProperty = SemanticOverrideProperty
  set newValue CustomConfigurationInputProperty {..}
    = CustomConfigurationInputProperty
        {semanticOverride = Prelude.pure newValue, ..}
instance Property "SummaryOverride" CustomConfigurationInputProperty where
  type PropertyType "SummaryOverride" CustomConfigurationInputProperty = SummaryOverrideProperty
  set newValue CustomConfigurationInputProperty {..}
    = CustomConfigurationInputProperty
        {summaryOverride = Prelude.pure newValue, ..}
instance Property "UserPreferenceOverride" CustomConfigurationInputProperty where
  type PropertyType "UserPreferenceOverride" CustomConfigurationInputProperty = UserPreferenceOverrideProperty
  set newValue CustomConfigurationInputProperty {..}
    = CustomConfigurationInputProperty
        {userPreferenceOverride = Prelude.pure newValue, ..}