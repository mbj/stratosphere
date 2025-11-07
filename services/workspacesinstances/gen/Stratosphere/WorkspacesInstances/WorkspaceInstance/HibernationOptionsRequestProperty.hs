module Stratosphere.WorkspacesInstances.WorkspaceInstance.HibernationOptionsRequestProperty (
        HibernationOptionsRequestProperty(..),
        mkHibernationOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HibernationOptionsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-hibernationoptionsrequest.html>
    HibernationOptionsRequestProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-hibernationoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-hibernationoptionsrequest-configured>
                                       configured :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHibernationOptionsRequestProperty ::
  HibernationOptionsRequestProperty
mkHibernationOptionsRequestProperty
  = HibernationOptionsRequestProperty
      {haddock_workaround_ = (), configured = Prelude.Nothing}
instance ToResourceProperties HibernationOptionsRequestProperty where
  toResourceProperties HibernationOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.HibernationOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Configured" Prelude.<$> configured])}
instance JSON.ToJSON HibernationOptionsRequestProperty where
  toJSON HibernationOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Configured" Prelude.<$> configured]))
instance Property "Configured" HibernationOptionsRequestProperty where
  type PropertyType "Configured" HibernationOptionsRequestProperty = Value Prelude.Bool
  set newValue HibernationOptionsRequestProperty {..}
    = HibernationOptionsRequestProperty
        {configured = Prelude.pure newValue, ..}