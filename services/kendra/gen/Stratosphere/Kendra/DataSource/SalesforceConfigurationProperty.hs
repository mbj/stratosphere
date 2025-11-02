module Stratosphere.Kendra.DataSource.SalesforceConfigurationProperty (
        module Exports, SalesforceConfigurationProperty(..),
        mkSalesforceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceChatterFeedConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceKnowledgeArticleConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceStandardObjectAttachmentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.SalesforceStandardObjectConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html>
    SalesforceConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-chatterfeedconfiguration>
                                     chatterFeedConfiguration :: (Prelude.Maybe SalesforceChatterFeedConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-crawlattachments>
                                     crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-excludeattachmentfilepatterns>
                                     excludeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-includeattachmentfilepatterns>
                                     includeAttachmentFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-knowledgearticleconfiguration>
                                     knowledgeArticleConfiguration :: (Prelude.Maybe SalesforceKnowledgeArticleConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-secretarn>
                                     secretArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-serverurl>
                                     serverUrl :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-standardobjectattachmentconfiguration>
                                     standardObjectAttachmentConfiguration :: (Prelude.Maybe SalesforceStandardObjectAttachmentConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-standardobjectconfigurations>
                                     standardObjectConfigurations :: (Prelude.Maybe [SalesforceStandardObjectConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SalesforceConfigurationProperty
mkSalesforceConfigurationProperty secretArn serverUrl
  = SalesforceConfigurationProperty
      {haddock_workaround_ = (), secretArn = secretArn,
       serverUrl = serverUrl, chatterFeedConfiguration = Prelude.Nothing,
       crawlAttachments = Prelude.Nothing,
       excludeAttachmentFilePatterns = Prelude.Nothing,
       includeAttachmentFilePatterns = Prelude.Nothing,
       knowledgeArticleConfiguration = Prelude.Nothing,
       standardObjectAttachmentConfiguration = Prelude.Nothing,
       standardObjectConfigurations = Prelude.Nothing}
instance ToResourceProperties SalesforceConfigurationProperty where
  toResourceProperties SalesforceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecretArn" JSON..= secretArn, "ServerUrl" JSON..= serverUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "ChatterFeedConfiguration"
                                 Prelude.<$> chatterFeedConfiguration,
                               (JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments,
                               (JSON..=) "ExcludeAttachmentFilePatterns"
                                 Prelude.<$> excludeAttachmentFilePatterns,
                               (JSON..=) "IncludeAttachmentFilePatterns"
                                 Prelude.<$> includeAttachmentFilePatterns,
                               (JSON..=) "KnowledgeArticleConfiguration"
                                 Prelude.<$> knowledgeArticleConfiguration,
                               (JSON..=) "StandardObjectAttachmentConfiguration"
                                 Prelude.<$> standardObjectAttachmentConfiguration,
                               (JSON..=) "StandardObjectConfigurations"
                                 Prelude.<$> standardObjectConfigurations]))}
instance JSON.ToJSON SalesforceConfigurationProperty where
  toJSON SalesforceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecretArn" JSON..= secretArn, "ServerUrl" JSON..= serverUrl]
              (Prelude.catMaybes
                 [(JSON..=) "ChatterFeedConfiguration"
                    Prelude.<$> chatterFeedConfiguration,
                  (JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments,
                  (JSON..=) "ExcludeAttachmentFilePatterns"
                    Prelude.<$> excludeAttachmentFilePatterns,
                  (JSON..=) "IncludeAttachmentFilePatterns"
                    Prelude.<$> includeAttachmentFilePatterns,
                  (JSON..=) "KnowledgeArticleConfiguration"
                    Prelude.<$> knowledgeArticleConfiguration,
                  (JSON..=) "StandardObjectAttachmentConfiguration"
                    Prelude.<$> standardObjectAttachmentConfiguration,
                  (JSON..=) "StandardObjectConfigurations"
                    Prelude.<$> standardObjectConfigurations])))
instance Property "ChatterFeedConfiguration" SalesforceConfigurationProperty where
  type PropertyType "ChatterFeedConfiguration" SalesforceConfigurationProperty = SalesforceChatterFeedConfigurationProperty
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {chatterFeedConfiguration = Prelude.pure newValue, ..}
instance Property "CrawlAttachments" SalesforceConfigurationProperty where
  type PropertyType "CrawlAttachments" SalesforceConfigurationProperty = Value Prelude.Bool
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {crawlAttachments = Prelude.pure newValue, ..}
instance Property "ExcludeAttachmentFilePatterns" SalesforceConfigurationProperty where
  type PropertyType "ExcludeAttachmentFilePatterns" SalesforceConfigurationProperty = ValueList Prelude.Text
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {excludeAttachmentFilePatterns = Prelude.pure newValue, ..}
instance Property "IncludeAttachmentFilePatterns" SalesforceConfigurationProperty where
  type PropertyType "IncludeAttachmentFilePatterns" SalesforceConfigurationProperty = ValueList Prelude.Text
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {includeAttachmentFilePatterns = Prelude.pure newValue, ..}
instance Property "KnowledgeArticleConfiguration" SalesforceConfigurationProperty where
  type PropertyType "KnowledgeArticleConfiguration" SalesforceConfigurationProperty = SalesforceKnowledgeArticleConfigurationProperty
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {knowledgeArticleConfiguration = Prelude.pure newValue, ..}
instance Property "SecretArn" SalesforceConfigurationProperty where
  type PropertyType "SecretArn" SalesforceConfigurationProperty = Value Prelude.Text
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty {secretArn = newValue, ..}
instance Property "ServerUrl" SalesforceConfigurationProperty where
  type PropertyType "ServerUrl" SalesforceConfigurationProperty = Value Prelude.Text
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty {serverUrl = newValue, ..}
instance Property "StandardObjectAttachmentConfiguration" SalesforceConfigurationProperty where
  type PropertyType "StandardObjectAttachmentConfiguration" SalesforceConfigurationProperty = SalesforceStandardObjectAttachmentConfigurationProperty
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {standardObjectAttachmentConfiguration = Prelude.pure newValue, ..}
instance Property "StandardObjectConfigurations" SalesforceConfigurationProperty where
  type PropertyType "StandardObjectConfigurations" SalesforceConfigurationProperty = [SalesforceStandardObjectConfigurationProperty]
  set newValue SalesforceConfigurationProperty {..}
    = SalesforceConfigurationProperty
        {standardObjectConfigurations = Prelude.pure newValue, ..}