module Stratosphere.Batch.JobDefinition.HostProperty (
        HostProperty(..), mkHostProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-host.html>
    HostProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-host.html#cfn-batch-jobdefinition-host-sourcepath>
                  sourcePath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostProperty :: HostProperty
mkHostProperty
  = HostProperty
      {haddock_workaround_ = (), sourcePath = Prelude.Nothing}
instance ToResourceProperties HostProperty where
  toResourceProperties HostProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Host",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourcePath" Prelude.<$> sourcePath])}
instance JSON.ToJSON HostProperty where
  toJSON HostProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourcePath" Prelude.<$> sourcePath]))
instance Property "SourcePath" HostProperty where
  type PropertyType "SourcePath" HostProperty = Value Prelude.Text
  set newValue HostProperty {..}
    = HostProperty {sourcePath = Prelude.pure newValue, ..}