module Stratosphere.ACMPCA.Certificate.PolicyInformationProperty (
        module Exports, PolicyInformationProperty(..),
        mkPolicyInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ACMPCA.Certificate.PolicyQualifierInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyInformationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-policyinformation.html>
    PolicyInformationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-policyinformation.html#cfn-acmpca-certificate-policyinformation-certpolicyid>
                               certPolicyId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-policyinformation.html#cfn-acmpca-certificate-policyinformation-policyqualifiers>
                               policyQualifiers :: (Prelude.Maybe [PolicyQualifierInfoProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyInformationProperty ::
  Value Prelude.Text -> PolicyInformationProperty
mkPolicyInformationProperty certPolicyId
  = PolicyInformationProperty
      {haddock_workaround_ = (), certPolicyId = certPolicyId,
       policyQualifiers = Prelude.Nothing}
instance ToResourceProperties PolicyInformationProperty where
  toResourceProperties PolicyInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ACMPCA::Certificate.PolicyInformation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertPolicyId" JSON..= certPolicyId]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyQualifiers" Prelude.<$> policyQualifiers]))}
instance JSON.ToJSON PolicyInformationProperty where
  toJSON PolicyInformationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertPolicyId" JSON..= certPolicyId]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyQualifiers" Prelude.<$> policyQualifiers])))
instance Property "CertPolicyId" PolicyInformationProperty where
  type PropertyType "CertPolicyId" PolicyInformationProperty = Value Prelude.Text
  set newValue PolicyInformationProperty {..}
    = PolicyInformationProperty {certPolicyId = newValue, ..}
instance Property "PolicyQualifiers" PolicyInformationProperty where
  type PropertyType "PolicyQualifiers" PolicyInformationProperty = [PolicyQualifierInfoProperty]
  set newValue PolicyInformationProperty {..}
    = PolicyInformationProperty
        {policyQualifiers = Prelude.pure newValue, ..}