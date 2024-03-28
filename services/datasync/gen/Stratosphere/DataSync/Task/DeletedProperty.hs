module Stratosphere.DataSync.Task.DeletedProperty (
        DeletedProperty(..), mkDeletedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeletedProperty
  = DeletedProperty {reportLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeletedProperty :: DeletedProperty
mkDeletedProperty = DeletedProperty {reportLevel = Prelude.Nothing}
instance ToResourceProperties DeletedProperty where
  toResourceProperties DeletedProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Deleted",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReportLevel" Prelude.<$> reportLevel])}
instance JSON.ToJSON DeletedProperty where
  toJSON DeletedProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReportLevel" Prelude.<$> reportLevel]))
instance Property "ReportLevel" DeletedProperty where
  type PropertyType "ReportLevel" DeletedProperty = Value Prelude.Text
  set newValue DeletedProperty {}
    = DeletedProperty {reportLevel = Prelude.pure newValue, ..}