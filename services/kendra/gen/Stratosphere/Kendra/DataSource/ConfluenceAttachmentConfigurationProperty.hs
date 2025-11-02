module Stratosphere.Kendra.DataSource.ConfluenceAttachmentConfigurationProperty (
        module Exports, ConfluenceAttachmentConfigurationProperty(..),
        mkConfluenceAttachmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.ConfluenceAttachmentToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfluenceAttachmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmentconfiguration.html>
    ConfluenceAttachmentConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmentconfiguration.html#cfn-kendra-datasource-confluenceattachmentconfiguration-attachmentfieldmappings>
                                               attachmentFieldMappings :: (Prelude.Maybe [ConfluenceAttachmentToIndexFieldMappingProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmentconfiguration.html#cfn-kendra-datasource-confluenceattachmentconfiguration-crawlattachments>
                                               crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfluenceAttachmentConfigurationProperty ::
  ConfluenceAttachmentConfigurationProperty
mkConfluenceAttachmentConfigurationProperty
  = ConfluenceAttachmentConfigurationProperty
      {haddock_workaround_ = (),
       attachmentFieldMappings = Prelude.Nothing,
       crawlAttachments = Prelude.Nothing}
instance ToResourceProperties ConfluenceAttachmentConfigurationProperty where
  toResourceProperties ConfluenceAttachmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConfluenceAttachmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttachmentFieldMappings"
                              Prelude.<$> attachmentFieldMappings,
                            (JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments])}
instance JSON.ToJSON ConfluenceAttachmentConfigurationProperty where
  toJSON ConfluenceAttachmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttachmentFieldMappings"
                 Prelude.<$> attachmentFieldMappings,
               (JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments]))
instance Property "AttachmentFieldMappings" ConfluenceAttachmentConfigurationProperty where
  type PropertyType "AttachmentFieldMappings" ConfluenceAttachmentConfigurationProperty = [ConfluenceAttachmentToIndexFieldMappingProperty]
  set newValue ConfluenceAttachmentConfigurationProperty {..}
    = ConfluenceAttachmentConfigurationProperty
        {attachmentFieldMappings = Prelude.pure newValue, ..}
instance Property "CrawlAttachments" ConfluenceAttachmentConfigurationProperty where
  type PropertyType "CrawlAttachments" ConfluenceAttachmentConfigurationProperty = Value Prelude.Bool
  set newValue ConfluenceAttachmentConfigurationProperty {..}
    = ConfluenceAttachmentConfigurationProperty
        {crawlAttachments = Prelude.pure newValue, ..}