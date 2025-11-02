module Stratosphere.Connect.Rule.NotificationRecipientTypeProperty (
        NotificationRecipientTypeProperty(..),
        mkNotificationRecipientTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationRecipientTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-notificationrecipienttype.html>
    NotificationRecipientTypeProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-notificationrecipienttype.html#cfn-connect-rule-notificationrecipienttype-userarns>
                                       userArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-notificationrecipienttype.html#cfn-connect-rule-notificationrecipienttype-usertags>
                                       userTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationRecipientTypeProperty ::
  NotificationRecipientTypeProperty
mkNotificationRecipientTypeProperty
  = NotificationRecipientTypeProperty
      {haddock_workaround_ = (), userArns = Prelude.Nothing,
       userTags = Prelude.Nothing}
instance ToResourceProperties NotificationRecipientTypeProperty where
  toResourceProperties NotificationRecipientTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.NotificationRecipientType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UserArns" Prelude.<$> userArns,
                            (JSON..=) "UserTags" Prelude.<$> userTags])}
instance JSON.ToJSON NotificationRecipientTypeProperty where
  toJSON NotificationRecipientTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UserArns" Prelude.<$> userArns,
               (JSON..=) "UserTags" Prelude.<$> userTags]))
instance Property "UserArns" NotificationRecipientTypeProperty where
  type PropertyType "UserArns" NotificationRecipientTypeProperty = ValueList Prelude.Text
  set newValue NotificationRecipientTypeProperty {..}
    = NotificationRecipientTypeProperty
        {userArns = Prelude.pure newValue, ..}
instance Property "UserTags" NotificationRecipientTypeProperty where
  type PropertyType "UserTags" NotificationRecipientTypeProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue NotificationRecipientTypeProperty {..}
    = NotificationRecipientTypeProperty
        {userTags = Prelude.pure newValue, ..}