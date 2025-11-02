module Stratosphere.Elasticsearch.Domain.SnapshotOptionsProperty (
        SnapshotOptionsProperty(..), mkSnapshotOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapshotOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html>
    SnapshotOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html#cfn-elasticsearch-domain-snapshotoptions-automatedsnapshotstarthour>
                             automatedSnapshotStartHour :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshotOptionsProperty :: SnapshotOptionsProperty
mkSnapshotOptionsProperty
  = SnapshotOptionsProperty
      {haddock_workaround_ = (),
       automatedSnapshotStartHour = Prelude.Nothing}
instance ToResourceProperties SnapshotOptionsProperty where
  toResourceProperties SnapshotOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.SnapshotOptions",
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
  set newValue SnapshotOptionsProperty {..}
    = SnapshotOptionsProperty
        {automatedSnapshotStartHour = Prelude.pure newValue, ..}