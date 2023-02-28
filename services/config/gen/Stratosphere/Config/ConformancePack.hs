module Stratosphere.Config.ConformancePack (
        module Exports, ConformancePack(..), mkConformancePack
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.ConformancePack.ConformancePackInputParameterProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.ConformancePack.TemplateSSMDocumentDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConformancePack
  = ConformancePack {conformancePackInputParameters :: (Prelude.Maybe [ConformancePackInputParameterProperty]),
                     conformancePackName :: (Value Prelude.Text),
                     deliveryS3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                     deliveryS3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                     templateBody :: (Prelude.Maybe (Value Prelude.Text)),
                     templateS3Uri :: (Prelude.Maybe (Value Prelude.Text)),
                     templateSSMDocumentDetails :: (Prelude.Maybe TemplateSSMDocumentDetailsProperty)}
mkConformancePack :: Value Prelude.Text -> ConformancePack
mkConformancePack conformancePackName
  = ConformancePack
      {conformancePackName = conformancePackName,
       conformancePackInputParameters = Prelude.Nothing,
       deliveryS3Bucket = Prelude.Nothing,
       deliveryS3KeyPrefix = Prelude.Nothing,
       templateBody = Prelude.Nothing, templateS3Uri = Prelude.Nothing,
       templateSSMDocumentDetails = Prelude.Nothing}
instance ToResourceProperties ConformancePack where
  toResourceProperties ConformancePack {..}
    = ResourceProperties
        {awsType = "AWS::Config::ConformancePack",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConformancePackName" JSON..= conformancePackName]
                           (Prelude.catMaybes
                              [(JSON..=) "ConformancePackInputParameters"
                                 Prelude.<$> conformancePackInputParameters,
                               (JSON..=) "DeliveryS3Bucket" Prelude.<$> deliveryS3Bucket,
                               (JSON..=) "DeliveryS3KeyPrefix" Prelude.<$> deliveryS3KeyPrefix,
                               (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                               (JSON..=) "TemplateS3Uri" Prelude.<$> templateS3Uri,
                               (JSON..=) "TemplateSSMDocumentDetails"
                                 Prelude.<$> templateSSMDocumentDetails]))}
instance JSON.ToJSON ConformancePack where
  toJSON ConformancePack {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConformancePackName" JSON..= conformancePackName]
              (Prelude.catMaybes
                 [(JSON..=) "ConformancePackInputParameters"
                    Prelude.<$> conformancePackInputParameters,
                  (JSON..=) "DeliveryS3Bucket" Prelude.<$> deliveryS3Bucket,
                  (JSON..=) "DeliveryS3KeyPrefix" Prelude.<$> deliveryS3KeyPrefix,
                  (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                  (JSON..=) "TemplateS3Uri" Prelude.<$> templateS3Uri,
                  (JSON..=) "TemplateSSMDocumentDetails"
                    Prelude.<$> templateSSMDocumentDetails])))
instance Property "ConformancePackInputParameters" ConformancePack where
  type PropertyType "ConformancePackInputParameters" ConformancePack = [ConformancePackInputParameterProperty]
  set newValue ConformancePack {..}
    = ConformancePack
        {conformancePackInputParameters = Prelude.pure newValue, ..}
instance Property "ConformancePackName" ConformancePack where
  type PropertyType "ConformancePackName" ConformancePack = Value Prelude.Text
  set newValue ConformancePack {..}
    = ConformancePack {conformancePackName = newValue, ..}
instance Property "DeliveryS3Bucket" ConformancePack where
  type PropertyType "DeliveryS3Bucket" ConformancePack = Value Prelude.Text
  set newValue ConformancePack {..}
    = ConformancePack {deliveryS3Bucket = Prelude.pure newValue, ..}
instance Property "DeliveryS3KeyPrefix" ConformancePack where
  type PropertyType "DeliveryS3KeyPrefix" ConformancePack = Value Prelude.Text
  set newValue ConformancePack {..}
    = ConformancePack {deliveryS3KeyPrefix = Prelude.pure newValue, ..}
instance Property "TemplateBody" ConformancePack where
  type PropertyType "TemplateBody" ConformancePack = Value Prelude.Text
  set newValue ConformancePack {..}
    = ConformancePack {templateBody = Prelude.pure newValue, ..}
instance Property "TemplateS3Uri" ConformancePack where
  type PropertyType "TemplateS3Uri" ConformancePack = Value Prelude.Text
  set newValue ConformancePack {..}
    = ConformancePack {templateS3Uri = Prelude.pure newValue, ..}
instance Property "TemplateSSMDocumentDetails" ConformancePack where
  type PropertyType "TemplateSSMDocumentDetails" ConformancePack = TemplateSSMDocumentDetailsProperty
  set newValue ConformancePack {..}
    = ConformancePack
        {templateSSMDocumentDetails = Prelude.pure newValue, ..}