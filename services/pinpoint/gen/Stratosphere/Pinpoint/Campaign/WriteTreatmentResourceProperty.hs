module Stratosphere.Pinpoint.Campaign.WriteTreatmentResourceProperty (
        module Exports, WriteTreatmentResourceProperty(..),
        mkWriteTreatmentResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.CustomDeliveryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.MessageConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.Pinpoint.Campaign.TemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WriteTreatmentResourceProperty
  = WriteTreatmentResourceProperty {customDeliveryConfiguration :: (Prelude.Maybe CustomDeliveryConfigurationProperty),
                                    messageConfiguration :: (Prelude.Maybe MessageConfigurationProperty),
                                    schedule :: (Prelude.Maybe ScheduleProperty),
                                    sizePercent :: (Prelude.Maybe (Value Prelude.Integer)),
                                    templateConfiguration :: (Prelude.Maybe TemplateConfigurationProperty),
                                    treatmentDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                    treatmentName :: (Prelude.Maybe (Value Prelude.Text))}
mkWriteTreatmentResourceProperty :: WriteTreatmentResourceProperty
mkWriteTreatmentResourceProperty
  = WriteTreatmentResourceProperty
      {customDeliveryConfiguration = Prelude.Nothing,
       messageConfiguration = Prelude.Nothing, schedule = Prelude.Nothing,
       sizePercent = Prelude.Nothing,
       templateConfiguration = Prelude.Nothing,
       treatmentDescription = Prelude.Nothing,
       treatmentName = Prelude.Nothing}
instance ToResourceProperties WriteTreatmentResourceProperty where
  toResourceProperties WriteTreatmentResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.WriteTreatmentResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomDeliveryConfiguration"
                              Prelude.<$> customDeliveryConfiguration,
                            (JSON..=) "MessageConfiguration" Prelude.<$> messageConfiguration,
                            (JSON..=) "Schedule" Prelude.<$> schedule,
                            (JSON..=) "SizePercent" Prelude.<$> sizePercent,
                            (JSON..=) "TemplateConfiguration"
                              Prelude.<$> templateConfiguration,
                            (JSON..=) "TreatmentDescription" Prelude.<$> treatmentDescription,
                            (JSON..=) "TreatmentName" Prelude.<$> treatmentName])}
instance JSON.ToJSON WriteTreatmentResourceProperty where
  toJSON WriteTreatmentResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomDeliveryConfiguration"
                 Prelude.<$> customDeliveryConfiguration,
               (JSON..=) "MessageConfiguration" Prelude.<$> messageConfiguration,
               (JSON..=) "Schedule" Prelude.<$> schedule,
               (JSON..=) "SizePercent" Prelude.<$> sizePercent,
               (JSON..=) "TemplateConfiguration"
                 Prelude.<$> templateConfiguration,
               (JSON..=) "TreatmentDescription" Prelude.<$> treatmentDescription,
               (JSON..=) "TreatmentName" Prelude.<$> treatmentName]))
instance Property "CustomDeliveryConfiguration" WriteTreatmentResourceProperty where
  type PropertyType "CustomDeliveryConfiguration" WriteTreatmentResourceProperty = CustomDeliveryConfigurationProperty
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {customDeliveryConfiguration = Prelude.pure newValue, ..}
instance Property "MessageConfiguration" WriteTreatmentResourceProperty where
  type PropertyType "MessageConfiguration" WriteTreatmentResourceProperty = MessageConfigurationProperty
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {messageConfiguration = Prelude.pure newValue, ..}
instance Property "Schedule" WriteTreatmentResourceProperty where
  type PropertyType "Schedule" WriteTreatmentResourceProperty = ScheduleProperty
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {schedule = Prelude.pure newValue, ..}
instance Property "SizePercent" WriteTreatmentResourceProperty where
  type PropertyType "SizePercent" WriteTreatmentResourceProperty = Value Prelude.Integer
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {sizePercent = Prelude.pure newValue, ..}
instance Property "TemplateConfiguration" WriteTreatmentResourceProperty where
  type PropertyType "TemplateConfiguration" WriteTreatmentResourceProperty = TemplateConfigurationProperty
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {templateConfiguration = Prelude.pure newValue, ..}
instance Property "TreatmentDescription" WriteTreatmentResourceProperty where
  type PropertyType "TreatmentDescription" WriteTreatmentResourceProperty = Value Prelude.Text
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {treatmentDescription = Prelude.pure newValue, ..}
instance Property "TreatmentName" WriteTreatmentResourceProperty where
  type PropertyType "TreatmentName" WriteTreatmentResourceProperty = Value Prelude.Text
  set newValue WriteTreatmentResourceProperty {..}
    = WriteTreatmentResourceProperty
        {treatmentName = Prelude.pure newValue, ..}