module Stratosphere.Kendra.DataSource.S3DataSourceConfigurationProperty (
        module Exports, S3DataSourceConfigurationProperty(..),
        mkS3DataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.AccessControlListConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Kendra.DataSource.DocumentsMetadataConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DataSourceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html>
    S3DataSourceConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-accesscontrollistconfiguration>
                                       accessControlListConfiguration :: (Prelude.Maybe AccessControlListConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-bucketname>
                                       bucketName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-documentsmetadataconfiguration>
                                       documentsMetadataConfiguration :: (Prelude.Maybe DocumentsMetadataConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-exclusionpatterns>
                                       exclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-inclusionpatterns>
                                       inclusionPatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-inclusionprefixes>
                                       inclusionPrefixes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DataSourceConfigurationProperty ::
  Value Prelude.Text -> S3DataSourceConfigurationProperty
mkS3DataSourceConfigurationProperty bucketName
  = S3DataSourceConfigurationProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       accessControlListConfiguration = Prelude.Nothing,
       documentsMetadataConfiguration = Prelude.Nothing,
       exclusionPatterns = Prelude.Nothing,
       inclusionPatterns = Prelude.Nothing,
       inclusionPrefixes = Prelude.Nothing}
instance ToResourceProperties S3DataSourceConfigurationProperty where
  toResourceProperties S3DataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.S3DataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessControlListConfiguration"
                                 Prelude.<$> accessControlListConfiguration,
                               (JSON..=) "DocumentsMetadataConfiguration"
                                 Prelude.<$> documentsMetadataConfiguration,
                               (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                               (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                               (JSON..=) "InclusionPrefixes" Prelude.<$> inclusionPrefixes]))}
instance JSON.ToJSON S3DataSourceConfigurationProperty where
  toJSON S3DataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes
                 [(JSON..=) "AccessControlListConfiguration"
                    Prelude.<$> accessControlListConfiguration,
                  (JSON..=) "DocumentsMetadataConfiguration"
                    Prelude.<$> documentsMetadataConfiguration,
                  (JSON..=) "ExclusionPatterns" Prelude.<$> exclusionPatterns,
                  (JSON..=) "InclusionPatterns" Prelude.<$> inclusionPatterns,
                  (JSON..=) "InclusionPrefixes" Prelude.<$> inclusionPrefixes])))
instance Property "AccessControlListConfiguration" S3DataSourceConfigurationProperty where
  type PropertyType "AccessControlListConfiguration" S3DataSourceConfigurationProperty = AccessControlListConfigurationProperty
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {accessControlListConfiguration = Prelude.pure newValue, ..}
instance Property "BucketName" S3DataSourceConfigurationProperty where
  type PropertyType "BucketName" S3DataSourceConfigurationProperty = Value Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty {bucketName = newValue, ..}
instance Property "DocumentsMetadataConfiguration" S3DataSourceConfigurationProperty where
  type PropertyType "DocumentsMetadataConfiguration" S3DataSourceConfigurationProperty = DocumentsMetadataConfigurationProperty
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {documentsMetadataConfiguration = Prelude.pure newValue, ..}
instance Property "ExclusionPatterns" S3DataSourceConfigurationProperty where
  type PropertyType "ExclusionPatterns" S3DataSourceConfigurationProperty = ValueList Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {exclusionPatterns = Prelude.pure newValue, ..}
instance Property "InclusionPatterns" S3DataSourceConfigurationProperty where
  type PropertyType "InclusionPatterns" S3DataSourceConfigurationProperty = ValueList Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {inclusionPatterns = Prelude.pure newValue, ..}
instance Property "InclusionPrefixes" S3DataSourceConfigurationProperty where
  type PropertyType "InclusionPrefixes" S3DataSourceConfigurationProperty = ValueList Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {inclusionPrefixes = Prelude.pure newValue, ..}