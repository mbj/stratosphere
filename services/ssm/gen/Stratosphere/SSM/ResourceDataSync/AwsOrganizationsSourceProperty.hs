module Stratosphere.SSM.ResourceDataSync.AwsOrganizationsSourceProperty (
        AwsOrganizationsSourceProperty(..),
        mkAwsOrganizationsSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsOrganizationsSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html>
    AwsOrganizationsSourceProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html#cfn-ssm-resourcedatasync-awsorganizationssource-organizationsourcetype>
                                    organizationSourceType :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-resourcedatasync-awsorganizationssource.html#cfn-ssm-resourcedatasync-awsorganizationssource-organizationalunits>
                                    organizationalUnits :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsOrganizationsSourceProperty ::
  Value Prelude.Text -> AwsOrganizationsSourceProperty
mkAwsOrganizationsSourceProperty organizationSourceType
  = AwsOrganizationsSourceProperty
      {haddock_workaround_ = (),
       organizationSourceType = organizationSourceType,
       organizationalUnits = Prelude.Nothing}
instance ToResourceProperties AwsOrganizationsSourceProperty where
  toResourceProperties AwsOrganizationsSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::ResourceDataSync.AwsOrganizationsSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OrganizationSourceType" JSON..= organizationSourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "OrganizationalUnits"
                                 Prelude.<$> organizationalUnits]))}
instance JSON.ToJSON AwsOrganizationsSourceProperty where
  toJSON AwsOrganizationsSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OrganizationSourceType" JSON..= organizationSourceType]
              (Prelude.catMaybes
                 [(JSON..=) "OrganizationalUnits"
                    Prelude.<$> organizationalUnits])))
instance Property "OrganizationSourceType" AwsOrganizationsSourceProperty where
  type PropertyType "OrganizationSourceType" AwsOrganizationsSourceProperty = Value Prelude.Text
  set newValue AwsOrganizationsSourceProperty {..}
    = AwsOrganizationsSourceProperty
        {organizationSourceType = newValue, ..}
instance Property "OrganizationalUnits" AwsOrganizationsSourceProperty where
  type PropertyType "OrganizationalUnits" AwsOrganizationsSourceProperty = ValueList Prelude.Text
  set newValue AwsOrganizationsSourceProperty {..}
    = AwsOrganizationsSourceProperty
        {organizationalUnits = Prelude.pure newValue, ..}