module Stratosphere.Amplify.Branch.BackendProperty (
        BackendProperty(..), mkBackendProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BackendProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-backend.html>
    BackendProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-branch-backend.html#cfn-amplify-branch-backend-stackarn>
                     stackArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBackendProperty :: BackendProperty
mkBackendProperty
  = BackendProperty
      {haddock_workaround_ = (), stackArn = Prelude.Nothing}
instance ToResourceProperties BackendProperty where
  toResourceProperties BackendProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Branch.Backend",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "StackArn" Prelude.<$> stackArn])}
instance JSON.ToJSON BackendProperty where
  toJSON BackendProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "StackArn" Prelude.<$> stackArn]))
instance Property "StackArn" BackendProperty where
  type PropertyType "StackArn" BackendProperty = Value Prelude.Text
  set newValue BackendProperty {..}
    = BackendProperty {stackArn = Prelude.pure newValue, ..}