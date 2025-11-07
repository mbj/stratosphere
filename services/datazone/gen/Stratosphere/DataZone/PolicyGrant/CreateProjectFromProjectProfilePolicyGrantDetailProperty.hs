module Stratosphere.DataZone.PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetailProperty (
        CreateProjectFromProjectProfilePolicyGrantDetailProperty(..),
        mkCreateProjectFromProjectProfilePolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateProjectFromProjectProfilePolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail.html>
    CreateProjectFromProjectProfilePolicyGrantDetailProperty {haddock_workaround_ :: (),
                                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail.html#cfn-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail-includechilddomainunits>
                                                              includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool)),
                                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail.html#cfn-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail-projectprofiles>
                                                              projectProfiles :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateProjectFromProjectProfilePolicyGrantDetailProperty ::
  CreateProjectFromProjectProfilePolicyGrantDetailProperty
mkCreateProjectFromProjectProfilePolicyGrantDetailProperty
  = CreateProjectFromProjectProfilePolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing,
       projectProfiles = Prelude.Nothing}
instance ToResourceProperties CreateProjectFromProjectProfilePolicyGrantDetailProperty where
  toResourceProperties
    CreateProjectFromProjectProfilePolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits,
                            (JSON..=) "ProjectProfiles" Prelude.<$> projectProfiles])}
instance JSON.ToJSON CreateProjectFromProjectProfilePolicyGrantDetailProperty where
  toJSON
    CreateProjectFromProjectProfilePolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits,
               (JSON..=) "ProjectProfiles" Prelude.<$> projectProfiles]))
instance Property "IncludeChildDomainUnits" CreateProjectFromProjectProfilePolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" CreateProjectFromProjectProfilePolicyGrantDetailProperty = Value Prelude.Bool
  set
    newValue
    CreateProjectFromProjectProfilePolicyGrantDetailProperty {..}
    = CreateProjectFromProjectProfilePolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}
instance Property "ProjectProfiles" CreateProjectFromProjectProfilePolicyGrantDetailProperty where
  type PropertyType "ProjectProfiles" CreateProjectFromProjectProfilePolicyGrantDetailProperty = ValueList Prelude.Text
  set
    newValue
    CreateProjectFromProjectProfilePolicyGrantDetailProperty {..}
    = CreateProjectFromProjectProfilePolicyGrantDetailProperty
        {projectProfiles = Prelude.pure newValue, ..}