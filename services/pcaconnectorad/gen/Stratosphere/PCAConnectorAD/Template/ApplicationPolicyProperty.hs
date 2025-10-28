module Stratosphere.PCAConnectorAD.Template.ApplicationPolicyProperty (
        ApplicationPolicyProperty(..), mkApplicationPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-applicationpolicy.html>
    ApplicationPolicyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-applicationpolicy.html#cfn-pcaconnectorad-template-applicationpolicy-policyobjectidentifier>
                               policyObjectIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-applicationpolicy.html#cfn-pcaconnectorad-template-applicationpolicy-policytype>
                               policyType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationPolicyProperty :: ApplicationPolicyProperty
mkApplicationPolicyProperty
  = ApplicationPolicyProperty
      {haddock_workaround_ = (),
       policyObjectIdentifier = Prelude.Nothing,
       policyType = Prelude.Nothing}
instance ToResourceProperties ApplicationPolicyProperty where
  toResourceProperties ApplicationPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.ApplicationPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PolicyObjectIdentifier"
                              Prelude.<$> policyObjectIdentifier,
                            (JSON..=) "PolicyType" Prelude.<$> policyType])}
instance JSON.ToJSON ApplicationPolicyProperty where
  toJSON ApplicationPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PolicyObjectIdentifier"
                 Prelude.<$> policyObjectIdentifier,
               (JSON..=) "PolicyType" Prelude.<$> policyType]))
instance Property "PolicyObjectIdentifier" ApplicationPolicyProperty where
  type PropertyType "PolicyObjectIdentifier" ApplicationPolicyProperty = Value Prelude.Text
  set newValue ApplicationPolicyProperty {..}
    = ApplicationPolicyProperty
        {policyObjectIdentifier = Prelude.pure newValue, ..}
instance Property "PolicyType" ApplicationPolicyProperty where
  type PropertyType "PolicyType" ApplicationPolicyProperty = Value Prelude.Text
  set newValue ApplicationPolicyProperty {..}
    = ApplicationPolicyProperty
        {policyType = Prelude.pure newValue, ..}