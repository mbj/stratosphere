module Stratosphere.DataZone.PolicyGrant.CreateEnvironmentProfilePolicyGrantDetailProperty (
        CreateEnvironmentProfilePolicyGrantDetailProperty(..),
        mkCreateEnvironmentProfilePolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateEnvironmentProfilePolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createenvironmentprofilepolicygrantdetail.html>
    CreateEnvironmentProfilePolicyGrantDetailProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createenvironmentprofilepolicygrantdetail.html#cfn-datazone-policygrant-createenvironmentprofilepolicygrantdetail-domainunitid>
                                                       domainUnitId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateEnvironmentProfilePolicyGrantDetailProperty ::
  CreateEnvironmentProfilePolicyGrantDetailProperty
mkCreateEnvironmentProfilePolicyGrantDetailProperty
  = CreateEnvironmentProfilePolicyGrantDetailProperty
      {haddock_workaround_ = (), domainUnitId = Prelude.Nothing}
instance ToResourceProperties CreateEnvironmentProfilePolicyGrantDetailProperty where
  toResourceProperties
    CreateEnvironmentProfilePolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateEnvironmentProfilePolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainUnitId" Prelude.<$> domainUnitId])}
instance JSON.ToJSON CreateEnvironmentProfilePolicyGrantDetailProperty where
  toJSON CreateEnvironmentProfilePolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainUnitId" Prelude.<$> domainUnitId]))
instance Property "DomainUnitId" CreateEnvironmentProfilePolicyGrantDetailProperty where
  type PropertyType "DomainUnitId" CreateEnvironmentProfilePolicyGrantDetailProperty = Value Prelude.Text
  set newValue CreateEnvironmentProfilePolicyGrantDetailProperty {..}
    = CreateEnvironmentProfilePolicyGrantDetailProperty
        {domainUnitId = Prelude.pure newValue, ..}