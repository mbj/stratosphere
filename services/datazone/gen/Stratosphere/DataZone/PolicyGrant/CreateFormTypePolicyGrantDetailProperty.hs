module Stratosphere.DataZone.PolicyGrant.CreateFormTypePolicyGrantDetailProperty (
        CreateFormTypePolicyGrantDetailProperty(..),
        mkCreateFormTypePolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateFormTypePolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createformtypepolicygrantdetail.html>
    CreateFormTypePolicyGrantDetailProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createformtypepolicygrantdetail.html#cfn-datazone-policygrant-createformtypepolicygrantdetail-includechilddomainunits>
                                             includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateFormTypePolicyGrantDetailProperty ::
  CreateFormTypePolicyGrantDetailProperty
mkCreateFormTypePolicyGrantDetailProperty
  = CreateFormTypePolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties CreateFormTypePolicyGrantDetailProperty where
  toResourceProperties CreateFormTypePolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateFormTypePolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON CreateFormTypePolicyGrantDetailProperty where
  toJSON CreateFormTypePolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" CreateFormTypePolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" CreateFormTypePolicyGrantDetailProperty = Value Prelude.Bool
  set newValue CreateFormTypePolicyGrantDetailProperty {..}
    = CreateFormTypePolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}