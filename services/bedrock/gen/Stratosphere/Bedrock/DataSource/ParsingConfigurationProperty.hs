module Stratosphere.Bedrock.DataSource.ParsingConfigurationProperty (
        module Exports, ParsingConfigurationProperty(..),
        mkParsingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.BedrockDataAutomationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.BedrockFoundationModelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParsingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-parsingconfiguration.html>
    ParsingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-parsingconfiguration.html#cfn-bedrock-datasource-parsingconfiguration-bedrockdataautomationconfiguration>
                                  bedrockDataAutomationConfiguration :: (Prelude.Maybe BedrockDataAutomationConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-parsingconfiguration.html#cfn-bedrock-datasource-parsingconfiguration-bedrockfoundationmodelconfiguration>
                                  bedrockFoundationModelConfiguration :: (Prelude.Maybe BedrockFoundationModelConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-parsingconfiguration.html#cfn-bedrock-datasource-parsingconfiguration-parsingstrategy>
                                  parsingStrategy :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParsingConfigurationProperty ::
  Value Prelude.Text -> ParsingConfigurationProperty
mkParsingConfigurationProperty parsingStrategy
  = ParsingConfigurationProperty
      {haddock_workaround_ = (), parsingStrategy = parsingStrategy,
       bedrockDataAutomationConfiguration = Prelude.Nothing,
       bedrockFoundationModelConfiguration = Prelude.Nothing}
instance ToResourceProperties ParsingConfigurationProperty where
  toResourceProperties ParsingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ParsingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParsingStrategy" JSON..= parsingStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockDataAutomationConfiguration"
                                 Prelude.<$> bedrockDataAutomationConfiguration,
                               (JSON..=) "BedrockFoundationModelConfiguration"
                                 Prelude.<$> bedrockFoundationModelConfiguration]))}
instance JSON.ToJSON ParsingConfigurationProperty where
  toJSON ParsingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParsingStrategy" JSON..= parsingStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "BedrockDataAutomationConfiguration"
                    Prelude.<$> bedrockDataAutomationConfiguration,
                  (JSON..=) "BedrockFoundationModelConfiguration"
                    Prelude.<$> bedrockFoundationModelConfiguration])))
instance Property "BedrockDataAutomationConfiguration" ParsingConfigurationProperty where
  type PropertyType "BedrockDataAutomationConfiguration" ParsingConfigurationProperty = BedrockDataAutomationConfigurationProperty
  set newValue ParsingConfigurationProperty {..}
    = ParsingConfigurationProperty
        {bedrockDataAutomationConfiguration = Prelude.pure newValue, ..}
instance Property "BedrockFoundationModelConfiguration" ParsingConfigurationProperty where
  type PropertyType "BedrockFoundationModelConfiguration" ParsingConfigurationProperty = BedrockFoundationModelConfigurationProperty
  set newValue ParsingConfigurationProperty {..}
    = ParsingConfigurationProperty
        {bedrockFoundationModelConfiguration = Prelude.pure newValue, ..}
instance Property "ParsingStrategy" ParsingConfigurationProperty where
  type PropertyType "ParsingStrategy" ParsingConfigurationProperty = Value Prelude.Text
  set newValue ParsingConfigurationProperty {..}
    = ParsingConfigurationProperty {parsingStrategy = newValue, ..}