module Stratosphere.Pinpoint.Campaign.MessageConfigurationProperty (
        module Exports, MessageConfigurationProperty(..),
        mkMessageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CampaignCustomMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CampaignEmailMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CampaignInAppMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CampaignSmsMessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.MessageProperty as Exports
import Stratosphere.ResourceProperties
data MessageConfigurationProperty
  = MessageConfigurationProperty {aDMMessage :: (Prelude.Maybe MessageProperty),
                                  aPNSMessage :: (Prelude.Maybe MessageProperty),
                                  baiduMessage :: (Prelude.Maybe MessageProperty),
                                  customMessage :: (Prelude.Maybe CampaignCustomMessageProperty),
                                  defaultMessage :: (Prelude.Maybe MessageProperty),
                                  emailMessage :: (Prelude.Maybe CampaignEmailMessageProperty),
                                  gCMMessage :: (Prelude.Maybe MessageProperty),
                                  inAppMessage :: (Prelude.Maybe CampaignInAppMessageProperty),
                                  sMSMessage :: (Prelude.Maybe CampaignSmsMessageProperty)}
mkMessageConfigurationProperty :: MessageConfigurationProperty
mkMessageConfigurationProperty
  = MessageConfigurationProperty
      {aDMMessage = Prelude.Nothing, aPNSMessage = Prelude.Nothing,
       baiduMessage = Prelude.Nothing, customMessage = Prelude.Nothing,
       defaultMessage = Prelude.Nothing, emailMessage = Prelude.Nothing,
       gCMMessage = Prelude.Nothing, inAppMessage = Prelude.Nothing,
       sMSMessage = Prelude.Nothing}
instance ToResourceProperties MessageConfigurationProperty where
  toResourceProperties MessageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.MessageConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ADMMessage" Prelude.<$> aDMMessage,
                            (JSON..=) "APNSMessage" Prelude.<$> aPNSMessage,
                            (JSON..=) "BaiduMessage" Prelude.<$> baiduMessage,
                            (JSON..=) "CustomMessage" Prelude.<$> customMessage,
                            (JSON..=) "DefaultMessage" Prelude.<$> defaultMessage,
                            (JSON..=) "EmailMessage" Prelude.<$> emailMessage,
                            (JSON..=) "GCMMessage" Prelude.<$> gCMMessage,
                            (JSON..=) "InAppMessage" Prelude.<$> inAppMessage,
                            (JSON..=) "SMSMessage" Prelude.<$> sMSMessage])}
instance JSON.ToJSON MessageConfigurationProperty where
  toJSON MessageConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ADMMessage" Prelude.<$> aDMMessage,
               (JSON..=) "APNSMessage" Prelude.<$> aPNSMessage,
               (JSON..=) "BaiduMessage" Prelude.<$> baiduMessage,
               (JSON..=) "CustomMessage" Prelude.<$> customMessage,
               (JSON..=) "DefaultMessage" Prelude.<$> defaultMessage,
               (JSON..=) "EmailMessage" Prelude.<$> emailMessage,
               (JSON..=) "GCMMessage" Prelude.<$> gCMMessage,
               (JSON..=) "InAppMessage" Prelude.<$> inAppMessage,
               (JSON..=) "SMSMessage" Prelude.<$> sMSMessage]))
instance Property "ADMMessage" MessageConfigurationProperty where
  type PropertyType "ADMMessage" MessageConfigurationProperty = MessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {aDMMessage = Prelude.pure newValue, ..}
instance Property "APNSMessage" MessageConfigurationProperty where
  type PropertyType "APNSMessage" MessageConfigurationProperty = MessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {aPNSMessage = Prelude.pure newValue, ..}
instance Property "BaiduMessage" MessageConfigurationProperty where
  type PropertyType "BaiduMessage" MessageConfigurationProperty = MessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {baiduMessage = Prelude.pure newValue, ..}
instance Property "CustomMessage" MessageConfigurationProperty where
  type PropertyType "CustomMessage" MessageConfigurationProperty = CampaignCustomMessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {customMessage = Prelude.pure newValue, ..}
instance Property "DefaultMessage" MessageConfigurationProperty where
  type PropertyType "DefaultMessage" MessageConfigurationProperty = MessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {defaultMessage = Prelude.pure newValue, ..}
instance Property "EmailMessage" MessageConfigurationProperty where
  type PropertyType "EmailMessage" MessageConfigurationProperty = CampaignEmailMessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {emailMessage = Prelude.pure newValue, ..}
instance Property "GCMMessage" MessageConfigurationProperty where
  type PropertyType "GCMMessage" MessageConfigurationProperty = MessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {gCMMessage = Prelude.pure newValue, ..}
instance Property "InAppMessage" MessageConfigurationProperty where
  type PropertyType "InAppMessage" MessageConfigurationProperty = CampaignInAppMessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {inAppMessage = Prelude.pure newValue, ..}
instance Property "SMSMessage" MessageConfigurationProperty where
  type PropertyType "SMSMessage" MessageConfigurationProperty = CampaignSmsMessageProperty
  set newValue MessageConfigurationProperty {..}
    = MessageConfigurationProperty
        {sMSMessage = Prelude.pure newValue, ..}