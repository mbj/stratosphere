module Stratosphere.Redshift.Cluster.LoggingPropertiesProperty (
        LoggingPropertiesProperty(..), mkLoggingPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html>
    LoggingPropertiesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-bucketname>
                               bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-logdestinationtype>
                               logDestinationType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-logexports>
                               logExports :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-cluster-loggingproperties.html#cfn-redshift-cluster-loggingproperties-s3keyprefix>
                               s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingPropertiesProperty :: LoggingPropertiesProperty
mkLoggingPropertiesProperty
  = LoggingPropertiesProperty
      {haddock_workaround_ = (), bucketName = Prelude.Nothing,
       logDestinationType = Prelude.Nothing, logExports = Prelude.Nothing,
       s3KeyPrefix = Prelude.Nothing}
instance ToResourceProperties LoggingPropertiesProperty where
  toResourceProperties LoggingPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::Cluster.LoggingProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "LogDestinationType" Prelude.<$> logDestinationType,
                            (JSON..=) "LogExports" Prelude.<$> logExports,
                            (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix])}
instance JSON.ToJSON LoggingPropertiesProperty where
  toJSON LoggingPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "LogDestinationType" Prelude.<$> logDestinationType,
               (JSON..=) "LogExports" Prelude.<$> logExports,
               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix]))
instance Property "BucketName" LoggingPropertiesProperty where
  type PropertyType "BucketName" LoggingPropertiesProperty = Value Prelude.Text
  set newValue LoggingPropertiesProperty {..}
    = LoggingPropertiesProperty
        {bucketName = Prelude.pure newValue, ..}
instance Property "LogDestinationType" LoggingPropertiesProperty where
  type PropertyType "LogDestinationType" LoggingPropertiesProperty = Value Prelude.Text
  set newValue LoggingPropertiesProperty {..}
    = LoggingPropertiesProperty
        {logDestinationType = Prelude.pure newValue, ..}
instance Property "LogExports" LoggingPropertiesProperty where
  type PropertyType "LogExports" LoggingPropertiesProperty = ValueList Prelude.Text
  set newValue LoggingPropertiesProperty {..}
    = LoggingPropertiesProperty
        {logExports = Prelude.pure newValue, ..}
instance Property "S3KeyPrefix" LoggingPropertiesProperty where
  type PropertyType "S3KeyPrefix" LoggingPropertiesProperty = Value Prelude.Text
  set newValue LoggingPropertiesProperty {..}
    = LoggingPropertiesProperty
        {s3KeyPrefix = Prelude.pure newValue, ..}