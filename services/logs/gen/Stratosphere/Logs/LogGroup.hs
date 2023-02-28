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
  = LogGroup {dataProtectionPolicy :: (Prelude.Maybe JSON.Object),
              kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
              logGroupName :: (Prelude.Maybe (Value Prelude.Text)),
              retentionInDays :: (Prelude.Maybe (Value Prelude.Integer)),
              tags :: (Prelude.Maybe [Tag])}
mkLogGroup :: LogGroup
mkLogGroup
  = LogGroup
      {dataProtectionPolicy = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, logGroupName = Prelude.Nothing,
       retentionInDays = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LogGroup where
  toResourceProperties LogGroup {..}
    = ResourceProperties
        {awsType = "AWS::Logs::LogGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataProtectionPolicy" Prelude.<$> dataProtectionPolicy,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
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