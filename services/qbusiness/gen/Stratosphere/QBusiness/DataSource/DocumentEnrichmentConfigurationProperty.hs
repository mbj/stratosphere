module Stratosphere.QBusiness.DataSource.DocumentEnrichmentConfigurationProperty (
        module Exports, DocumentEnrichmentConfigurationProperty(..),
        mkDocumentEnrichmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.HookConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QBusiness.DataSource.InlineDocumentEnrichmentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DocumentEnrichmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentenrichmentconfiguration.html>
    DocumentEnrichmentConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentenrichmentconfiguration.html#cfn-qbusiness-datasource-documentenrichmentconfiguration-inlineconfigurations>
                                             inlineConfigurations :: (Prelude.Maybe [InlineDocumentEnrichmentConfigurationProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentenrichmentconfiguration.html#cfn-qbusiness-datasource-documentenrichmentconfiguration-postextractionhookconfiguration>
                                             postExtractionHookConfiguration :: (Prelude.Maybe HookConfigurationProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qbusiness-datasource-documentenrichmentconfiguration.html#cfn-qbusiness-datasource-documentenrichmentconfiguration-preextractionhookconfiguration>
                                             preExtractionHookConfiguration :: (Prelude.Maybe HookConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentEnrichmentConfigurationProperty ::
  DocumentEnrichmentConfigurationProperty
mkDocumentEnrichmentConfigurationProperty
  = DocumentEnrichmentConfigurationProperty
      {haddock_workaround_ = (), inlineConfigurations = Prelude.Nothing,
       postExtractionHookConfiguration = Prelude.Nothing,
       preExtractionHookConfiguration = Prelude.Nothing}
instance ToResourceProperties DocumentEnrichmentConfigurationProperty where
  toResourceProperties DocumentEnrichmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QBusiness::DataSource.DocumentEnrichmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InlineConfigurations" Prelude.<$> inlineConfigurations,
                            (JSON..=) "PostExtractionHookConfiguration"
                              Prelude.<$> postExtractionHookConfiguration,
                            (JSON..=) "PreExtractionHookConfiguration"
                              Prelude.<$> preExtractionHookConfiguration])}
instance JSON.ToJSON DocumentEnrichmentConfigurationProperty where
  toJSON DocumentEnrichmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InlineConfigurations" Prelude.<$> inlineConfigurations,
               (JSON..=) "PostExtractionHookConfiguration"
                 Prelude.<$> postExtractionHookConfiguration,
               (JSON..=) "PreExtractionHookConfiguration"
                 Prelude.<$> preExtractionHookConfiguration]))
instance Property "InlineConfigurations" DocumentEnrichmentConfigurationProperty where
  type PropertyType "InlineConfigurations" DocumentEnrichmentConfigurationProperty = [InlineDocumentEnrichmentConfigurationProperty]
  set newValue DocumentEnrichmentConfigurationProperty {..}
    = DocumentEnrichmentConfigurationProperty
        {inlineConfigurations = Prelude.pure newValue, ..}
instance Property "PostExtractionHookConfiguration" DocumentEnrichmentConfigurationProperty where
  type PropertyType "PostExtractionHookConfiguration" DocumentEnrichmentConfigurationProperty = HookConfigurationProperty
  set newValue DocumentEnrichmentConfigurationProperty {..}
    = DocumentEnrichmentConfigurationProperty
        {postExtractionHookConfiguration = Prelude.pure newValue, ..}
instance Property "PreExtractionHookConfiguration" DocumentEnrichmentConfigurationProperty where
  type PropertyType "PreExtractionHookConfiguration" DocumentEnrichmentConfigurationProperty = HookConfigurationProperty
  set newValue DocumentEnrichmentConfigurationProperty {..}
    = DocumentEnrichmentConfigurationProperty
        {preExtractionHookConfiguration = Prelude.pure newValue, ..}