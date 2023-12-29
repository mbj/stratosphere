module Stratosphere.OpenSearchService.Domain.SnapshotOptionsProperty (
        SnapshotOptionsProperty(..), mkSnapshotOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapshotOptionsProperty
  = SnapshotOptionsProperty {automatedSnapshotStartHour :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshotOptionsProperty :: SnapshotOptionsProperty
mkSnapshotOptionsProperty
  = SnapshotOptionsProperty
      {automatedSnapshotStartHour = Prelude.Nothing}
instance ToResourceProperties SnapshotOptionsProperty where
  toResourceProperties SnapshotOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.SnapshotOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutomatedSnapshotStartHour"
                              Prelude.<$> automatedSnapshotStartHour])}
instance JSON.ToJSON SnapshotOptionsProperty where
  toJSON SnapshotOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutomatedSnapshotStartHour"
                 Prelude.<$> automatedSnapshotStartHour]))
instance Property "AutomatedSnapshotStartHour" SnapshotOptionsProperty where
  type PropertyType "AutomatedSnapshotStartHour" SnapshotOptionsProperty = Value Prelude.Integer
  set newValue SnapshotOptionsProperty {}
    = SnapshotOptionsProperty
        {automatedSnapshotStartHour = Prelude.pure newValue, ..}