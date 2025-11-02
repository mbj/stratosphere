module Stratosphere.DataSync.Task.VerifiedProperty (
        VerifiedProperty(..), mkVerifiedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VerifiedProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-verified.html>
    VerifiedProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-verified.html#cfn-datasync-task-verified-reportlevel>
                      reportLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedProperty :: VerifiedProperty
mkVerifiedProperty
  = VerifiedProperty
      {haddock_workaround_ = (), reportLevel = Prelude.Nothing}
instance ToResourceProperties VerifiedProperty where
  toResourceProperties VerifiedProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Verified",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReportLevel" Prelude.<$> reportLevel])}
instance JSON.ToJSON VerifiedProperty where
  toJSON VerifiedProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReportLevel" Prelude.<$> reportLevel]))
instance Property "ReportLevel" VerifiedProperty where
  type PropertyType "ReportLevel" VerifiedProperty = Value Prelude.Text
  set newValue VerifiedProperty {..}
    = VerifiedProperty {reportLevel = Prelude.pure newValue, ..}