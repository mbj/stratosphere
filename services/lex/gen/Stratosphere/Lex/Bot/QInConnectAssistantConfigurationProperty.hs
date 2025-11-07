module Stratosphere.Lex.Bot.QInConnectAssistantConfigurationProperty (
        QInConnectAssistantConfigurationProperty(..),
        mkQInConnectAssistantConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QInConnectAssistantConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qinconnectassistantconfiguration.html>
    QInConnectAssistantConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-qinconnectassistantconfiguration.html#cfn-lex-bot-qinconnectassistantconfiguration-assistantarn>
                                              assistantArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQInConnectAssistantConfigurationProperty ::
  Value Prelude.Text -> QInConnectAssistantConfigurationProperty
mkQInConnectAssistantConfigurationProperty assistantArn
  = QInConnectAssistantConfigurationProperty
      {haddock_workaround_ = (), assistantArn = assistantArn}
instance ToResourceProperties QInConnectAssistantConfigurationProperty where
  toResourceProperties QInConnectAssistantConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.QInConnectAssistantConfiguration",
         supportsTags = Prelude.False,
         properties = ["AssistantArn" JSON..= assistantArn]}
instance JSON.ToJSON QInConnectAssistantConfigurationProperty where
  toJSON QInConnectAssistantConfigurationProperty {..}
    = JSON.object ["AssistantArn" JSON..= assistantArn]
instance Property "AssistantArn" QInConnectAssistantConfigurationProperty where
  type PropertyType "AssistantArn" QInConnectAssistantConfigurationProperty = Value Prelude.Text
  set newValue QInConnectAssistantConfigurationProperty {..}
    = QInConnectAssistantConfigurationProperty
        {assistantArn = newValue, ..}