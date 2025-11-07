module Stratosphere.DataZone.PolicyGrant.CreateAssetTypePolicyGrantDetailProperty (
        CreateAssetTypePolicyGrantDetailProperty(..),
        mkCreateAssetTypePolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateAssetTypePolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createassettypepolicygrantdetail.html>
    CreateAssetTypePolicyGrantDetailProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createassettypepolicygrantdetail.html#cfn-datazone-policygrant-createassettypepolicygrantdetail-includechilddomainunits>
                                              includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateAssetTypePolicyGrantDetailProperty ::
  CreateAssetTypePolicyGrantDetailProperty
mkCreateAssetTypePolicyGrantDetailProperty
  = CreateAssetTypePolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties CreateAssetTypePolicyGrantDetailProperty where
  toResourceProperties CreateAssetTypePolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.CreateAssetTypePolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON CreateAssetTypePolicyGrantDetailProperty where
  toJSON CreateAssetTypePolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" CreateAssetTypePolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" CreateAssetTypePolicyGrantDetailProperty = Value Prelude.Bool
  set newValue CreateAssetTypePolicyGrantDetailProperty {..}
    = CreateAssetTypePolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}