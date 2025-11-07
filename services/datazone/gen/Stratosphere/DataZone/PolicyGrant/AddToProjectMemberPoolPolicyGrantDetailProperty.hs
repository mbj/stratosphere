module Stratosphere.DataZone.PolicyGrant.AddToProjectMemberPoolPolicyGrantDetailProperty (
        AddToProjectMemberPoolPolicyGrantDetailProperty(..),
        mkAddToProjectMemberPoolPolicyGrantDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddToProjectMemberPoolPolicyGrantDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-addtoprojectmemberpoolpolicygrantdetail.html>
    AddToProjectMemberPoolPolicyGrantDetailProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-addtoprojectmemberpoolpolicygrantdetail.html#cfn-datazone-policygrant-addtoprojectmemberpoolpolicygrantdetail-includechilddomainunits>
                                                     includeChildDomainUnits :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddToProjectMemberPoolPolicyGrantDetailProperty ::
  AddToProjectMemberPoolPolicyGrantDetailProperty
mkAddToProjectMemberPoolPolicyGrantDetailProperty
  = AddToProjectMemberPoolPolicyGrantDetailProperty
      {haddock_workaround_ = (),
       includeChildDomainUnits = Prelude.Nothing}
instance ToResourceProperties AddToProjectMemberPoolPolicyGrantDetailProperty where
  toResourceProperties
    AddToProjectMemberPoolPolicyGrantDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::PolicyGrant.AddToProjectMemberPoolPolicyGrantDetail",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeChildDomainUnits"
                              Prelude.<$> includeChildDomainUnits])}
instance JSON.ToJSON AddToProjectMemberPoolPolicyGrantDetailProperty where
  toJSON AddToProjectMemberPoolPolicyGrantDetailProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeChildDomainUnits"
                 Prelude.<$> includeChildDomainUnits]))
instance Property "IncludeChildDomainUnits" AddToProjectMemberPoolPolicyGrantDetailProperty where
  type PropertyType "IncludeChildDomainUnits" AddToProjectMemberPoolPolicyGrantDetailProperty = Value Prelude.Bool
  set newValue AddToProjectMemberPoolPolicyGrantDetailProperty {..}
    = AddToProjectMemberPoolPolicyGrantDetailProperty
        {includeChildDomainUnits = Prelude.pure newValue, ..}