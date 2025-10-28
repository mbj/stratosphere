module Stratosphere.DataSync.Task.TransferredProperty (
        TransferredProperty(..), mkTransferredProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransferredProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-transferred.html>
    TransferredProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-transferred.html#cfn-datasync-task-transferred-reportlevel>
                         reportLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransferredProperty :: TransferredProperty
mkTransferredProperty
  = TransferredProperty
      {haddock_workaround_ = (), reportLevel = Prelude.Nothing}
instance ToResourceProperties TransferredProperty where
  toResourceProperties TransferredProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Transferred",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReportLevel" Prelude.<$> reportLevel])}
instance JSON.ToJSON TransferredProperty where
  toJSON TransferredProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReportLevel" Prelude.<$> reportLevel]))
instance Property "ReportLevel" TransferredProperty where
  type PropertyType "ReportLevel" TransferredProperty = Value Prelude.Text
  set newValue TransferredProperty {..}
    = TransferredProperty {reportLevel = Prelude.pure newValue, ..}