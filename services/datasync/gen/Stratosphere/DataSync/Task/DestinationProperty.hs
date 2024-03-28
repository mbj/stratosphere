module Stratosphere.DataSync.Task.DestinationProperty (
        module Exports, DestinationProperty(..), mkDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.TaskReportConfigDestinationS3Property as Exports
import Stratosphere.ResourceProperties
data DestinationProperty
  = DestinationProperty {s3 :: (Prelude.Maybe TaskReportConfigDestinationS3Property)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationProperty :: DestinationProperty
mkDestinationProperty = DestinationProperty {s3 = Prelude.Nothing}
instance ToResourceProperties DestinationProperty where
  toResourceProperties DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Destination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON DestinationProperty where
  toJSON DestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3]))
instance Property "S3" DestinationProperty where
  type PropertyType "S3" DestinationProperty = TaskReportConfigDestinationS3Property
  set newValue DestinationProperty {}
    = DestinationProperty {s3 = Prelude.pure newValue, ..}