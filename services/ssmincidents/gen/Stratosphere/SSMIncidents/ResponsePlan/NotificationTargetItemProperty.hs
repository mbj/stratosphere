module Stratosphere.SSMIncidents.ResponsePlan.NotificationTargetItemProperty (
        NotificationTargetItemProperty(..),
        mkNotificationTargetItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotificationTargetItemProperty
  = NotificationTargetItemProperty {snsTopicArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotificationTargetItemProperty :: NotificationTargetItemProperty
mkNotificationTargetItemProperty
  = NotificationTargetItemProperty {snsTopicArn = Prelude.Nothing}
instance ToResourceProperties NotificationTargetItemProperty where
  toResourceProperties NotificationTargetItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.NotificationTargetItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn])}
instance JSON.ToJSON NotificationTargetItemProperty where
  toJSON NotificationTargetItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn]))
instance Property "SnsTopicArn" NotificationTargetItemProperty where
  type PropertyType "SnsTopicArn" NotificationTargetItemProperty = Value Prelude.Text
  set newValue NotificationTargetItemProperty {}
    = NotificationTargetItemProperty
        {snsTopicArn = Prelude.pure newValue, ..}