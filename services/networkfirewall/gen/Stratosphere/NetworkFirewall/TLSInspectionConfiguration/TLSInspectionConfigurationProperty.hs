module Stratosphere.NetworkFirewall.TLSInspectionConfiguration.TLSInspectionConfigurationProperty (
        module Exports, TLSInspectionConfigurationProperty(..),
        mkTLSInspectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.TLSInspectionConfiguration.ServerCertificateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TLSInspectionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-tlsinspectionconfiguration.html>
    TLSInspectionConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-tlsinspectionconfiguration.html#cfn-networkfirewall-tlsinspectionconfiguration-tlsinspectionconfiguration-servercertificateconfigurations>
                                        serverCertificateConfigurations :: (Prelude.Maybe [ServerCertificateConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTLSInspectionConfigurationProperty ::
  TLSInspectionConfigurationProperty
mkTLSInspectionConfigurationProperty
  = TLSInspectionConfigurationProperty
      {haddock_workaround_ = (),
       serverCertificateConfigurations = Prelude.Nothing}
instance ToResourceProperties TLSInspectionConfigurationProperty where
  toResourceProperties TLSInspectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::TLSInspectionConfiguration.TLSInspectionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ServerCertificateConfigurations"
                              Prelude.<$> serverCertificateConfigurations])}
instance JSON.ToJSON TLSInspectionConfigurationProperty where
  toJSON TLSInspectionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ServerCertificateConfigurations"
                 Prelude.<$> serverCertificateConfigurations]))
instance Property "ServerCertificateConfigurations" TLSInspectionConfigurationProperty where
  type PropertyType "ServerCertificateConfigurations" TLSInspectionConfigurationProperty = [ServerCertificateConfigurationProperty]
  set newValue TLSInspectionConfigurationProperty {..}
    = TLSInspectionConfigurationProperty
        {serverCertificateConfigurations = Prelude.pure newValue, ..}