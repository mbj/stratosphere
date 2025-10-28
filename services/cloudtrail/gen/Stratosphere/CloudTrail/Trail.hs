module Stratosphere.CloudTrail.Trail (
        module Exports, Trail(..), mkTrail
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Trail.AdvancedEventSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudTrail.Trail.EventSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudTrail.Trail.InsightSelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Trail
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html>
    Trail {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-advancedeventselectors>
           advancedEventSelectors :: (Prelude.Maybe [AdvancedEventSelectorProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsloggrouparn>
           cloudWatchLogsLogGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-cloudwatchlogsrolearn>
           cloudWatchLogsRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-enablelogfilevalidation>
           enableLogFileValidation :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-eventselectors>
           eventSelectors :: (Prelude.Maybe [EventSelectorProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-includeglobalserviceevents>
           includeGlobalServiceEvents :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-insightselectors>
           insightSelectors :: (Prelude.Maybe [InsightSelectorProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-islogging>
           isLogging :: (Value Prelude.Bool),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-ismultiregiontrail>
           isMultiRegionTrail :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-isorganizationtrail>
           isOrganizationTrail :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-kmskeyid>
           kMSKeyId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-s3bucketname>
           s3BucketName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-s3keyprefix>
           s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-snstopicname>
           snsTopicName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudtrail-trail.html#cfn-cloudtrail-trail-trailname>
           trailName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrail :: Value Prelude.Bool -> Value Prelude.Text -> Trail
mkTrail isLogging s3BucketName
  = Trail
      {haddock_workaround_ = (), isLogging = isLogging,
       s3BucketName = s3BucketName,
       advancedEventSelectors = Prelude.Nothing,
       cloudWatchLogsLogGroupArn = Prelude.Nothing,
       cloudWatchLogsRoleArn = Prelude.Nothing,
       enableLogFileValidation = Prelude.Nothing,
       eventSelectors = Prelude.Nothing,
       includeGlobalServiceEvents = Prelude.Nothing,
       insightSelectors = Prelude.Nothing,
       isMultiRegionTrail = Prelude.Nothing,
       isOrganizationTrail = Prelude.Nothing, kMSKeyId = Prelude.Nothing,
       s3KeyPrefix = Prelude.Nothing, snsTopicName = Prelude.Nothing,
       tags = Prelude.Nothing, trailName = Prelude.Nothing}
instance ToResourceProperties Trail where
  toResourceProperties Trail {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IsLogging" JSON..= isLogging,
                            "S3BucketName" JSON..= s3BucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "AdvancedEventSelectors"
                                 Prelude.<$> advancedEventSelectors,
                               (JSON..=) "CloudWatchLogsLogGroupArn"
                                 Prelude.<$> cloudWatchLogsLogGroupArn,
                               (JSON..=) "CloudWatchLogsRoleArn"
                                 Prelude.<$> cloudWatchLogsRoleArn,
                               (JSON..=) "EnableLogFileValidation"
                                 Prelude.<$> enableLogFileValidation,
                               (JSON..=) "EventSelectors" Prelude.<$> eventSelectors,
                               (JSON..=) "IncludeGlobalServiceEvents"
                                 Prelude.<$> includeGlobalServiceEvents,
                               (JSON..=) "InsightSelectors" Prelude.<$> insightSelectors,
                               (JSON..=) "IsMultiRegionTrail" Prelude.<$> isMultiRegionTrail,
                               (JSON..=) "IsOrganizationTrail" Prelude.<$> isOrganizationTrail,
                               (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix,
                               (JSON..=) "SnsTopicName" Prelude.<$> snsTopicName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrailName" Prelude.<$> trailName]))}
instance JSON.ToJSON Trail where
  toJSON Trail {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IsLogging" JSON..= isLogging,
               "S3BucketName" JSON..= s3BucketName]
              (Prelude.catMaybes
                 [(JSON..=) "AdvancedEventSelectors"
                    Prelude.<$> advancedEventSelectors,
                  (JSON..=) "CloudWatchLogsLogGroupArn"
                    Prelude.<$> cloudWatchLogsLogGroupArn,
                  (JSON..=) "CloudWatchLogsRoleArn"
                    Prelude.<$> cloudWatchLogsRoleArn,
                  (JSON..=) "EnableLogFileValidation"
                    Prelude.<$> enableLogFileValidation,
                  (JSON..=) "EventSelectors" Prelude.<$> eventSelectors,
                  (JSON..=) "IncludeGlobalServiceEvents"
                    Prelude.<$> includeGlobalServiceEvents,
                  (JSON..=) "InsightSelectors" Prelude.<$> insightSelectors,
                  (JSON..=) "IsMultiRegionTrail" Prelude.<$> isMultiRegionTrail,
                  (JSON..=) "IsOrganizationTrail" Prelude.<$> isOrganizationTrail,
                  (JSON..=) "KMSKeyId" Prelude.<$> kMSKeyId,
                  (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix,
                  (JSON..=) "SnsTopicName" Prelude.<$> snsTopicName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrailName" Prelude.<$> trailName])))
instance Property "AdvancedEventSelectors" Trail where
  type PropertyType "AdvancedEventSelectors" Trail = [AdvancedEventSelectorProperty]
  set newValue Trail {..}
    = Trail {advancedEventSelectors = Prelude.pure newValue, ..}
instance Property "CloudWatchLogsLogGroupArn" Trail where
  type PropertyType "CloudWatchLogsLogGroupArn" Trail = Value Prelude.Text
  set newValue Trail {..}
    = Trail {cloudWatchLogsLogGroupArn = Prelude.pure newValue, ..}
instance Property "CloudWatchLogsRoleArn" Trail where
  type PropertyType "CloudWatchLogsRoleArn" Trail = Value Prelude.Text
  set newValue Trail {..}
    = Trail {cloudWatchLogsRoleArn = Prelude.pure newValue, ..}
instance Property "EnableLogFileValidation" Trail where
  type PropertyType "EnableLogFileValidation" Trail = Value Prelude.Bool
  set newValue Trail {..}
    = Trail {enableLogFileValidation = Prelude.pure newValue, ..}
instance Property "EventSelectors" Trail where
  type PropertyType "EventSelectors" Trail = [EventSelectorProperty]
  set newValue Trail {..}
    = Trail {eventSelectors = Prelude.pure newValue, ..}
instance Property "IncludeGlobalServiceEvents" Trail where
  type PropertyType "IncludeGlobalServiceEvents" Trail = Value Prelude.Bool
  set newValue Trail {..}
    = Trail {includeGlobalServiceEvents = Prelude.pure newValue, ..}
instance Property "InsightSelectors" Trail where
  type PropertyType "InsightSelectors" Trail = [InsightSelectorProperty]
  set newValue Trail {..}
    = Trail {insightSelectors = Prelude.pure newValue, ..}
instance Property "IsLogging" Trail where
  type PropertyType "IsLogging" Trail = Value Prelude.Bool
  set newValue Trail {..} = Trail {isLogging = newValue, ..}
instance Property "IsMultiRegionTrail" Trail where
  type PropertyType "IsMultiRegionTrail" Trail = Value Prelude.Bool
  set newValue Trail {..}
    = Trail {isMultiRegionTrail = Prelude.pure newValue, ..}
instance Property "IsOrganizationTrail" Trail where
  type PropertyType "IsOrganizationTrail" Trail = Value Prelude.Bool
  set newValue Trail {..}
    = Trail {isOrganizationTrail = Prelude.pure newValue, ..}
instance Property "KMSKeyId" Trail where
  type PropertyType "KMSKeyId" Trail = Value Prelude.Text
  set newValue Trail {..}
    = Trail {kMSKeyId = Prelude.pure newValue, ..}
instance Property "S3BucketName" Trail where
  type PropertyType "S3BucketName" Trail = Value Prelude.Text
  set newValue Trail {..} = Trail {s3BucketName = newValue, ..}
instance Property "S3KeyPrefix" Trail where
  type PropertyType "S3KeyPrefix" Trail = Value Prelude.Text
  set newValue Trail {..}
    = Trail {s3KeyPrefix = Prelude.pure newValue, ..}
instance Property "SnsTopicName" Trail where
  type PropertyType "SnsTopicName" Trail = Value Prelude.Text
  set newValue Trail {..}
    = Trail {snsTopicName = Prelude.pure newValue, ..}
instance Property "Tags" Trail where
  type PropertyType "Tags" Trail = [Tag]
  set newValue Trail {..} = Trail {tags = Prelude.pure newValue, ..}
instance Property "TrailName" Trail where
  type PropertyType "TrailName" Trail = Value Prelude.Text
  set newValue Trail {..}
    = Trail {trailName = Prelude.pure newValue, ..}