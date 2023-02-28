module Stratosphere.Config.OrganizationConformancePack (
        module Exports, OrganizationConformancePack(..),
        mkOrganizationConformancePack
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.OrganizationConformancePack.ConformancePackInputParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationConformancePack
  = OrganizationConformancePack {conformancePackInputParameters :: (Prelude.Maybe [ConformancePackInputParameterProperty]),
                                 deliveryS3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                                 deliveryS3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                 excludedAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 organizationConformancePackName :: (Value Prelude.Text),
                                 templateBody :: (Prelude.Maybe (Value Prelude.Text)),
                                 templateS3Uri :: (Prelude.Maybe (Value Prelude.Text))}
mkOrganizationConformancePack ::
  Value Prelude.Text -> OrganizationConformancePack
mkOrganizationConformancePack organizationConformancePackName
  = OrganizationConformancePack
      {organizationConformancePackName = organizationConformancePackName,
       conformancePackInputParameters = Prelude.Nothing,
       deliveryS3Bucket = Prelude.Nothing,
       deliveryS3KeyPrefix = Prelude.Nothing,
       excludedAccounts = Prelude.Nothing, templateBody = Prelude.Nothing,
       templateS3Uri = Prelude.Nothing}
instance ToResourceProperties OrganizationConformancePack where
  toResourceProperties OrganizationConformancePack {..}
    = ResourceProperties
        {awsType = "AWS::Config::OrganizationConformancePack",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OrganizationConformancePackName"
                              JSON..= organizationConformancePackName]
                           (Prelude.catMaybes
                              [(JSON..=) "ConformancePackInputParameters"
                                 Prelude.<$> conformancePackInputParameters,
                               (JSON..=) "DeliveryS3Bucket" Prelude.<$> deliveryS3Bucket,
                               (JSON..=) "DeliveryS3KeyPrefix" Prelude.<$> deliveryS3KeyPrefix,
                               (JSON..=) "ExcludedAccounts" Prelude.<$> excludedAccounts,
                               (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                               (JSON..=) "TemplateS3Uri" Prelude.<$> templateS3Uri]))}
instance JSON.ToJSON OrganizationConformancePack where
  toJSON OrganizationConformancePack {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OrganizationConformancePackName"
                 JSON..= organizationConformancePackName]
              (Prelude.catMaybes
                 [(JSON..=) "ConformancePackInputParameters"
                    Prelude.<$> conformancePackInputParameters,
                  (JSON..=) "DeliveryS3Bucket" Prelude.<$> deliveryS3Bucket,
                  (JSON..=) "DeliveryS3KeyPrefix" Prelude.<$> deliveryS3KeyPrefix,
                  (JSON..=) "ExcludedAccounts" Prelude.<$> excludedAccounts,
                  (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                  (JSON..=) "TemplateS3Uri" Prelude.<$> templateS3Uri])))
instance Property "ConformancePackInputParameters" OrganizationConformancePack where
  type PropertyType "ConformancePackInputParameters" OrganizationConformancePack = [ConformancePackInputParameterProperty]
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {conformancePackInputParameters = Prelude.pure newValue, ..}
instance Property "DeliveryS3Bucket" OrganizationConformancePack where
  type PropertyType "DeliveryS3Bucket" OrganizationConformancePack = Value Prelude.Text
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {deliveryS3Bucket = Prelude.pure newValue, ..}
instance Property "DeliveryS3KeyPrefix" OrganizationConformancePack where
  type PropertyType "DeliveryS3KeyPrefix" OrganizationConformancePack = Value Prelude.Text
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {deliveryS3KeyPrefix = Prelude.pure newValue, ..}
instance Property "ExcludedAccounts" OrganizationConformancePack where
  type PropertyType "ExcludedAccounts" OrganizationConformancePack = ValueList Prelude.Text
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {excludedAccounts = Prelude.pure newValue, ..}
instance Property "OrganizationConformancePackName" OrganizationConformancePack where
  type PropertyType "OrganizationConformancePackName" OrganizationConformancePack = Value Prelude.Text
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {organizationConformancePackName = newValue, ..}
instance Property "TemplateBody" OrganizationConformancePack where
  type PropertyType "TemplateBody" OrganizationConformancePack = Value Prelude.Text
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {templateBody = Prelude.pure newValue, ..}
instance Property "TemplateS3Uri" OrganizationConformancePack where
  type PropertyType "TemplateS3Uri" OrganizationConformancePack = Value Prelude.Text
  set newValue OrganizationConformancePack {..}
    = OrganizationConformancePack
        {templateS3Uri = Prelude.pure newValue, ..}