module Stratosphere.Wisdom.KnowledgeBase.ParsingConfigurationProperty (
        module Exports, ParsingConfigurationProperty(..),
        mkParsingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.BedrockFoundationModelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParsingConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-parsingconfiguration.html>
    ParsingConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-parsingconfiguration.html#cfn-wisdom-knowledgebase-parsingconfiguration-bedrockfoundationmodelconfiguration>
                                  bedrockFoundationModelConfiguration :: (Prelude.Maybe BedrockFoundationModelConfigurationProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-parsingconfiguration.html#cfn-wisdom-knowledgebase-parsingconfiguration-parsingstrategy>
                                  parsingStrategy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParsingConfigurationProperty ::
  Value Prelude.Text -> ParsingConfigurationProperty
mkParsingConfigurationProperty parsingStrategy
  = ParsingConfigurationProperty
      {parsingStrategy = parsingStrategy,
       bedrockFoundationModelConfiguration = Prelude.Nothing}
instance ToResourceProperties ParsingConfigurationProperty where
  toResourceProperties ParsingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.ParsingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParsingStrategy" JSON..= parsingStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockFoundationModelConfiguration"
                                 Prelude.<$> bedrockFoundationModelConfiguration]))}
instance JSON.ToJSON ParsingConfigurationProperty where
  toJSON ParsingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParsingStrategy" JSON..= parsingStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "BedrockFoundationModelConfiguration"
                    Prelude.<$> bedrockFoundationModelConfiguration])))
instance Property "BedrockFoundationModelConfiguration" ParsingConfigurationProperty where
  type PropertyType "BedrockFoundationModelConfiguration" ParsingConfigurationProperty = BedrockFoundationModelConfigurationProperty
  set newValue ParsingConfigurationProperty {..}
    = ParsingConfigurationProperty
        {bedrockFoundationModelConfiguration = Prelude.pure newValue, ..}
instance Property "ParsingStrategy" ParsingConfigurationProperty where
  type PropertyType "ParsingStrategy" ParsingConfigurationProperty = Value Prelude.Text
  set newValue ParsingConfigurationProperty {..}
    = ParsingConfigurationProperty {parsingStrategy = newValue, ..}