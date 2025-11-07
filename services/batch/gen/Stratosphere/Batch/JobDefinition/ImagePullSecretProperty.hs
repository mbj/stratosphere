module Stratosphere.Batch.JobDefinition.ImagePullSecretProperty (
        ImagePullSecretProperty(..), mkImagePullSecretProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImagePullSecretProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-imagepullsecret.html>
    ImagePullSecretProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-imagepullsecret.html#cfn-batch-jobdefinition-imagepullsecret-name>
                             name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImagePullSecretProperty :: ImagePullSecretProperty
mkImagePullSecretProperty
  = ImagePullSecretProperty
      {haddock_workaround_ = (), name = Prelude.Nothing}
instance ToResourceProperties ImagePullSecretProperty where
  toResourceProperties ImagePullSecretProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ImagePullSecret",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON ImagePullSecretProperty where
  toJSON ImagePullSecretProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))
instance Property "Name" ImagePullSecretProperty where
  type PropertyType "Name" ImagePullSecretProperty = Value Prelude.Text
  set newValue ImagePullSecretProperty {..}
    = ImagePullSecretProperty {name = Prelude.pure newValue, ..}