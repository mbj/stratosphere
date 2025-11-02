module Stratosphere.ApiGatewayV2.Integration.TlsConfigProperty (
        TlsConfigProperty(..), mkTlsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TlsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html>
    TlsConfigProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-integration-tlsconfig.html#cfn-apigatewayv2-integration-tlsconfig-servernametoverify>
                       serverNameToVerify :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTlsConfigProperty :: TlsConfigProperty
mkTlsConfigProperty
  = TlsConfigProperty
      {haddock_workaround_ = (), serverNameToVerify = Prelude.Nothing}
instance ToResourceProperties TlsConfigProperty where
  toResourceProperties TlsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::Integration.TlsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ServerNameToVerify" Prelude.<$> serverNameToVerify])}
instance JSON.ToJSON TlsConfigProperty where
  toJSON TlsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ServerNameToVerify" Prelude.<$> serverNameToVerify]))
instance Property "ServerNameToVerify" TlsConfigProperty where
  type PropertyType "ServerNameToVerify" TlsConfigProperty = Value Prelude.Text
  set newValue TlsConfigProperty {..}
    = TlsConfigProperty
        {serverNameToVerify = Prelude.pure newValue, ..}