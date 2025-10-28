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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html>
    PushTemplate {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-adm>
                  aDM :: (Prelude.Maybe AndroidPushNotificationTemplateProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-apns>
                  aPNS :: (Prelude.Maybe APNSPushNotificationTemplateProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-baidu>
                  baidu :: (Prelude.Maybe AndroidPushNotificationTemplateProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-default>
                  default' :: (Prelude.Maybe DefaultPushNotificationTemplateProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-defaultsubstitutions>
                  defaultSubstitutions :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-gcm>
                  gCM :: (Prelude.Maybe AndroidPushNotificationTemplateProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-tags>
                  tags :: (Prelude.Maybe JSON.Object),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-templatedescription>
                  templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-pushtemplate.html#cfn-pinpoint-pushtemplate-templatename>
                  templateName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPushTemplate :: Value Prelude.Text -> PushTemplate
mkPushTemplate templateName
  = PushTemplate
      {haddock_workaround_ = (), templateName = templateName,
       aDM = Prelude.Nothing, aPNS = Prelude.Nothing,
       baidu = Prelude.Nothing, default' = Prelude.Nothing,
       defaultSubstitutions = Prelude.Nothing, gCM = Prelude.Nothing,
       tags = Prelude.Nothing, templateDescription = Prelude.Nothing}
instance ToResourceProperties PushTemplate where
  toResourceProperties PushTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::PushTemplate",
         supportsTags = Prelude.True,
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