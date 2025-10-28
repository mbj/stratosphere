module Stratosphere.Logs.LogGroup (
        LogGroup(..), mkLogGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LogGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html>
    LogGroup {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-logs-loggroup-dataprotectionpolicy>
              dataProtectionPolicy :: (Prelude.Maybe JSON.Object),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-logs-loggroup-kmskeyid>
              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-logs-loggroup-loggroupclass>
              logGroupClass :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-logs-loggroup-loggroupname>
              logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-logs-loggroup-retentionindays>
              retentionInDays :: (Prelude.Maybe (Value Prelude.Integer)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html#cfn-logs-loggroup-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogGroup :: LogGroup
mkLogGroup
  = LogGroup
      {haddock_workaround_ = (), dataProtectionPolicy = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, logGroupClass = Prelude.Nothing,
       logGroupName = Prelude.Nothing, retentionInDays = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LogGroup where
  toResourceProperties LogGroup {..}
    = ResourceProperties
        {awsType = "AWS::Logs::LogGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataProtectionPolicy" Prelude.<$> dataProtectionPolicy,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LogGroupClass" Prelude.<$> logGroupClass,
                            (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
                            (JSON..=) "RetentionInDays" Prelude.<$> retentionInDays,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON LogGroup where
  toJSON LogGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataProtectionPolicy" Prelude.<$> dataProtectionPolicy,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LogGroupClass" Prelude.<$> logGroupClass,
               (JSON..=) "LogGroupName" Prelude.<$> logGroupName,
               (JSON..=) "RetentionInDays" Prelude.<$> retentionInDays,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DataProtectionPolicy" LogGroup where
  type PropertyType "DataProtectionPolicy" LogGroup = JSON.Object
  set newValue LogGroup {..}
    = LogGroup {dataProtectionPolicy = Prelude.pure newValue, ..}
instance Property "KmsKeyId" LogGroup where
  type PropertyType "KmsKeyId" LogGroup = Value Prelude.Text
  set newValue LogGroup {..}
    = LogGroup {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LogGroupClass" LogGroup where
  type PropertyType "LogGroupClass" LogGroup = Value Prelude.Text
  set newValue LogGroup {..}
    = LogGroup {logGroupClass = Prelude.pure newValue, ..}
instance Property "LogGroupName" LogGroup where
  type PropertyType "LogGroupName" LogGroup = Value Prelude.Text
  set newValue LogGroup {..}
    = LogGroup {logGroupName = Prelude.pure newValue, ..}
instance Property "RetentionInDays" LogGroup where
  type PropertyType "RetentionInDays" LogGroup = Value Prelude.Integer
  set newValue LogGroup {..}
    = LogGroup {retentionInDays = Prelude.pure newValue, ..}
instance Property "Tags" LogGroup where
  type PropertyType "Tags" LogGroup = [Tag]
  set newValue LogGroup {..}
    = LogGroup {tags = Prelude.pure newValue, ..}