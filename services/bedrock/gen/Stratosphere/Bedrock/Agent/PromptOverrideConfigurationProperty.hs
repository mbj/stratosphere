module Stratosphere.Bedrock.Agent.PromptOverrideConfigurationProperty (
        module Exports, PromptOverrideConfigurationProperty(..),
        mkPromptOverrideConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.PromptConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptOverrideConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-promptoverrideconfiguration.html>
    PromptOverrideConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-promptoverrideconfiguration.html#cfn-bedrock-agent-promptoverrideconfiguration-overridelambda>
                                         overrideLambda :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-promptoverrideconfiguration.html#cfn-bedrock-agent-promptoverrideconfiguration-promptconfigurations>
                                         promptConfigurations :: [PromptConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptOverrideConfigurationProperty ::
  [PromptConfigurationProperty]
  -> PromptOverrideConfigurationProperty
mkPromptOverrideConfigurationProperty promptConfigurations
  = PromptOverrideConfigurationProperty
      {haddock_workaround_ = (),
       promptConfigurations = promptConfigurations,
       overrideLambda = Prelude.Nothing}
instance ToResourceProperties PromptOverrideConfigurationProperty where
  toResourceProperties PromptOverrideConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.PromptOverrideConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PromptConfigurations" JSON..= promptConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "OverrideLambda" Prelude.<$> overrideLambda]))}
instance JSON.ToJSON PromptOverrideConfigurationProperty where
  toJSON PromptOverrideConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PromptConfigurations" JSON..= promptConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "OverrideLambda" Prelude.<$> overrideLambda])))
instance Property "OverrideLambda" PromptOverrideConfigurationProperty where
  type PropertyType "OverrideLambda" PromptOverrideConfigurationProperty = Value Prelude.Text
  set newValue PromptOverrideConfigurationProperty {..}
    = PromptOverrideConfigurationProperty
        {overrideLambda = Prelude.pure newValue, ..}
instance Property "PromptConfigurations" PromptOverrideConfigurationProperty where
  type PropertyType "PromptConfigurations" PromptOverrideConfigurationProperty = [PromptConfigurationProperty]
  set newValue PromptOverrideConfigurationProperty {..}
    = PromptOverrideConfigurationProperty
        {promptConfigurations = newValue, ..}