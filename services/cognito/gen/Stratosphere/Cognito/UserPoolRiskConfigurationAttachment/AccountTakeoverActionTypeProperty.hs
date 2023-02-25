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
  = AccountTakeoverActionTypeProperty {eventAction :: (Value Prelude.Text),
                                       notify :: (Value Prelude.Bool)}
mkAccountTakeoverActionTypeProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> AccountTakeoverActionTypeProperty
mkAccountTakeoverActionTypeProperty eventAction notify
  = AccountTakeoverActionTypeProperty
      {eventAction = eventAction, notify = notify}
instance ToResourceProperties AccountTakeoverActionTypeProperty where
  toResourceProperties AccountTakeoverActionTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionType",
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