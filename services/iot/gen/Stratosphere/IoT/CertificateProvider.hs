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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificateprovider.html>
    CertificateProvider {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificateprovider.html#cfn-iot-certificateprovider-accountdefaultforoperations>
                         accountDefaultForOperations :: (ValueList Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificateprovider.html#cfn-iot-certificateprovider-certificateprovidername>
                         certificateProviderName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificateprovider.html#cfn-iot-certificateprovider-lambdafunctionarn>
                         lambdaFunctionArn :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificateprovider.html#cfn-iot-certificateprovider-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateProvider ::
  ValueList Prelude.Text -> Value Prelude.Text -> CertificateProvider
mkCertificateProvider accountDefaultForOperations lambdaFunctionArn
  = CertificateProvider
      {haddock_workaround_ = (),
       accountDefaultForOperations = accountDefaultForOperations,
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