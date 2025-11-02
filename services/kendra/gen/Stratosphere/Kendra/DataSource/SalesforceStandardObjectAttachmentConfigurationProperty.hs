module Stratosphere.Kendra.DataSource.SalesforceStandardObjectAttachmentConfigurationProperty (
        module Exports,
        SalesforceStandardObjectAttachmentConfigurationProperty(..),
        mkSalesforceStandardObjectAttachmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceStandardObjectAttachmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectattachmentconfiguration.html>
    SalesforceStandardObjectAttachmentConfigurationProperty {haddock_workaround_ :: (),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectattachmentconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectattachmentconfiguration-documenttitlefieldname>
                                                             documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforcestandardobjectattachmentconfiguration.html#cfn-kendra-datasource-salesforcestandardobjectattachmentconfiguration-fieldmappings>
                                                             fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSalesforceStandardObjectAttachmentConfigurationProperty ::
  SalesforceStandardObjectAttachmentConfigurationProperty
mkSalesforceStandardObjectAttachmentConfigurationProperty
  = SalesforceStandardObjectAttachmentConfigurationProperty
      {haddock_workaround_ = (),
       documentTitleFieldName = Prelude.Nothing,
       fieldMappings = Prelude.Nothing}
instance ToResourceProperties SalesforceStandardObjectAttachmentConfigurationProperty where
  toResourceProperties
    SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SalesforceStandardObjectAttachmentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DocumentTitleFieldName"
                              Prelude.<$> documentTitleFieldName,
                            (JSON..=) "FieldMappings" Prelude.<$> fieldMappings])}
instance JSON.ToJSON SalesforceStandardObjectAttachmentConfigurationProperty where
  toJSON SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DocumentTitleFieldName"
                 Prelude.<$> documentTitleFieldName,
               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings]))
instance Property "DocumentTitleFieldName" SalesforceStandardObjectAttachmentConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SalesforceStandardObjectAttachmentConfigurationProperty = Value Prelude.Text
  set
    newValue
    SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = SalesforceStandardObjectAttachmentConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "FieldMappings" SalesforceStandardObjectAttachmentConfigurationProperty where
  type PropertyType "FieldMappings" SalesforceStandardObjectAttachmentConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set
    newValue
    SalesforceStandardObjectAttachmentConfigurationProperty {..}
    = SalesforceStandardObjectAttachmentConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}