module Stratosphere.IoT.DomainConfiguration.ServerCertificateConfigProperty (
        ServerCertificateConfigProperty(..),
        mkServerCertificateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerCertificateConfigProperty
  = ServerCertificateConfigProperty {enableOCSPCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                                     ocspAuthorizedResponderArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     ocspLambdaArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerCertificateConfigProperty ::
  ServerCertificateConfigProperty
mkServerCertificateConfigProperty
  = ServerCertificateConfigProperty
      {enableOCSPCheck = Prelude.Nothing,
       ocspAuthorizedResponderArn = Prelude.Nothing,
       ocspLambdaArn = Prelude.Nothing}
instance ToResourceProperties ServerCertificateConfigProperty where
  toResourceProperties ServerCertificateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration.ServerCertificateConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableOCSPCheck" Prelude.<$> enableOCSPCheck,
                            (JSON..=) "OcspAuthorizedResponderArn"
                              Prelude.<$> ocspAuthorizedResponderArn,
                            (JSON..=) "OcspLambdaArn" Prelude.<$> ocspLambdaArn])}
instance JSON.ToJSON ServerCertificateConfigProperty where
  toJSON ServerCertificateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableOCSPCheck" Prelude.<$> enableOCSPCheck,
               (JSON..=) "OcspAuthorizedResponderArn"
                 Prelude.<$> ocspAuthorizedResponderArn,
               (JSON..=) "OcspLambdaArn" Prelude.<$> ocspLambdaArn]))
instance Property "EnableOCSPCheck" ServerCertificateConfigProperty where
  type PropertyType "EnableOCSPCheck" ServerCertificateConfigProperty = Value Prelude.Bool
  set newValue ServerCertificateConfigProperty {..}
    = ServerCertificateConfigProperty
        {enableOCSPCheck = Prelude.pure newValue, ..}
instance Property "OcspAuthorizedResponderArn" ServerCertificateConfigProperty where
  type PropertyType "OcspAuthorizedResponderArn" ServerCertificateConfigProperty = Value Prelude.Text
  set newValue ServerCertificateConfigProperty {..}
    = ServerCertificateConfigProperty
        {ocspAuthorizedResponderArn = Prelude.pure newValue, ..}
instance Property "OcspLambdaArn" ServerCertificateConfigProperty where
  type PropertyType "OcspLambdaArn" ServerCertificateConfigProperty = Value Prelude.Text
  set newValue ServerCertificateConfigProperty {..}
    = ServerCertificateConfigProperty
        {ocspLambdaArn = Prelude.pure newValue, ..}