module Stratosphere.DataZone.PolicyGrant.CreateGlossaryPolicyGrantDetailProperty (
        CreateGlossaryPolicyGrantDetailProperty(..),
        mkCreateGlossaryPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateGlossaryPolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createglossarypolicygrantdetail.html>
    CreateGlossaryPolicyGrantDetailProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createglossarypolicygrantdetail.html#cfn-datazone-policygrant-createglossarypolicygrantdetail-includechilddomainunits>
                                             includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateGlossaryPolicyGrantDetailProperty ::
  CreateGlossaryPolicyGrantDetailProperty
mkCreateGlossaryPolicyGrantDetailProperty
  = CreateGlossaryPolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties CreateGlossaryPolicyGrantDetailProperty where
  toResourceProperties CreateGlossaryPolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateGlossaryPolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON CreateGlossaryPolicyGrantDetailProperty where
  toJSON CreateGlossaryPolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" CreateGlossaryPolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" CreateGlossaryPolicyGrantDetailProperty = Value Prelude.Bool
  set newValue CreateGlossaryPolicyGrantDetailProperty {..}
    = CreateGlossaryPolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}