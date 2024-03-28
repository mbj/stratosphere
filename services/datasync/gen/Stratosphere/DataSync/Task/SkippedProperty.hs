module Stratosphere.DataSync.Task.SkippedProperty (
        SkippedProperty(..), mkSkippedProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SkippedProperty
  = SkippedProperty {reportLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSkippedProperty :: SkippedProperty
mkSkippedProperty = SkippedProperty {reportLevel = Prelude.Nothing}
instance ToResourceProperties SkippedProperty where
  toResourceProperties SkippedProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Skipped",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReportLevel" Prelude.<$> reportLevel])}
instance JSON.ToJSON SkippedProperty where
  toJSON SkippedProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReportLevel" Prelude.<$> reportLevel]))
instance Property "ReportLevel" SkippedProperty where
  type PropertyType "ReportLevel" SkippedProperty = Value Prelude.Text
  set newValue SkippedProperty {}
    = SkippedProperty {reportLevel = Prelude.pure newValue, ..}