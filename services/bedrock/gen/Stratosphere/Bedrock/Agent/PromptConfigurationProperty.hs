module Stratosphere.Bedrock.Agent.PromptConfigurationProperty (
        module Exports, PromptConfigurationProperty(..),
        mkPromptConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.InferenceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptConfigurationProperty
  = PromptConfigurationProperty {basePromptTemplate :: (Prelude.Maybe (Value Prelude.Text)),
                                 inferenceConfiguration :: (Prelude.Maybe InferenceConfigurationProperty),
                                 parserMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 promptCreationMode :: (Prelude.Maybe (Value Prelude.Text)),
                                 promptState :: (Prelude.Maybe (Value Prelude.Text)),
                                 promptType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptConfigurationProperty :: PromptConfigurationProperty
mkPromptConfigurationProperty
  = PromptConfigurationProperty
      {basePromptTemplate = Prelude.Nothing,
       inferenceConfiguration = Prelude.Nothing,
       parserMode = Prelude.Nothing, promptCreationMode = Prelude.Nothing,
       promptState = Prelude.Nothing, promptType = Prelude.Nothing}
instance ToResourceProperties PromptConfigurationProperty where
  toResourceProperties PromptConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.PromptConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BasePromptTemplate" Prelude.<$> basePromptTemplate,
                            (JSON..=) "InferenceConfiguration"
                              Prelude.<$> inferenceConfiguration,
                            (JSON..=) "ParserMode" Prelude.<$> parserMode,
                            (JSON..=) "PromptCreationMode" Prelude.<$> promptCreationMode,
                            (JSON..=) "PromptState" Prelude.<$> promptState,
                            (JSON..=) "PromptType" Prelude.<$> promptType])}
instance JSON.ToJSON PromptConfigurationProperty where
  toJSON PromptConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BasePromptTemplate" Prelude.<$> basePromptTemplate,
               (JSON..=) "InferenceConfiguration"
                 Prelude.<$> inferenceConfiguration,
               (JSON..=) "ParserMode" Prelude.<$> parserMode,
               (JSON..=) "PromptCreationMode" Prelude.<$> promptCreationMode,
               (JSON..=) "PromptState" Prelude.<$> promptState,
               (JSON..=) "PromptType" Prelude.<$> promptType]))
instance Property "BasePromptTemplate" PromptConfigurationProperty where
  type PropertyType "BasePromptTemplate" PromptConfigurationProperty = Value Prelude.Text
  set newValue PromptConfigurationProperty {..}
    = PromptConfigurationProperty
        {basePromptTemplate = Prelude.pure newValue, ..}
instance Property "InferenceConfiguration" PromptConfigurationProperty where
  type PropertyType "InferenceConfiguration" PromptConfigurationProperty = InferenceConfigurationProperty
  set newValue PromptConfigurationProperty {..}
    = PromptConfigurationProperty
        {inferenceConfiguration = Prelude.pure newValue, ..}
instance Property "ParserMode" PromptConfigurationProperty where
  type PropertyType "ParserMode" PromptConfigurationProperty = Value Prelude.Text
  set newValue PromptConfigurationProperty {..}
    = PromptConfigurationProperty
        {parserMode = Prelude.pure newValue, ..}
instance Property "PromptCreationMode" PromptConfigurationProperty where
  type PropertyType "PromptCreationMode" PromptConfigurationProperty = Value Prelude.Text
  set newValue PromptConfigurationProperty {..}
    = PromptConfigurationProperty
        {promptCreationMode = Prelude.pure newValue, ..}
instance Property "PromptState" PromptConfigurationProperty where
  type PropertyType "PromptState" PromptConfigurationProperty = Value Prelude.Text
  set newValue PromptConfigurationProperty {..}
    = PromptConfigurationProperty
        {promptState = Prelude.pure newValue, ..}
instance Property "PromptType" PromptConfigurationProperty where
  type PropertyType "PromptType" PromptConfigurationProperty = Value Prelude.Text
  set newValue PromptConfigurationProperty {..}
    = PromptConfigurationProperty
        {promptType = Prelude.pure newValue, ..}