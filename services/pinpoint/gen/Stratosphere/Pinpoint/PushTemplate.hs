module Stratosphere.Pinpoint.PushTemplate (
        module Exports, PushTemplate(..), mkPushTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.PushTemplate.APNSPushNotificationTemplateProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.PushTemplate.AndroidPushNotificationTemplateProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.PushTemplate.DefaultPushNotificationTemplateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PushTemplate
  = PushTemplate {aDM :: (Prelude.Maybe AndroidPushNotificationTemplateProperty),
                  aPNS :: (Prelude.Maybe APNSPushNotificationTemplateProperty),
                  baidu :: (Prelude.Maybe AndroidPushNotificationTemplateProperty),
                  default' :: (Prelude.Maybe DefaultPushNotificationTemplateProperty),
                  defaultSubstitutions :: (Prelude.Maybe (Value Prelude.Text)),
                  gCM :: (Prelude.Maybe AndroidPushNotificationTemplateProperty),
                  tags :: (Prelude.Maybe JSON.Object),
                  templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                  templateName :: (Value Prelude.Text)}
mkPushTemplate :: Value Prelude.Text -> PushTemplate
mkPushTemplate templateName
  = PushTemplate
      {templateName = templateName, aDM = Prelude.Nothing,
       aPNS = Prelude.Nothing, baidu = Prelude.Nothing,
       default' = Prelude.Nothing, defaultSubstitutions = Prelude.Nothing,
       gCM = Prelude.Nothing, tags = Prelude.Nothing,
       templateDescription = Prelude.Nothing}
instance ToResourceProperties PushTemplate where
  toResourceProperties PushTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::PushTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TemplateName" JSON..= templateName]
                           (Prelude.catMaybes
                              [(JSON..=) "ADM" Prelude.<$> aDM,
                               (JSON..=) "APNS" Prelude.<$> aPNS,
                               (JSON..=) "Baidu" Prelude.<$> baidu,
                               (JSON..=) "Default" Prelude.<$> default',
                               (JSON..=) "DefaultSubstitutions" Prelude.<$> defaultSubstitutions,
                               (JSON..=) "GCM" Prelude.<$> gCM, (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateDescription" Prelude.<$> templateDescription]))}
instance JSON.ToJSON PushTemplate where
  toJSON PushTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TemplateName" JSON..= templateName]
              (Prelude.catMaybes
                 [(JSON..=) "ADM" Prelude.<$> aDM,
                  (JSON..=) "APNS" Prelude.<$> aPNS,
                  (JSON..=) "Baidu" Prelude.<$> baidu,
                  (JSON..=) "Default" Prelude.<$> default',
                  (JSON..=) "DefaultSubstitutions" Prelude.<$> defaultSubstitutions,
                  (JSON..=) "GCM" Prelude.<$> gCM, (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateDescription" Prelude.<$> templateDescription])))
instance Property "ADM" PushTemplate where
  type PropertyType "ADM" PushTemplate = AndroidPushNotificationTemplateProperty
  set newValue PushTemplate {..}
    = PushTemplate {aDM = Prelude.pure newValue, ..}
instance Property "APNS" PushTemplate where
  type PropertyType "APNS" PushTemplate = APNSPushNotificationTemplateProperty
  set newValue PushTemplate {..}
    = PushTemplate {aPNS = Prelude.pure newValue, ..}
instance Property "Baidu" PushTemplate where
  type PropertyType "Baidu" PushTemplate = AndroidPushNotificationTemplateProperty
  set newValue PushTemplate {..}
    = PushTemplate {baidu = Prelude.pure newValue, ..}
instance Property "Default" PushTemplate where
  type PropertyType "Default" PushTemplate = DefaultPushNotificationTemplateProperty
  set newValue PushTemplate {..}
    = PushTemplate {default' = Prelude.pure newValue, ..}
instance Property "DefaultSubstitutions" PushTemplate where
  type PropertyType "DefaultSubstitutions" PushTemplate = Value Prelude.Text
  set newValue PushTemplate {..}
    = PushTemplate {defaultSubstitutions = Prelude.pure newValue, ..}
instance Property "GCM" PushTemplate where
  type PropertyType "GCM" PushTemplate = AndroidPushNotificationTemplateProperty
  set newValue PushTemplate {..}
    = PushTemplate {gCM = Prelude.pure newValue, ..}
instance Property "Tags" PushTemplate where
  type PropertyType "Tags" PushTemplate = JSON.Object
  set newValue PushTemplate {..}
    = PushTemplate {tags = Prelude.pure newValue, ..}
instance Property "TemplateDescription" PushTemplate where
  type PropertyType "TemplateDescription" PushTemplate = Value Prelude.Text
  set newValue PushTemplate {..}
    = PushTemplate {templateDescription = Prelude.pure newValue, ..}
instance Property "TemplateName" PushTemplate where
  type PropertyType "TemplateName" PushTemplate = Value Prelude.Text
  set newValue PushTemplate {..}
    = PushTemplate {templateName = newValue, ..}