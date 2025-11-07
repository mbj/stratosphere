module Stratosphere.Lex.Bot.DataSourceConfigurationProperty (
        module Exports, DataSourceConfigurationProperty(..),
        mkDataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockKnowledgeStoreConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.OpensearchConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.QnAKendraConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html>
    DataSourceConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html#cfn-lex-bot-datasourceconfiguration-bedrockknowledgestoreconfiguration>
                                     bedrockKnowledgeStoreConfiguration :: (Prelude.Maybe BedrockKnowledgeStoreConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html#cfn-lex-bot-datasourceconfiguration-kendraconfiguration>
                                     kendraConfiguration :: (Prelude.Maybe QnAKendraConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-datasourceconfiguration.html#cfn-lex-bot-datasourceconfiguration-opensearchconfiguration>
                                     opensearchConfiguration :: (Prelude.Maybe OpensearchConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceConfigurationProperty ::
  DataSourceConfigurationProperty
mkDataSourceConfigurationProperty
  = DataSourceConfigurationProperty
      {haddock_workaround_ = (),
       bedrockKnowledgeStoreConfiguration = Prelude.Nothing,
       kendraConfiguration = Prelude.Nothing,
       opensearchConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSourceConfigurationProperty where
  toResourceProperties DataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.DataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BedrockKnowledgeStoreConfiguration"
                              Prelude.<$> bedrockKnowledgeStoreConfiguration,
                            (JSON..=) "KendraConfiguration" Prelude.<$> kendraConfiguration,
                            (JSON..=) "OpensearchConfiguration"
                              Prelude.<$> opensearchConfiguration])}
instance JSON.ToJSON DataSourceConfigurationProperty where
  toJSON DataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BedrockKnowledgeStoreConfiguration"
                 Prelude.<$> bedrockKnowledgeStoreConfiguration,
               (JSON..=) "KendraConfiguration" Prelude.<$> kendraConfiguration,
               (JSON..=) "OpensearchConfiguration"
                 Prelude.<$> opensearchConfiguration]))
instance Property "BedrockKnowledgeStoreConfiguration" DataSourceConfigurationProperty where
  type PropertyType "BedrockKnowledgeStoreConfiguration" DataSourceConfigurationProperty = BedrockKnowledgeStoreConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {bedrockKnowledgeStoreConfiguration = Prelude.pure newValue, ..}
instance Property "KendraConfiguration" DataSourceConfigurationProperty where
  type PropertyType "KendraConfiguration" DataSourceConfigurationProperty = QnAKendraConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {kendraConfiguration = Prelude.pure newValue, ..}
instance Property "OpensearchConfiguration" DataSourceConfigurationProperty where
  type PropertyType "OpensearchConfiguration" DataSourceConfigurationProperty = OpensearchConfigurationProperty
  set newValue DataSourceConfigurationProperty {..}
    = DataSourceConfigurationProperty
        {opensearchConfiguration = Prelude.pure newValue, ..}