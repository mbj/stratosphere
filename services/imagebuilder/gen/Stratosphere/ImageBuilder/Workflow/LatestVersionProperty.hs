module Stratosphere.ImageBuilder.Workflow.LatestVersionProperty (
        LatestVersionProperty(..), mkLatestVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LatestVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-workflow-latestversion.html>
    LatestVersionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-workflow-latestversion.html#cfn-imagebuilder-workflow-latestversion-arn>
                           arn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-workflow-latestversion.html#cfn-imagebuilder-workflow-latestversion-major>
                           major :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-workflow-latestversion.html#cfn-imagebuilder-workflow-latestversion-minor>
                           minor :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-workflow-latestversion.html#cfn-imagebuilder-workflow-latestversion-patch>
                           patch :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLatestVersionProperty :: LatestVersionProperty
mkLatestVersionProperty
  = LatestVersionProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       major = Prelude.Nothing, minor = Prelude.Nothing,
       patch = Prelude.Nothing}
instance ToResourceProperties LatestVersionProperty where
  toResourceProperties LatestVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::Workflow.LatestVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "Major" Prelude.<$> major,
                            (JSON..=) "Minor" Prelude.<$> minor,
                            (JSON..=) "Patch" Prelude.<$> patch])}
instance JSON.ToJSON LatestVersionProperty where
  toJSON LatestVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "Major" Prelude.<$> major,
               (JSON..=) "Minor" Prelude.<$> minor,
               (JSON..=) "Patch" Prelude.<$> patch]))
instance Property "Arn" LatestVersionProperty where
  type PropertyType "Arn" LatestVersionProperty = Value Prelude.Text
  set newValue LatestVersionProperty {..}
    = LatestVersionProperty {arn = Prelude.pure newValue, ..}
instance Property "Major" LatestVersionProperty where
  type PropertyType "Major" LatestVersionProperty = Value Prelude.Text
  set newValue LatestVersionProperty {..}
    = LatestVersionProperty {major = Prelude.pure newValue, ..}
instance Property "Minor" LatestVersionProperty where
  type PropertyType "Minor" LatestVersionProperty = Value Prelude.Text
  set newValue LatestVersionProperty {..}
    = LatestVersionProperty {minor = Prelude.pure newValue, ..}
instance Property "Patch" LatestVersionProperty where
  type PropertyType "Patch" LatestVersionProperty = Value Prelude.Text
  set newValue LatestVersionProperty {..}
    = LatestVersionProperty {patch = Prelude.pure newValue, ..}