module Stratosphere.PCAConnectorAD.Template.CertificateValidityProperty (
        module Exports, CertificateValidityProperty(..),
        mkCertificateValidityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PCAConnectorAD.Template.ValidityPeriodProperty as Exports
import Stratosphere.ResourceProperties
data CertificateValidityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-certificatevalidity.html>
    CertificateValidityProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-certificatevalidity.html#cfn-pcaconnectorad-template-certificatevalidity-renewalperiod>
                                 renewalPeriod :: ValidityPeriodProperty,
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-certificatevalidity.html#cfn-pcaconnectorad-template-certificatevalidity-validityperiod>
                                 validityPeriod :: ValidityPeriodProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateValidityProperty ::
  ValidityPeriodProperty
  -> ValidityPeriodProperty -> CertificateValidityProperty
mkCertificateValidityProperty renewalPeriod validityPeriod
  = CertificateValidityProperty
      {haddock_workaround_ = (), renewalPeriod = renewalPeriod,
       validityPeriod = validityPeriod}
instance ToResourceProperties CertificateValidityProperty where
  toResourceProperties CertificateValidityProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Template.CertificateValidity",
         supportsTags = Prelude.False,
         properties = ["RenewalPeriod" JSON..= renewalPeriod,
                       "ValidityPeriod" JSON..= validityPeriod]}
instance JSON.ToJSON CertificateValidityProperty where
  toJSON CertificateValidityProperty {..}
    = JSON.object
        ["RenewalPeriod" JSON..= renewalPeriod,
         "ValidityPeriod" JSON..= validityPeriod]
instance Property "RenewalPeriod" CertificateValidityProperty where
  type PropertyType "RenewalPeriod" CertificateValidityProperty = ValidityPeriodProperty
  set newValue CertificateValidityProperty {..}
    = CertificateValidityProperty {renewalPeriod = newValue, ..}
instance Property "ValidityPeriod" CertificateValidityProperty where
  type PropertyType "ValidityPeriod" CertificateValidityProperty = ValidityPeriodProperty
  set newValue CertificateValidityProperty {..}
    = CertificateValidityProperty {validityPeriod = newValue, ..}