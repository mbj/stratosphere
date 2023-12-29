module Stratosphere.Pinpoint.Campaign (
        module Exports, Campaign(..), mkCampaign
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CampaignHookProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CustomDeliveryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.LimitsProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.MessageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.TemplateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.WriteTreatmentResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Campaign
  = Campaign {additionalTreatments :: (Prelude.Maybe [WriteTreatmentResourceProperty]),
              applicationId :: (Value Prelude.Text),
              campaignHook :: (Prelude.Maybe CampaignHookProperty),
              customDeliveryConfiguration :: (Prelude.Maybe CustomDeliveryConfigurationProperty),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              holdoutPercent :: (Prelude.Maybe (Value Prelude.Integer)),
              isPaused :: (Prelude.Maybe (Value Prelude.Bool)),
              limits :: (Prelude.Maybe LimitsProperty),
              messageConfiguration :: (Prelude.Maybe MessageConfigurationProperty),
              name :: (Value Prelude.Text),
              priority :: (Prelude.Maybe (Value Prelude.Integer)),
              schedule :: ScheduleProperty,
              segmentId :: (Value Prelude.Text),
              segmentVersion :: (Prelude.Maybe (Value Prelude.Integer)),
              tags :: (Prelude.Maybe JSON.Object),
              templateConfiguration :: (Prelude.Maybe TemplateConfigurationProperty),
              treatmentDescription :: (Prelude.Maybe (Value Prelude.Text)),
              treatmentName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaign ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ScheduleProperty -> Value Prelude.Text -> Campaign
mkCampaign applicationId name schedule segmentId
  = Campaign
      {applicationId = applicationId, name = name, schedule = schedule,
       segmentId = segmentId, additionalTreatments = Prelude.Nothing,
       campaignHook = Prelude.Nothing,
       customDeliveryConfiguration = Prelude.Nothing,
       description = Prelude.Nothing, holdoutPercent = Prelude.Nothing,
       isPaused = Prelude.Nothing, limits = Prelude.Nothing,
       messageConfiguration = Prelude.Nothing, priority = Prelude.Nothing,
       segmentVersion = Prelude.Nothing, tags = Prelude.Nothing,
       templateConfiguration = Prelude.Nothing,
       treatmentDescription = Prelude.Nothing,
       treatmentName = Prelude.Nothing}
instance ToResourceProperties Campaign where
  toResourceProperties Campaign {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId, "Name" JSON..= name,
                            "Schedule" JSON..= schedule, "SegmentId" JSON..= segmentId]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalTreatments" Prelude.<$> additionalTreatments,
                               (JSON..=) "CampaignHook" Prelude.<$> campaignHook,
                               (JSON..=) "CustomDeliveryConfiguration"
                                 Prelude.<$> customDeliveryConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "HoldoutPercent" Prelude.<$> holdoutPercent,
                               (JSON..=) "IsPaused" Prelude.<$> isPaused,
                               (JSON..=) "Limits" Prelude.<$> limits,
                               (JSON..=) "MessageConfiguration" Prelude.<$> messageConfiguration,
                               (JSON..=) "Priority" Prelude.<$> priority,
                               (JSON..=) "SegmentVersion" Prelude.<$> segmentVersion,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateConfiguration"
                                 Prelude.<$> templateConfiguration,
                               (JSON..=) "TreatmentDescription" Prelude.<$> treatmentDescription,
                               (JSON..=) "TreatmentName" Prelude.<$> treatmentName]))}
instance JSON.ToJSON Campaign where
  toJSON Campaign {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId, "Name" JSON..= name,
               "Schedule" JSON..= schedule, "SegmentId" JSON..= segmentId]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalTreatments" Prelude.<$> additionalTreatments,
                  (JSON..=) "CampaignHook" Prelude.<$> campaignHook,
                  (JSON..=) "CustomDeliveryConfiguration"
                    Prelude.<$> customDeliveryConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "HoldoutPercent" Prelude.<$> holdoutPercent,
                  (JSON..=) "IsPaused" Prelude.<$> isPaused,
                  (JSON..=) "Limits" Prelude.<$> limits,
                  (JSON..=) "MessageConfiguration" Prelude.<$> messageConfiguration,
                  (JSON..=) "Priority" Prelude.<$> priority,
                  (JSON..=) "SegmentVersion" Prelude.<$> segmentVersion,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateConfiguration"
                    Prelude.<$> templateConfiguration,
                  (JSON..=) "TreatmentDescription" Prelude.<$> treatmentDescription,
                  (JSON..=) "TreatmentName" Prelude.<$> treatmentName])))
instance Property "AdditionalTreatments" Campaign where
  type PropertyType "AdditionalTreatments" Campaign = [WriteTreatmentResourceProperty]
  set newValue Campaign {..}
    = Campaign {additionalTreatments = Prelude.pure newValue, ..}
instance Property "ApplicationId" Campaign where
  type PropertyType "ApplicationId" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {applicationId = newValue, ..}
instance Property "CampaignHook" Campaign where
  type PropertyType "CampaignHook" Campaign = CampaignHookProperty
  set newValue Campaign {..}
    = Campaign {campaignHook = Prelude.pure newValue, ..}
instance Property "CustomDeliveryConfiguration" Campaign where
  type PropertyType "CustomDeliveryConfiguration" Campaign = CustomDeliveryConfigurationProperty
  set newValue Campaign {..}
    = Campaign
        {customDeliveryConfiguration = Prelude.pure newValue, ..}
instance Property "Description" Campaign where
  type PropertyType "Description" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {description = Prelude.pure newValue, ..}
instance Property "HoldoutPercent" Campaign where
  type PropertyType "HoldoutPercent" Campaign = Value Prelude.Integer
  set newValue Campaign {..}
    = Campaign {holdoutPercent = Prelude.pure newValue, ..}
instance Property "IsPaused" Campaign where
  type PropertyType "IsPaused" Campaign = Value Prelude.Bool
  set newValue Campaign {..}
    = Campaign {isPaused = Prelude.pure newValue, ..}
instance Property "Limits" Campaign where
  type PropertyType "Limits" Campaign = LimitsProperty
  set newValue Campaign {..}
    = Campaign {limits = Prelude.pure newValue, ..}
instance Property "MessageConfiguration" Campaign where
  type PropertyType "MessageConfiguration" Campaign = MessageConfigurationProperty
  set newValue Campaign {..}
    = Campaign {messageConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Campaign where
  type PropertyType "Name" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {name = newValue, ..}
instance Property "Priority" Campaign where
  type PropertyType "Priority" Campaign = Value Prelude.Integer
  set newValue Campaign {..}
    = Campaign {priority = Prelude.pure newValue, ..}
instance Property "Schedule" Campaign where
  type PropertyType "Schedule" Campaign = ScheduleProperty
  set newValue Campaign {..} = Campaign {schedule = newValue, ..}
instance Property "SegmentId" Campaign where
  type PropertyType "SegmentId" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {segmentId = newValue, ..}
instance Property "SegmentVersion" Campaign where
  type PropertyType "SegmentVersion" Campaign = Value Prelude.Integer
  set newValue Campaign {..}
    = Campaign {segmentVersion = Prelude.pure newValue, ..}
instance Property "Tags" Campaign where
  type PropertyType "Tags" Campaign = JSON.Object
  set newValue Campaign {..}
    = Campaign {tags = Prelude.pure newValue, ..}
instance Property "TemplateConfiguration" Campaign where
  type PropertyType "TemplateConfiguration" Campaign = TemplateConfigurationProperty
  set newValue Campaign {..}
    = Campaign {templateConfiguration = Prelude.pure newValue, ..}
instance Property "TreatmentDescription" Campaign where
  type PropertyType "TreatmentDescription" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {treatmentDescription = Prelude.pure newValue, ..}
instance Property "TreatmentName" Campaign where
  type PropertyType "TreatmentName" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {treatmentName = Prelude.pure newValue, ..}