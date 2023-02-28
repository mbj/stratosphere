module Stratosphere.Glue.Trigger.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Trigger.NotificationPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = ActionProperty {arguments :: (Prelude.Maybe JSON.Object),
                    crawlerName :: (Prelude.Maybe (Value Prelude.Text)),
                    jobName :: (Prelude.Maybe (Value Prelude.Text)),
                    notificationProperty :: (Prelude.Maybe NotificationPropertyProperty),
                    securityConfiguration :: (Prelude.Maybe (Value Prelude.Text)),
                    timeout :: (Prelude.Maybe (Value Prelude.Integer))}
mkActionProperty :: ActionProperty
mkActionProperty
  = ActionProperty
      {arguments = Prelude.Nothing, crawlerName = Prelude.Nothing,
       jobName = Prelude.Nothing, notificationProperty = Prelude.Nothing,
       securityConfiguration = Prelude.Nothing, timeout = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Trigger.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arguments" Prelude.<$> arguments,
                            (JSON..=) "CrawlerName" Prelude.<$> crawlerName,
                            (JSON..=) "JobName" Prelude.<$> jobName,
                            (JSON..=) "NotificationProperty" Prelude.<$> notificationProperty,
                            (JSON..=) "SecurityConfiguration"
                              Prelude.<$> securityConfiguration,
                            (JSON..=) "Timeout" Prelude.<$> timeout])}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arguments" Prelude.<$> arguments,
               (JSON..=) "CrawlerName" Prelude.<$> crawlerName,
               (JSON..=) "JobName" Prelude.<$> jobName,
               (JSON..=) "NotificationProperty" Prelude.<$> notificationProperty,
               (JSON..=) "SecurityConfiguration"
                 Prelude.<$> securityConfiguration,
               (JSON..=) "Timeout" Prelude.<$> timeout]))
instance Property "Arguments" ActionProperty where
  type PropertyType "Arguments" ActionProperty = JSON.Object
  set newValue ActionProperty {..}
    = ActionProperty {arguments = Prelude.pure newValue, ..}
instance Property "CrawlerName" ActionProperty where
  type PropertyType "CrawlerName" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {crawlerName = Prelude.pure newValue, ..}
instance Property "JobName" ActionProperty where
  type PropertyType "JobName" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {jobName = Prelude.pure newValue, ..}
instance Property "NotificationProperty" ActionProperty where
  type PropertyType "NotificationProperty" ActionProperty = NotificationPropertyProperty
  set newValue ActionProperty {..}
    = ActionProperty {notificationProperty = Prelude.pure newValue, ..}
instance Property "SecurityConfiguration" ActionProperty where
  type PropertyType "SecurityConfiguration" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty
        {securityConfiguration = Prelude.pure newValue, ..}
instance Property "Timeout" ActionProperty where
  type PropertyType "Timeout" ActionProperty = Value Prelude.Integer
  set newValue ActionProperty {..}
    = ActionProperty {timeout = Prelude.pure newValue, ..}