module Stratosphere.Kendra.DataSource.SharePointConfigurationProperty (
        module Exports, SharePointConfigurationProperty(..),
        mkSharePointConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceToIndexFieldMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DataSourceVpcConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.S3PathProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SharePointConfigurationProperty
  = SharePointConfigurationProperty {crawlAttachments :: (Prelude.Maybe (Value Prelude.Bool)),
                                     disableLocalGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                     documentTitleFieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                     exclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     fieldMappings :: (Prelude.Maybe [DataSourceToIndexFieldMappingProperty]),
                                     inclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     secretArn :: (Value Prelude.Text),
                                     sharePointVersion :: (Value Prelude.Text),
                                     sslCertificateS3Path :: (Prelude.Maybe S3PathProperty),
                                     urls :: (ValueList Prelude.Text),
                                     useChangeLog :: (Prelude.Maybe (Value Prelude.Bool)),
                                     vpcConfiguration :: (Prelude.Maybe DataSourceVpcConfigurationProperty)}
mkSharePointConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> SharePointConfigurationProperty
mkSharePointConfigurationProperty secretArn sharePointVersion urls
  = SharePointConfigurationProperty
      {secretArn = secretArn, sharePointVersion = sharePointVersion,
       urls = urls, crawlAttachments = Prelude.Nothing,
       disableLocalGroups = Prelude.Nothing,
       documentTitleFieldName = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       fieldMappings = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing,
       sslCertificateS3Path = Prelude.Nothing,
       useChangeLog = Prelude.Nothing, vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties SharePointConfigurationProperty where
  toResourceProperties SharePointConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.SharePointConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecretArn" JSON..= secretArn,
                            "SharePointVersion" JSON..= sharePointVersion, "Urls" JSON..= urls]
                           (Prelude.catMaybes
                              [(JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments,
                               (JSON..=) "DisableLocalGroups" Prelude.<$> disableLocalGroups,
                               (JSON..=) "DocumentTitleFieldName"
                                 Prelude.<$> documentTitleFieldName,
                               (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                               (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                               (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                               (JSON..=) "SslCertificateS3Path" Prelude.<$> sslCertificateS3Path,
                               (JSON..=) "UseChangeLog" Prelude.<$> useChangeLog,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON SharePointConfigurationProperty where
  toJSON SharePointConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecretArn" JSON..= secretArn,
               "SharePointVersion" JSON..= sharePointVersion, "Urls" JSON..= urls]
              (Prelude.catMaybes
                 [(JSON..=) "CrawlAttachments" Prelude.<$> crawlAttachments,
                  (JSON..=) "DisableLocalGroups" Prelude.<$> disableLocalGroups,
                  (JSON..=) "DocumentTitleFieldName"
                    Prelude.<$> documentTitleFieldName,
                  (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                  (JSON..=) "FieldMappings" Prelude.<$> fieldMappings,
                  (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                  (JSON..=) "SslCertificateS3Path" Prelude.<$> sslCertificateS3Path,
                  (JSON..=) "UseChangeLog" Prelude.<$> useChangeLog,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "CrawlAttachments" SharePointConfigurationProperty where
  type PropertyType "CrawlAttachments" SharePointConfigurationProperty = Value Prelude.Bool
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {crawlAttachments = Prelude.pure newValue, ..}
instance Property "DisableLocalGroups" SharePointConfigurationProperty where
  type PropertyType "DisableLocalGroups" SharePointConfigurationProperty = Value Prelude.Bool
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {disableLocalGroups = Prelude.pure newValue, ..}
instance Property "DocumentTitleFieldName" SharePointConfigurationProperty where
  type PropertyType "DocumentTitleFieldName" SharePointConfigurationProperty = Value Prelude.Text
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {documentTitleFieldName = Prelude.pure newValue, ..}
instance Property "ExclusionPatterns" SharePointConfigurationProperty where
  type PropertyType "ExclusionPatterns" SharePointConfigurationProperty = ValueList Prelude.Text
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "FieldMappings" SharePointConfigurationProperty where
  type PropertyType "FieldMappings" SharePointConfigurationProperty = [DataSourceToIndexFieldMappingProperty]
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {fieldMappings = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" SharePointConfigurationProperty where
  type PropertyType "InclusionPatterns" SharePointConfigurationProperty = ValueList Prelude.Text
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {inclusionPatterns = Prelude.pure newValue, ..}
instance Property "SecretArn" SharePointConfigurationProperty where
  type PropertyType "SecretArn" SharePointConfigurationProperty = Value Prelude.Text
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty {secretArn = newValue, ..}
instance Property "SharePointVersion" SharePointConfigurationProperty where
  type PropertyType "SharePointVersion" SharePointConfigurationProperty = Value Prelude.Text
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {sharePointVersion = newValue, ..}
instance Property "SslCertificateS3Path" SharePointConfigurationProperty where
  type PropertyType "SslCertificateS3Path" SharePointConfigurationProperty = S3PathProperty
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {sslCertificateS3Path = Prelude.pure newValue, ..}
instance Property "Urls" SharePointConfigurationProperty where
  type PropertyType "Urls" SharePointConfigurationProperty = ValueList Prelude.Text
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty {urls = newValue, ..}
instance Property "UseChangeLog" SharePointConfigurationProperty where
  type PropertyType "UseChangeLog" SharePointConfigurationProperty = Value Prelude.Bool
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {useChangeLog = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" SharePointConfigurationProperty where
  type PropertyType "VpcConfiguration" SharePointConfigurationProperty = DataSourceVpcConfigurationProperty
  set newValue SharePointConfigurationProperty {..}
    = SharePointConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}