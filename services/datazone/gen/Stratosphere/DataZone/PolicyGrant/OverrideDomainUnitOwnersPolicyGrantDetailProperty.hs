module Stratosphere.DataZone.PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetailProperty (
        OverrideDomainUnitOwnersPolicyGrantDetailProperty(..),
        mkOverrideDomainUnitOwnersPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OverrideDomainUnitOwnersPolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-overridedomainunitownerspolicygrantdetail.html>
    OverrideDomainUnitOwnersPolicyGrantDetailProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-overridedomainunitownerspolicygrantdetail.html#cfn-datazone-policygrant-overridedomainunitownerspolicygrantdetail-includechilddomainunits>
                                                       includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverrideDomainUnitOwnersPolicyGrantDetailProperty ::
  OverrideDomainUnitOwnersPolicyGrantDetailProperty
mkOverrideDomainUnitOwnersPolicyGrantDetailProperty
  = OverrideDomainUnitOwnersPolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties OverrideDomainUnitOwnersPolicyGrantDetailProperty where
  toResourceProperties
    OverrideDomainUnitOwnersPolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON OverrideDomainUnitOwnersPolicyGrantDetailProperty where
  toJSON OverrideDomainUnitOwnersPolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" OverrideDomainUnitOwnersPolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" OverrideDomainUnitOwnersPolicyGrantDetailProperty = Value Prelude.Bool
  set newValue OverrideDomainUnitOwnersPolicyGrantDetailProperty {..}
    = OverrideDomainUnitOwnersPolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}