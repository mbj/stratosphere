module Stratosphere.Bedrock.DataSource.BedrockDataAutomationConfigurationProperty (
        BedrockDataAutomationConfigurationProperty(..),
        mkBedrockDataAutomationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockDataAutomationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-bedrockdataautomationconfiguration.html>
    BedrockDataAutomationConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-bedrockdataautomationconfiguration.html#cfn-bedrock-datasource-bedrockdataautomationconfiguration-parsingmodality>
                                                parsingModality :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockDataAutomationConfigurationProperty ::
  BedrockDataAutomationConfigurationProperty
mkBedrockDataAutomationConfigurationProperty
  = BedrockDataAutomationConfigurationProperty
      {haddock_workaround_ = (), parsingModality = Prelude.Nothing}
instance ToResourceProperties BedrockDataAutomationConfigurationProperty where
  toResourceProperties
    BedrockDataAutomationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.BedrockDataAutomationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ParsingModality" Prelude.<$> parsingModality])}
instance JSON.ToJSON BedrockDataAutomationConfigurationProperty where
  toJSON BedrockDataAutomationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ParsingModality" Prelude.<$> parsingModality]))
instance Property "ParsingModality" BedrockDataAutomationConfigurationProperty where
  type PropertyType "ParsingModality" BedrockDataAutomationConfigurationProperty = Value Prelude.Text
  set newValue BedrockDataAutomationConfigurationProperty {..}
    = BedrockDataAutomationConfigurationProperty
        {parsingModality = Prelude.pure newValue, ..}