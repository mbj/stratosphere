module Stratosphere.IAM.InstanceProfile (
        InstanceProfile(..), mkInstanceProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceProfile
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html>
    InstanceProfile {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-instanceprofilename>
                     instanceProfileName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-path>
                     path :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-roles>
                     roles :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceProfile :: ValueList Prelude.Text -> InstanceProfile
mkInstanceProfile roles
  = InstanceProfile
      {haddock_workaround_ = (), roles = roles,
       instanceProfileName = Prelude.Nothing, path = Prelude.Nothing}
instance ToResourceProperties InstanceProfile where
  toResourceProperties InstanceProfile {..}
    = ResourceProperties
        {awsType = "AWS::IAM::InstanceProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Roles" JSON..= roles]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
                               (JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON InstanceProfile where
  toJSON InstanceProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Roles" JSON..= roles]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceProfileName" Prelude.<$> instanceProfileName,
                  (JSON..=) "Path" Prelude.<$> path])))
instance Property "InstanceProfileName" InstanceProfile where
  type PropertyType "InstanceProfileName" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {instanceProfileName = Prelude.pure newValue, ..}
instance Property "Path" InstanceProfile where
  type PropertyType "Path" InstanceProfile = Value Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {path = Prelude.pure newValue, ..}
instance Property "Roles" InstanceProfile where
  type PropertyType "Roles" InstanceProfile = ValueList Prelude.Text
  set newValue InstanceProfile {..}
    = InstanceProfile {roles = newValue, ..}