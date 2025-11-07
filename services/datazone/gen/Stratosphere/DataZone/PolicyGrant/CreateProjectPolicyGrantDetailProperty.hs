module Stratosphere.DataZone.PolicyGrant.CreateProjectPolicyGrantDetailProperty (
        CreateProjectPolicyGrantDetailProperty(..),
        mkCreateProjectPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateProjectPolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectpolicygrantdetail.html>
    CreateProjectPolicyGrantDetailProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectpolicygrantdetail.html#cfn-datazone-policygrant-createprojectpolicygrantdetail-includechilddomainunits>
                                            includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateProjectPolicyGrantDetailProperty ::
  CreateProjectPolicyGrantDetailProperty
mkCreateProjectPolicyGrantDetailProperty
  = CreateProjectPolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties CreateProjectPolicyGrantDetailProperty where
  toResourceProperties CreateProjectPolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateProjectPolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON CreateProjectPolicyGrantDetailProperty where
  toJSON CreateProjectPolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" CreateProjectPolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" CreateProjectPolicyGrantDetailProperty = Value Prelude.Bool
  set newValue CreateProjectPolicyGrantDetailProperty {..}
    = CreateProjectPolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}