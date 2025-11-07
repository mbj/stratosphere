module Stratosphere.S3Tables.TableBucket (
        module Exports, TableBucket(..), mkTableBucket
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Tables.TableBucket.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3Tables.TableBucket.UnreferencedFileRemovalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableBucket
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucket.html>
    TableBucket {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucket.html#cfn-s3tables-tablebucket-encryptionconfiguration>
                 encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucket.html#cfn-s3tables-tablebucket-tablebucketname>
                 tableBucketName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3tables-tablebucket.html#cfn-s3tables-tablebucket-unreferencedfileremoval>
                 unreferencedFileRemoval :: (Prelude.Maybe UnreferencedFileRemovalProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableBucket :: Value Prelude.Text -> TableBucket
mkTableBucket tableBucketName
  = TableBucket
      {haddock_workaround_ = (), tableBucketName = tableBucketName,
       encryptionConfiguration = Prelude.Nothing,
       unreferencedFileRemoval = Prelude.Nothing}
instance ToResourceProperties TableBucket where
  toResourceProperties TableBucket {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::TableBucket",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TableBucketName" JSON..= tableBucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "UnreferencedFileRemoval"
                                 Prelude.<$> unreferencedFileRemoval]))}
instance JSON.ToJSON TableBucket where
  toJSON TableBucket {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TableBucketName" JSON..= tableBucketName]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "UnreferencedFileRemoval"
                    Prelude.<$> unreferencedFileRemoval])))
instance Property "EncryptionConfiguration" TableBucket where
  type PropertyType "EncryptionConfiguration" TableBucket = EncryptionConfigurationProperty
  set newValue TableBucket {..}
    = TableBucket {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "TableBucketName" TableBucket where
  type PropertyType "TableBucketName" TableBucket = Value Prelude.Text
  set newValue TableBucket {..}
    = TableBucket {tableBucketName = newValue, ..}
instance Property "UnreferencedFileRemoval" TableBucket where
  type PropertyType "UnreferencedFileRemoval" TableBucket = UnreferencedFileRemovalProperty
  set newValue TableBucket {..}
    = TableBucket {unreferencedFileRemoval = Prelude.pure newValue, ..}