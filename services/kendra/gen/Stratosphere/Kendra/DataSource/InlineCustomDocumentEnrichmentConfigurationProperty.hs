module Stratosphere.Kendra.DataSource.InlineCustomDocumentEnrichmentConfigurationProperty (
        module Exports,
        InlineCustomDocumentEnrichmentConfigurationProperty(..),
        mkInlineCustomDocumentEnrichmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DocumentAttributeConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DocumentAttributeTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InlineCustomDocumentEnrichmentConfigurationProperty
  = InlineCustomDocumentEnrichmentConfigurationProperty {condition :: (Prelude.Maybe DocumentAttributeConditionProperty),
                                                         documentContentDeletion :: (Prelude.Maybe (Value Prelude.Bool)),
                                                         target :: (Prelude.Maybe DocumentAttributeTargetProperty)}
mkInlineCustomDocumentEnrichmentConfigurationProperty ::
  InlineCustomDocumentEnrichmentConfigurationProperty
mkInlineCustomDocumentEnrichmentConfigurationProperty
  = InlineCustomDocumentEnrichmentConfigurationProperty
      {condition = Prelude.Nothing,
       documentContentDeletion = Prelude.Nothing,
       target = Prelude.Nothing}
instance ToResourceProperties InlineCustomDocumentEnrichmentConfigurationProperty where
  toResourceProperties
    InlineCustomDocumentEnrichmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.InlineCustomDocumentEnrichmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "DocumentContentDeletion"
                              Prelude.<$> documentContentDeletion,
                            (JSON..=) "Target" Prelude.<$> target])}
instance JSON.ToJSON InlineCustomDocumentEnrichmentConfigurationProperty where
  toJSON InlineCustomDocumentEnrichmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "DocumentContentDeletion"
                 Prelude.<$> documentContentDeletion,
               (JSON..=) "Target" Prelude.<$> target]))
instance Property "Condition" InlineCustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "Condition" InlineCustomDocumentEnrichmentConfigurationProperty = DocumentAttributeConditionProperty
  set
    newValue
    InlineCustomDocumentEnrichmentConfigurationProperty {..}
    = InlineCustomDocumentEnrichmentConfigurationProperty
        {condition = Prelude.pure newValue, ..}
instance Property "DocumentContentDeletion" InlineCustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "DocumentContentDeletion" InlineCustomDocumentEnrichmentConfigurationProperty = Value Prelude.Bool
  set
    newValue
    InlineCustomDocumentEnrichmentConfigurationProperty {..}
    = InlineCustomDocumentEnrichmentConfigurationProperty
        {documentContentDeletion = Prelude.pure newValue, ..}
instance Property "Target" InlineCustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "Target" InlineCustomDocumentEnrichmentConfigurationProperty = DocumentAttributeTargetProperty
  set
    newValue
    InlineCustomDocumentEnrichmentConfigurationProperty {..}
    = InlineCustomDocumentEnrichmentConfigurationProperty
        {target = Prelude.pure newValue, ..}