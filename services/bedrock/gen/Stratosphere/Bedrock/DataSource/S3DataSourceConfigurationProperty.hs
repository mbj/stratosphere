module Stratosphere.Bedrock.DataSource.S3DataSourceConfigurationProperty (
        S3DataSourceConfigurationProperty(..),
        mkS3DataSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DataSourceConfigurationProperty
  = S3DataSourceConfigurationProperty {bucketArn :: (Value Prelude.Text),
                                       bucketOwnerAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                                       inclusionPrefixes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DataSourceConfigurationProperty ::
  Value Prelude.Text -> S3DataSourceConfigurationProperty
mkS3DataSourceConfigurationProperty bucketArn
  = S3DataSourceConfigurationProperty
      {bucketArn = bucketArn, bucketOwnerAccountId = Prelude.Nothing,
       inclusionPrefixes = Prelude.Nothing}
instance ToResourceProperties S3DataSourceConfigurationProperty where
  toResourceProperties S3DataSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.S3DataSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketArn" JSON..= bucketArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketOwnerAccountId" Prelude.<$> bucketOwnerAccountId,
                               (JSON..=) "InclusionPrefixes" Prelude.<$> inclusionPrefixes]))}
instance JSON.ToJSON S3DataSourceConfigurationProperty where
  toJSON S3DataSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketArn" JSON..= bucketArn]
              (Prelude.catMaybes
                 [(JSON..=) "BucketOwnerAccountId" Prelude.<$> bucketOwnerAccountId,
                  (JSON..=) "InclusionPrefixes" Prelude.<$> inclusionPrefixes])))
instance Property "BucketArn" S3DataSourceConfigurationProperty where
  type PropertyType "BucketArn" S3DataSourceConfigurationProperty = Value Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty {bucketArn = newValue, ..}
instance Property "BucketOwnerAccountId" S3DataSourceConfigurationProperty where
  type PropertyType "BucketOwnerAccountId" S3DataSourceConfigurationProperty = Value Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {bucketOwnerAccountId = Prelude.pure newValue, ..}
instance Property "InclusionPrefixes" S3DataSourceConfigurationProperty where
  type PropertyType "InclusionPrefixes" S3DataSourceConfigurationProperty = ValueList Prelude.Text
  set newValue S3DataSourceConfigurationProperty {..}
    = S3DataSourceConfigurationProperty
        {inclusionPrefixes = Prelude.pure newValue, ..}