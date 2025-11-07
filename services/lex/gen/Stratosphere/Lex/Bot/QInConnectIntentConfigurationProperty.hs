module Stratosphere.Lex.Bot.QInConnectIntentConfigurationProperty (
        module Exports, QInConnectIntentConfigurationProperty(..),
        mkQInConnectIntentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.QInConnectAssistantConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data QInConnectIntentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qinconnectintentconfiguration.html>
    QInConnectIntentConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qinconnectintentconfiguration.html#cfn-lex-bot-qinconnectintentconfiguration-qinconnectassistantconfiguration>
                                           qInConnectAssistantConfiguration :: (Prelude.Maybe QInConnectAssistantConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQInConnectIntentConfigurationProperty ::
  QInConnectIntentConfigurationProperty
mkQInConnectIntentConfigurationProperty
  = QInConnectIntentConfigurationProperty
      {haddock_workaround_ = (),
       qInConnectAssistantConfiguration = Prelude.Nothing}
instance ToResourceProperties QInConnectIntentConfigurationProperty where
  toResourceProperties QInConnectIntentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.QInConnectIntentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "QInConnectAssistantConfiguration"
                              Prelude.<$> qInConnectAssistantConfiguration])}
instance JSON.ToJSON QInConnectIntentConfigurationProperty where
  toJSON QInConnectIntentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "QInConnectAssistantConfiguration"
                 Prelude.<$> qInConnectAssistantConfiguration]))
instance Property "QInConnectAssistantConfiguration" QInConnectIntentConfigurationProperty where
  type PropertyType "QInConnectAssistantConfiguration" QInConnectIntentConfigurationProperty = QInConnectAssistantConfigurationProperty
  set newValue QInConnectIntentConfigurationProperty {..}
    = QInConnectIntentConfigurationProperty
        {qInConnectAssistantConfiguration = Prelude.pure newValue, ..}