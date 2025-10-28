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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-userquickconnectconfig.html>
    UserQuickConnectConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-userquickconnectconfig.html#cfn-connect-quickconnect-userquickconnectconfig-contactflowarn>
                                    contactFlowArn :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-userquickconnectconfig.html#cfn-connect-quickconnect-userquickconnectconfig-userarn>
                                    userArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserQuickConnectConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> UserQuickConnectConfigProperty
mkUserQuickConnectConfigProperty contactFlowArn userArn
  = UserQuickConnectConfigProperty
      {haddock_workaround_ = (), contactFlowArn = contactFlowArn,
       userArn = userArn}
instance ToResourceProperties UserQuickConnectConfigProperty where
  toResourceProperties UserQuickConnectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::QuickConnect.UserQuickConnectConfig",
         supportsTags = Prelude.False,
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