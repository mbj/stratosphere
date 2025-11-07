module Stratosphere.DataZone.PolicyGrant.OverrideProjectOwnersPolicyGrantDetailProperty (
        OverrideProjectOwnersPolicyGrantDetailProperty(..),
        mkOverrideProjectOwnersPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OverrideProjectOwnersPolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-overrideprojectownerspolicygrantdetail.html>
    OverrideProjectOwnersPolicyGrantDetailProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-overrideprojectownerspolicygrantdetail.html#cfn-datazone-policygrant-overrideprojectownerspolicygrantdetail-includechilddomainunits>
                                                    includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverrideProjectOwnersPolicyGrantDetailProperty ::
  OverrideProjectOwnersPolicyGrantDetailProperty
mkOverrideProjectOwnersPolicyGrantDetailProperty
  = OverrideProjectOwnersPolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties OverrideProjectOwnersPolicyGrantDetailProperty where
  toResourceProperties
    OverrideProjectOwnersPolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.OverrideProjectOwnersPolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON OverrideProjectOwnersPolicyGrantDetailProperty where
  toJSON OverrideProjectOwnersPolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" OverrideProjectOwnersPolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" OverrideProjectOwnersPolicyGrantDetailProperty = Value Prelude.Bool
  set newValue OverrideProjectOwnersPolicyGrantDetailProperty {..}
    = OverrideProjectOwnersPolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}