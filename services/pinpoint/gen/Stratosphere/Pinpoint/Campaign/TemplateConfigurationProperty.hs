module Stratosphere.Pinpoint.Campaign.TemplateConfigurationProperty (
        module Exports, TemplateConfigurationProperty(..),
        mkTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.TemplateProperty as Exports
import Stratosphere.ResourceProperties
data TemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-templateconfiguration.html>
    TemplateConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-templateconfiguration.html#cfn-pinpoint-campaign-templateconfiguration-emailtemplate>
                                   emailTemplate :: (Prelude.Maybe TemplateProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-templateconfiguration.html#cfn-pinpoint-campaign-templateconfiguration-pushtemplate>
                                   pushTemplate :: (Prelude.Maybe TemplateProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-templateconfiguration.html#cfn-pinpoint-campaign-templateconfiguration-smstemplate>
                                   sMSTemplate :: (Prelude.Maybe TemplateProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-templateconfiguration.html#cfn-pinpoint-campaign-templateconfiguration-voicetemplate>
                                   voiceTemplate :: (Prelude.Maybe TemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplateConfigurationProperty :: TemplateConfigurationProperty
mkTemplateConfigurationProperty
  = TemplateConfigurationProperty
      {haddock_workaround_ = (), emailTemplate = Prelude.Nothing,
       pushTemplate = Prelude.Nothing, sMSTemplate = Prelude.Nothing,
       voiceTemplate = Prelude.Nothing}
instance ToResourceProperties TemplateConfigurationProperty where
  toResourceProperties TemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.TemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailTemplate" Prelude.<$> emailTemplate,
                            (JSON..=) "PushTemplate" Prelude.<$> pushTemplate,
                            (JSON..=) "SMSTemplate" Prelude.<$> sMSTemplate,
                            (JSON..=) "VoiceTemplate" Prelude.<$> voiceTemplate])}
instance JSON.ToJSON TemplateConfigurationProperty where
  toJSON TemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailTemplate" Prelude.<$> emailTemplate,
               (JSON..=) "PushTemplate" Prelude.<$> pushTemplate,
               (JSON..=) "SMSTemplate" Prelude.<$> sMSTemplate,
               (JSON..=) "VoiceTemplate" Prelude.<$> voiceTemplate]))
instance Property "EmailTemplate" TemplateConfigurationProperty where
  type PropertyType "EmailTemplate" TemplateConfigurationProperty = TemplateProperty
  set newValue TemplateConfigurationProperty {..}
    = TemplateConfigurationProperty
        {emailTemplate = Prelude.pure newValue, ..}
instance Property "PushTemplate" TemplateConfigurationProperty where
  type PropertyType "PushTemplate" TemplateConfigurationProperty = TemplateProperty
  set newValue TemplateConfigurationProperty {..}
    = TemplateConfigurationProperty
        {pushTemplate = Prelude.pure newValue, ..}
instance Property "SMSTemplate" TemplateConfigurationProperty where
  type PropertyType "SMSTemplate" TemplateConfigurationProperty = TemplateProperty
  set newValue TemplateConfigurationProperty {..}
    = TemplateConfigurationProperty
        {sMSTemplate = Prelude.pure newValue, ..}
instance Property "VoiceTemplate" TemplateConfigurationProperty where
  type PropertyType "VoiceTemplate" TemplateConfigurationProperty = TemplateProperty
  set newValue TemplateConfigurationProperty {..}
    = TemplateConfigurationProperty
        {voiceTemplate = Prelude.pure newValue, ..}