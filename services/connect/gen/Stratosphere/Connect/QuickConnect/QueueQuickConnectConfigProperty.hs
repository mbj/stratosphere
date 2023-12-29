module Stratosphere.Connect.QuickConnect.QueueQuickConnectConfigProperty (
        QueueQuickConnectConfigProperty(..),
        mkQueueQuickConnectConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueueQuickConnectConfigProperty
  = QueueQuickConnectConfigProperty {contactFlowArn :: (Value Prelude.Text),
                                     queueArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueueQuickConnectConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> QueueQuickConnectConfigProperty
mkQueueQuickConnectConfigProperty contactFlowArn queueArn
  = QueueQuickConnectConfigProperty
      {contactFlowArn = contactFlowArn, queueArn = queueArn}
instance ToResourceProperties QueueQuickConnectConfigProperty where
  toResourceProperties QueueQuickConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::QuickConnect.QueueQuickConnectConfig",
         supportsTags = Prelude.False,
         properties = ["ContactFlowArn" JSON..= contactFlowArn,
                       "QueueArn" JSON..= queueArn]}
instance JSON.ToJSON QueueQuickConnectConfigProperty where
  toJSON QueueQuickConnectConfigProperty {..}
    = JSON.object
        ["ContactFlowArn" JSON..= contactFlowArn,
         "QueueArn" JSON..= queueArn]
instance Property "ContactFlowArn" QueueQuickConnectConfigProperty where
  type PropertyType "ContactFlowArn" QueueQuickConnectConfigProperty = Value Prelude.Text
  set newValue QueueQuickConnectConfigProperty {..}
    = QueueQuickConnectConfigProperty {contactFlowArn = newValue, ..}
instance Property "QueueArn" QueueQuickConnectConfigProperty where
  type PropertyType "QueueArn" QueueQuickConnectConfigProperty = Value Prelude.Text
  set newValue QueueQuickConnectConfigProperty {..}
    = QueueQuickConnectConfigProperty {queueArn = newValue, ..}