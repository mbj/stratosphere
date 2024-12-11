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
  = PromptOverrideConfigurationProperty {overrideLambda :: (Prelude.Maybe (Value Prelude.Text)),
                                         promptConfigurations :: [PromptConfigurationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptOverrideConfigurationProperty ::
  [PromptConfigurationProperty]
  -> PromptOverrideConfigurationProperty
mkPromptOverrideConfigurationProperty promptConfigurations
  = PromptOverrideConfigurationProperty
      {promptConfigurations = promptConfigurations,
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