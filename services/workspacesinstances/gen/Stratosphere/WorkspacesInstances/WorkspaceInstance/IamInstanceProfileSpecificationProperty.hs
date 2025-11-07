module Stratosphere.WorkspacesInstances.WorkspaceInstance.IamInstanceProfileSpecificationProperty (
        IamInstanceProfileSpecificationProperty(..),
        mkIamInstanceProfileSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IamInstanceProfileSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-iaminstanceprofilespecification.html>
    IamInstanceProfileSpecificationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-iaminstanceprofilespecification.html#cfn-workspacesinstances-workspaceinstance-iaminstanceprofilespecification-arn>
                                             arn :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-iaminstanceprofilespecification.html#cfn-workspacesinstances-workspaceinstance-iaminstanceprofilespecification-name>
                                             name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIamInstanceProfileSpecificationProperty ::
  IamInstanceProfileSpecificationProperty
mkIamInstanceProfileSpecificationProperty
  = IamInstanceProfileSpecificationProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties IamInstanceProfileSpecificationProperty where
  toResourceProperties IamInstanceProfileSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.IamInstanceProfileSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON IamInstanceProfileSpecificationProperty where
  toJSON IamInstanceProfileSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Arn" IamInstanceProfileSpecificationProperty where
  type PropertyType "Arn" IamInstanceProfileSpecificationProperty = Value Prelude.Text
  set newValue IamInstanceProfileSpecificationProperty {..}
    = IamInstanceProfileSpecificationProperty
        {arn = Prelude.pure newValue, ..}
instance Property "Name" IamInstanceProfileSpecificationProperty where
  type PropertyType "Name" IamInstanceProfileSpecificationProperty = Value Prelude.Text
  set newValue IamInstanceProfileSpecificationProperty {..}
    = IamInstanceProfileSpecificationProperty
        {name = Prelude.pure newValue, ..}