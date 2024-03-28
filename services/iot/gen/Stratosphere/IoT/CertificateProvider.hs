module Stratosphere.IoT.CertificateProvider (
        CertificateProvider(..), mkCertificateProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CertificateProvider
  = CertificateProvider {accountDefaultForOperations :: (ValueList Prelude.Text),
                         certificateProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                         lambdaFunctionArn :: (Value Prelude.Text),
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateProvider ::
  ValueList Prelude.Text -> Value Prelude.Text -> CertificateProvider
mkCertificateProvider accountDefaultForOperations lambdaFunctionArn
  = CertificateProvider
      {accountDefaultForOperations = accountDefaultForOperations,
       lambdaFunctionArn = lambdaFunctionArn,
       certificateProviderName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CertificateProvider where
  toResourceProperties CertificateProvider {..}
    = ResourceProperties
        {awsType = "AWS::IoT::CertificateProvider",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountDefaultForOperations" JSON..= accountDefaultForOperations,
                            "LambdaFunctionArn" JSON..= lambdaFunctionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateProviderName"
                                 Prelude.<$> certificateProviderName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CertificateProvider where
  toJSON CertificateProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountDefaultForOperations" JSON..= accountDefaultForOperations,
               "LambdaFunctionArn" JSON..= lambdaFunctionArn]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateProviderName"
                    Prelude.<$> certificateProviderName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccountDefaultForOperations" CertificateProvider where
  type PropertyType "AccountDefaultForOperations" CertificateProvider = ValueList Prelude.Text
  set newValue CertificateProvider {..}
    = CertificateProvider {accountDefaultForOperations = newValue, ..}
instance Property "CertificateProviderName" CertificateProvider where
  type PropertyType "CertificateProviderName" CertificateProvider = Value Prelude.Text
  set newValue CertificateProvider {..}
    = CertificateProvider
        {certificateProviderName = Prelude.pure newValue, ..}
instance Property "LambdaFunctionArn" CertificateProvider where
  type PropertyType "LambdaFunctionArn" CertificateProvider = Value Prelude.Text
  set newValue CertificateProvider {..}
    = CertificateProvider {lambdaFunctionArn = newValue, ..}
instance Property "Tags" CertificateProvider where
  type PropertyType "Tags" CertificateProvider = [Tag]
  set newValue CertificateProvider {..}
    = CertificateProvider {tags = Prelude.pure newValue, ..}