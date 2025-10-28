module Stratosphere.SES.MailManagerArchive.ArchiveRetentionProperty (
        ArchiveRetentionProperty(..), mkArchiveRetentionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArchiveRetentionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerarchive-archiveretention.html>
    ArchiveRetentionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerarchive-archiveretention.html#cfn-ses-mailmanagerarchive-archiveretention-retentionperiod>
                              retentionPeriod :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveRetentionProperty ::
  Value Prelude.Text -> ArchiveRetentionProperty
mkArchiveRetentionProperty retentionPeriod
  = ArchiveRetentionProperty
      {haddock_workaround_ = (), retentionPeriod = retentionPeriod}
instance ToResourceProperties ArchiveRetentionProperty where
  toResourceProperties ArchiveRetentionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerArchive.ArchiveRetention",
         supportsTags = Prelude.False,
         properties = ["RetentionPeriod" JSON..= retentionPeriod]}
instance JSON.ToJSON ArchiveRetentionProperty where
  toJSON ArchiveRetentionProperty {..}
    = JSON.object ["RetentionPeriod" JSON..= retentionPeriod]
instance Property "RetentionPeriod" ArchiveRetentionProperty where
  type PropertyType "RetentionPeriod" ArchiveRetentionProperty = Value Prelude.Text
  set newValue ArchiveRetentionProperty {..}
    = ArchiveRetentionProperty {retentionPeriod = newValue, ..}