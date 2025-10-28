module Stratosphere.DataZone.ProjectMembership (
        module Exports, ProjectMembership(..), mkProjectMembership
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.ProjectMembership.MemberProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProjectMembership
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectmembership.html>
    ProjectMembership {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectmembership.html#cfn-datazone-projectmembership-designation>
                       designation :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectmembership.html#cfn-datazone-projectmembership-domainidentifier>
                       domainIdentifier :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectmembership.html#cfn-datazone-projectmembership-member>
                       member :: MemberProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-projectmembership.html#cfn-datazone-projectmembership-projectidentifier>
                       projectIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProjectMembership ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> MemberProperty -> Value Prelude.Text -> ProjectMembership
mkProjectMembership
  designation
  domainIdentifier
  member
  projectIdentifier
  = ProjectMembership
      {haddock_workaround_ = (), designation = designation,
       domainIdentifier = domainIdentifier, member = member,
       projectIdentifier = projectIdentifier}
instance ToResourceProperties ProjectMembership where
  toResourceProperties ProjectMembership {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::ProjectMembership",
         supportsTags = Prelude.False,
         properties = ["Designation" JSON..= designation,
                       "DomainIdentifier" JSON..= domainIdentifier,
                       "Member" JSON..= member,
                       "ProjectIdentifier" JSON..= projectIdentifier]}
instance JSON.ToJSON ProjectMembership where
  toJSON ProjectMembership {..}
    = JSON.object
        ["Designation" JSON..= designation,
         "DomainIdentifier" JSON..= domainIdentifier,
         "Member" JSON..= member,
         "ProjectIdentifier" JSON..= projectIdentifier]
instance Property "Designation" ProjectMembership where
  type PropertyType "Designation" ProjectMembership = Value Prelude.Text
  set newValue ProjectMembership {..}
    = ProjectMembership {designation = newValue, ..}
instance Property "DomainIdentifier" ProjectMembership where
  type PropertyType "DomainIdentifier" ProjectMembership = Value Prelude.Text
  set newValue ProjectMembership {..}
    = ProjectMembership {domainIdentifier = newValue, ..}
instance Property "Member" ProjectMembership where
  type PropertyType "Member" ProjectMembership = MemberProperty
  set newValue ProjectMembership {..}
    = ProjectMembership {member = newValue, ..}
instance Property "ProjectIdentifier" ProjectMembership where
  type PropertyType "ProjectIdentifier" ProjectMembership = Value Prelude.Text
  set newValue ProjectMembership {..}
    = ProjectMembership {projectIdentifier = newValue, ..}