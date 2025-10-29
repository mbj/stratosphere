module Stratosphere.Glue.SecurityConfiguration.EncryptionConfigurationProperty (
        module Exports, EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.SecurityConfiguration.CloudWatchEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.SecurityConfiguration.JobBookmarksEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.SecurityConfiguration.S3EncryptionsProperty as Exports
import Stratosphere.ResourceProperties
data EncryptionConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html>
    EncryptionConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-cloudwatchencryption>
                                     cloudWatchEncryption :: (Prelude.Maybe CloudWatchEncryptionProperty),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-jobbookmarksencryption>
                                     jobBookmarksEncryption :: (Prelude.Maybe JobBookmarksEncryptionProperty),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-s3encryptions>
                                     s3Encryptions :: (Prelude.Maybe S3EncryptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  EncryptionConfigurationProperty
mkEncryptionConfigurationProperty
  = EncryptionConfigurationProperty
      {cloudWatchEncryption = Prelude.Nothing,
       jobBookmarksEncryption = Prelude.Nothing,
       s3Encryptions = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SecurityConfiguration.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchEncryption" Prelude.<$> cloudWatchEncryption,
                            (JSON..=) "JobBookmarksEncryption"
                              Prelude.<$> jobBookmarksEncryption,
                            (JSON..=) "S3Encryptions" Prelude.<$> s3Encryptions])}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchEncryption" Prelude.<$> cloudWatchEncryption,
               (JSON..=) "JobBookmarksEncryption"
                 Prelude.<$> jobBookmarksEncryption,
               (JSON..=) "S3Encryptions" Prelude.<$> s3Encryptions]))
instance Property "CloudWatchEncryption" EncryptionConfigurationProperty where
  type PropertyType "CloudWatchEncryption" EncryptionConfigurationProperty = CloudWatchEncryptionProperty
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {cloudWatchEncryption = Prelude.pure newValue, ..}
instance Property "JobBookmarksEncryption" EncryptionConfigurationProperty where
  type PropertyType "JobBookmarksEncryption" EncryptionConfigurationProperty = JobBookmarksEncryptionProperty
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {jobBookmarksEncryption = Prelude.pure newValue, ..}
instance Property "S3Encryptions" EncryptionConfigurationProperty where
  type PropertyType "S3Encryptions" EncryptionConfigurationProperty = S3EncryptionsProperty
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {s3Encryptions = Prelude.pure newValue, ..}