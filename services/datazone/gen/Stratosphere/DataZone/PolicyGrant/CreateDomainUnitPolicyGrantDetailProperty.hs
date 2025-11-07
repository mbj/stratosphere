module Stratosphere.DataZone.PolicyGrant.CreateDomainUnitPolicyGrantDetailProperty (
        CreateDomainUnitPolicyGrantDetailProperty(..),
        mkCreateDomainUnitPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateDomainUnitPolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createdomainunitpolicygrantdetail.html>
    CreateDomainUnitPolicyGrantDetailProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createdomainunitpolicygrantdetail.html#cfn-datazone-policygrant-createdomainunitpolicygrantdetail-includechilddomainunits>
                                               includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateDomainUnitPolicyGrantDetailProperty ::
  CreateDomainUnitPolicyGrantDetailProperty
mkCreateDomainUnitPolicyGrantDetailProperty
  = CreateDomainUnitPolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties CreateDomainUnitPolicyGrantDetailProperty where
  toResourceProperties CreateDomainUnitPolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateDomainUnitPolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON CreateDomainUnitPolicyGrantDetailProperty where
  toJSON CreateDomainUnitPolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" CreateDomainUnitPolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" CreateDomainUnitPolicyGrantDetailProperty = Value Prelude.Bool
  set newValue CreateDomainUnitPolicyGrantDetailProperty {..}
    = CreateDomainUnitPolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}