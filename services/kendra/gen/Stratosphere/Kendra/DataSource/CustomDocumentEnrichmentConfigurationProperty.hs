module Stratosphere.Kendra.DataSource.CustomDocumentEnrichmentConfigurationProperty (
        module Exports, CustomDocumentEnrichmentConfigurationProperty(..),
        mkCustomDocumentEnrichmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.HookConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.InlineCustomDocumentEnrichmentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomDocumentEnrichmentConfigurationProperty
  = CustomDocumentEnrichmentConfigurationProperty {inlineConfigurations :: (Prelude.Maybe [InlineCustomDocumentEnrichmentConfigurationProperty]),
                                                   postExtractionHookConfiguration :: (Prelude.Maybe HookConfigurationProperty),
                                                   preExtractionHookConfiguration :: (Prelude.Maybe HookConfigurationProperty),
                                                   roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDocumentEnrichmentConfigurationProperty ::
  CustomDocumentEnrichmentConfigurationProperty
mkCustomDocumentEnrichmentConfigurationProperty
  = CustomDocumentEnrichmentConfigurationProperty
      {inlineConfigurations = Prelude.Nothing,
       postExtractionHookConfiguration = Prelude.Nothing,
       preExtractionHookConfiguration = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties CustomDocumentEnrichmentConfigurationProperty where
  toResourceProperties
    CustomDocumentEnrichmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.CustomDocumentEnrichmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InlineConfigurations" Prelude.<$> inlineConfigurations,
                            (JSON..=) "PostExtractionHookConfiguration"
                              Prelude.<$> postExtractionHookConfiguration,
                            (JSON..=) "PreExtractionHookConfiguration"
                              Prelude.<$> preExtractionHookConfiguration,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON CustomDocumentEnrichmentConfigurationProperty where
  toJSON CustomDocumentEnrichmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InlineConfigurations" Prelude.<$> inlineConfigurations,
               (JSON..=) "PostExtractionHookConfiguration"
                 Prelude.<$> postExtractionHookConfiguration,
               (JSON..=) "PreExtractionHookConfiguration"
                 Prelude.<$> preExtractionHookConfiguration,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "InlineConfigurations" CustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "InlineConfigurations" CustomDocumentEnrichmentConfigurationProperty = [InlineCustomDocumentEnrichmentConfigurationProperty]
  set newValue CustomDocumentEnrichmentConfigurationProperty {..}
    = CustomDocumentEnrichmentConfigurationProperty
        {inlineConfigurations = Prelude.pure newValue, ..}
instance Property "PostExtractionHookConfiguration" CustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "PostExtractionHookConfiguration" CustomDocumentEnrichmentConfigurationProperty = HookConfigurationProperty
  set newValue CustomDocumentEnrichmentConfigurationProperty {..}
    = CustomDocumentEnrichmentConfigurationProperty
        {postExtractionHookConfiguration = Prelude.pure newValue, ..}
instance Property "PreExtractionHookConfiguration" CustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "PreExtractionHookConfiguration" CustomDocumentEnrichmentConfigurationProperty = HookConfigurationProperty
  set newValue CustomDocumentEnrichmentConfigurationProperty {..}
    = CustomDocumentEnrichmentConfigurationProperty
        {preExtractionHookConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" CustomDocumentEnrichmentConfigurationProperty where
  type PropertyType "RoleArn" CustomDocumentEnrichmentConfigurationProperty = Value Prelude.Text
  set newValue CustomDocumentEnrichmentConfigurationProperty {..}
    = CustomDocumentEnrichmentConfigurationProperty
        {roleArn = Prelude.pure newValue, ..}