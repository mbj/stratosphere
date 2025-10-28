module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionTypeProperty (
        AccountTakeoverActionTypeProperty(..),
        mkAccountTakeoverActionTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountTakeoverActionTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html>
    AccountTakeoverActionTypeProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-eventaction>
                                       eventAction :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-notify>
                                       notify :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountTakeoverActionTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> AccountTakeoverActionTypeProperty
mkAccountTakeoverActionTypeProperty eventAction notify
  = AccountTakeoverActionTypeProperty
      {haddock_workaround_ = (), eventAction = eventAction,
       notify = notify}
instance ToResourceProperties AccountTakeoverActionTypeProperty where
  toResourceProperties AccountTakeoverActionTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionType",
         supportsTags = Prelude.False,
         properties = ["EventAction" JSON..= eventAction,
                       "Notify" JSON..= notify]}
instance JSON.ToJSON AccountTakeoverActionTypeProperty where
  toJSON AccountTakeoverActionTypeProperty {..}
    = JSON.object
        ["EventAction" JSON..= eventAction, "Notify" JSON..= notify]
instance Property "EventAction" AccountTakeoverActionTypeProperty where
  type PropertyType "EventAction" AccountTakeoverActionTypeProperty = Value Prelude.Text
  set newValue AccountTakeoverActionTypeProperty {..}
    = AccountTakeoverActionTypeProperty {eventAction = newValue, ..}
instance Property "Notify" AccountTakeoverActionTypeProperty where
  type PropertyType "Notify" AccountTakeoverActionTypeProperty = Value Prelude.Bool
  set newValue AccountTakeoverActionTypeProperty {..}
    = AccountTakeoverActionTypeProperty {notify = newValue, ..}