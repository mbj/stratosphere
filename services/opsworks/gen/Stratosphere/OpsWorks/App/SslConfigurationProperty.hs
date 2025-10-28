module Stratosphere.OpsWorks.App.SslConfigurationProperty (
        SslConfigurationProperty(..), mkSslConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SslConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html>
    SslConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-certificate>
                              certificate :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-chain>
                              chain :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-app-sslconfiguration.html#cfn-opsworks-app-sslconfig-privatekey>
                              privateKey :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSslConfigurationProperty :: SslConfigurationProperty
mkSslConfigurationProperty
  = SslConfigurationProperty
      {haddock_workaround_ = (), certificate = Prelude.Nothing,
       chain = Prelude.Nothing, privateKey = Prelude.Nothing}
instance ToResourceProperties SslConfigurationProperty where
  toResourceProperties SslConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::App.SslConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Certificate" Prelude.<$> certificate,
                            (JSON..=) "Chain" Prelude.<$> chain,
                            (JSON..=) "PrivateKey" Prelude.<$> privateKey])}
instance JSON.ToJSON SslConfigurationProperty where
  toJSON SslConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Certificate" Prelude.<$> certificate,
               (JSON..=) "Chain" Prelude.<$> chain,
               (JSON..=) "PrivateKey" Prelude.<$> privateKey]))
instance Property "Certificate" SslConfigurationProperty where
  type PropertyType "Certificate" SslConfigurationProperty = Value Prelude.Text
  set newValue SslConfigurationProperty {..}
    = SslConfigurationProperty
        {certificate = Prelude.pure newValue, ..}
instance Property "Chain" SslConfigurationProperty where
  type PropertyType "Chain" SslConfigurationProperty = Value Prelude.Text
  set newValue SslConfigurationProperty {..}
    = SslConfigurationProperty {chain = Prelude.pure newValue, ..}
instance Property "PrivateKey" SslConfigurationProperty where
  type PropertyType "PrivateKey" SslConfigurationProperty = Value Prelude.Text
  set newValue SslConfigurationProperty {..}
    = SslConfigurationProperty {privateKey = Prelude.pure newValue, ..}