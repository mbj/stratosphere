module Stratosphere.Connect.QuickConnect.UserQuickConnectConfigProperty (
        UserQuickConnectConfigProperty(..),
        mkUserQuickConnectConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserQuickConnectConfigProperty
  = UserQuickConnectConfigProperty {contactFlowArn :: (Value Prelude.Text),
                                    userArn :: (Value Prelude.Text)}
mkUserQuickConnectConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> UserQuickConnectConfigProperty
mkUserQuickConnectConfigProperty contactFlowArn userArn
  = UserQuickConnectConfigProperty
      {contactFlowArn = contactFlowArn, userArn = userArn}
instance ToResourceProperties UserQuickConnectConfigProperty where
  toResourceProperties UserQuickConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::QuickConnect.UserQuickConnectConfig",
         properties = ["ContactFlowArn" JSON..= contactFlowArn,
                       "UserArn" JSON..= userArn]}
instance JSON.ToJSON UserQuickConnectConfigProperty where
  toJSON UserQuickConnectConfigProperty {..}
    = JSON.object
        ["ContactFlowArn" JSON..= contactFlowArn,
         "UserArn" JSON..= userArn]
instance Property "ContactFlowArn" UserQuickConnectConfigProperty where
  type PropertyType "ContactFlowArn" UserQuickConnectConfigProperty = Value Prelude.Text
  set newValue UserQuickConnectConfigProperty {..}
    = UserQuickConnectConfigProperty {contactFlowArn = newValue, ..}
instance Property "UserArn" UserQuickConnectConfigProperty where
  type PropertyType "UserArn" UserQuickConnectConfigProperty = Value Prelude.Text
  set newValue UserQuickConnectConfigProperty {..}
    = UserQuickConnectConfigProperty {userArn = newValue, ..}