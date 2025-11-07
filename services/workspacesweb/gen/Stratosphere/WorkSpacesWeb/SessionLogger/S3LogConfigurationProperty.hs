module Stratosphere.WorkSpacesWeb.SessionLogger.S3LogConfigurationProperty (
        S3LogConfigurationProperty(..), mkS3LogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-s3logconfiguration.html>
    S3LogConfigurationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-s3logconfiguration.html#cfn-workspacesweb-sessionlogger-s3logconfiguration-bucket>
                                bucket :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-s3logconfiguration.html#cfn-workspacesweb-sessionlogger-s3logconfiguration-bucketowner>
                                bucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-s3logconfiguration.html#cfn-workspacesweb-sessionlogger-s3logconfiguration-folderstructure>
                                folderStructure :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-s3logconfiguration.html#cfn-workspacesweb-sessionlogger-s3logconfiguration-keyprefix>
                                keyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-s3logconfiguration.html#cfn-workspacesweb-sessionlogger-s3logconfiguration-logfileformat>
                                logFileFormat :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LogConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> S3LogConfigurationProperty
mkS3LogConfigurationProperty bucket folderStructure logFileFormat
  = S3LogConfigurationProperty
      {haddock_workaround_ = (), bucket = bucket,
       folderStructure = folderStructure, logFileFormat = logFileFormat,
       bucketOwner = Prelude.Nothing, keyPrefix = Prelude.Nothing}
instance ToResourceProperties S3LogConfigurationProperty where
  toResourceProperties S3LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::SessionLogger.S3LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket,
                            "FolderStructure" JSON..= folderStructure,
                            "LogFileFormat" JSON..= logFileFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                               (JSON..=) "KeyPrefix" Prelude.<$> keyPrefix]))}
instance JSON.ToJSON S3LogConfigurationProperty where
  toJSON S3LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket,
               "FolderStructure" JSON..= folderStructure,
               "LogFileFormat" JSON..= logFileFormat]
              (Prelude.catMaybes
                 [(JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                  (JSON..=) "KeyPrefix" Prelude.<$> keyPrefix])))
instance Property "Bucket" S3LogConfigurationProperty where
  type PropertyType "Bucket" S3LogConfigurationProperty = Value Prelude.Text
  set newValue S3LogConfigurationProperty {..}
    = S3LogConfigurationProperty {bucket = newValue, ..}
instance Property "BucketOwner" S3LogConfigurationProperty where
  type PropertyType "BucketOwner" S3LogConfigurationProperty = Value Prelude.Text
  set newValue S3LogConfigurationProperty {..}
    = S3LogConfigurationProperty
        {bucketOwner = Prelude.pure newValue, ..}
instance Property "FolderStructure" S3LogConfigurationProperty where
  type PropertyType "FolderStructure" S3LogConfigurationProperty = Value Prelude.Text
  set newValue S3LogConfigurationProperty {..}
    = S3LogConfigurationProperty {folderStructure = newValue, ..}
instance Property "KeyPrefix" S3LogConfigurationProperty where
  type PropertyType "KeyPrefix" S3LogConfigurationProperty = Value Prelude.Text
  set newValue S3LogConfigurationProperty {..}
    = S3LogConfigurationProperty
        {keyPrefix = Prelude.pure newValue, ..}
instance Property "LogFileFormat" S3LogConfigurationProperty where
  type PropertyType "LogFileFormat" S3LogConfigurationProperty = Value Prelude.Text
  set newValue S3LogConfigurationProperty {..}
    = S3LogConfigurationProperty {logFileFormat = newValue, ..}