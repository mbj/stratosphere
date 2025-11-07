module Stratosphere.Lex.Bot.QnAIntentConfigurationProperty (
        module Exports, QnAIntentConfigurationProperty(..),
        mkQnAIntentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BedrockModelSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DataSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data QnAIntentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnaintentconfiguration.html>
    QnAIntentConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnaintentconfiguration.html#cfn-lex-bot-qnaintentconfiguration-bedrockmodelconfiguration>
                                    bedrockModelConfiguration :: BedrockModelSpecificationProperty,
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qnaintentconfiguration.html#cfn-lex-bot-qnaintentconfiguration-datasourceconfiguration>
                                    dataSourceConfiguration :: DataSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQnAIntentConfigurationProperty ::
  BedrockModelSpecificationProperty
  -> DataSourceConfigurationProperty
     -> QnAIntentConfigurationProperty
mkQnAIntentConfigurationProperty
  bedrockModelConfiguration
  dataSourceConfiguration
  = QnAIntentConfigurationProperty
      {haddock_workaround_ = (),
       bedrockModelConfiguration = bedrockModelConfiguration,
       dataSourceConfiguration = dataSourceConfiguration}
instance ToResourceProperties QnAIntentConfigurationProperty where
  toResourceProperties QnAIntentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.QnAIntentConfiguration",
         supportsTags = Prelude.False,
         properties = ["BedrockModelConfiguration"
                         JSON..= bedrockModelConfiguration,
                       "DataSourceConfiguration" JSON..= dataSourceConfiguration]}
instance JSON.ToJSON QnAIntentConfigurationProperty where
  toJSON QnAIntentConfigurationProperty {..}
    = JSON.object
        ["BedrockModelConfiguration" JSON..= bedrockModelConfiguration,
         "DataSourceConfiguration" JSON..= dataSourceConfiguration]
instance Property "BedrockModelConfiguration" QnAIntentConfigurationProperty where
  type PropertyType "BedrockModelConfiguration" QnAIntentConfigurationProperty = BedrockModelSpecificationProperty
  set newValue QnAIntentConfigurationProperty {..}
    = QnAIntentConfigurationProperty
        {bedrockModelConfiguration = newValue, ..}
instance Property "DataSourceConfiguration" QnAIntentConfigurationProperty where
  type PropertyType "DataSourceConfiguration" QnAIntentConfigurationProperty = DataSourceConfigurationProperty
  set newValue QnAIntentConfigurationProperty {..}
    = QnAIntentConfigurationProperty
        {dataSourceConfiguration = newValue, ..}