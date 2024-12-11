module Stratosphere.Bedrock.DataSource.BedrockFoundationModelConfigurationProperty (
        module Exports, BedrockFoundationModelConfigurationProperty(..),
        mkBedrockFoundationModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ParsingPromptProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockFoundationModelConfigurationProperty
  = BedrockFoundationModelConfigurationProperty {modelArn :: (Value Prelude.Text),
                                                 parsingPrompt :: (Prelude.Maybe ParsingPromptProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockFoundationModelConfigurationProperty ::
  Value Prelude.Text -> BedrockFoundationModelConfigurationProperty
mkBedrockFoundationModelConfigurationProperty modelArn
  = BedrockFoundationModelConfigurationProperty
      {modelArn = modelArn, parsingPrompt = Prelude.Nothing}
instance ToResourceProperties BedrockFoundationModelConfigurationProperty where
  toResourceProperties
    BedrockFoundationModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.BedrockFoundationModelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelArn" JSON..= modelArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ParsingPrompt" Prelude.<$> parsingPrompt]))}
instance JSON.ToJSON BedrockFoundationModelConfigurationProperty where
  toJSON BedrockFoundationModelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelArn" JSON..= modelArn]
              (Prelude.catMaybes
                 [(JSON..=) "ParsingPrompt" Prelude.<$> parsingPrompt])))
instance Property "ModelArn" BedrockFoundationModelConfigurationProperty where
  type PropertyType "ModelArn" BedrockFoundationModelConfigurationProperty = Value Prelude.Text
  set newValue BedrockFoundationModelConfigurationProperty {..}
    = BedrockFoundationModelConfigurationProperty
        {modelArn = newValue, ..}
instance Property "ParsingPrompt" BedrockFoundationModelConfigurationProperty where
  type PropertyType "ParsingPrompt" BedrockFoundationModelConfigurationProperty = ParsingPromptProperty
  set newValue BedrockFoundationModelConfigurationProperty {..}
    = BedrockFoundationModelConfigurationProperty
        {parsingPrompt = Prelude.pure newValue, ..}