module Stratosphere.IoT.DomainConfiguration.ServerCertificateSummaryProperty (
        ServerCertificateSummaryProperty(..),
        mkServerCertificateSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerCertificateSummaryProperty
  = ServerCertificateSummaryProperty {serverCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      serverCertificateStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                      serverCertificateStatusDetail :: (Prelude.Maybe (Value Prelude.Text))}
mkServerCertificateSummaryProperty ::
  ServerCertificateSummaryProperty
mkServerCertificateSummaryProperty
  = ServerCertificateSummaryProperty
      {serverCertificateArn = Prelude.Nothing,
       serverCertificateStatus = Prelude.Nothing,
       serverCertificateStatusDetail = Prelude.Nothing}
instance ToResourceProperties ServerCertificateSummaryProperty where
  toResourceProperties ServerCertificateSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::DomainConfiguration.ServerCertificateSummary",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ServerCertificateArn" Prelude.<$> serverCertificateArn,
                            (JSON..=) "ServerCertificateStatus"
                              Prelude.<$> serverCertificateStatus,
                            (JSON..=) "ServerCertificateStatusDetail"
                              Prelude.<$> serverCertificateStatusDetail])}
instance JSON.ToJSON ServerCertificateSummaryProperty where
  toJSON ServerCertificateSummaryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ServerCertificateArn" Prelude.<$> serverCertificateArn,
               (JSON..=) "ServerCertificateStatus"
                 Prelude.<$> serverCertificateStatus,
               (JSON..=) "ServerCertificateStatusDetail"
                 Prelude.<$> serverCertificateStatusDetail]))
instance Property "ServerCertificateArn" ServerCertificateSummaryProperty where
  type PropertyType "ServerCertificateArn" ServerCertificateSummaryProperty = Value Prelude.Text
  set newValue ServerCertificateSummaryProperty {..}
    = ServerCertificateSummaryProperty
        {serverCertificateArn = Prelude.pure newValue, ..}
instance Property "ServerCertificateStatus" ServerCertificateSummaryProperty where
  type PropertyType "ServerCertificateStatus" ServerCertificateSummaryProperty = Value Prelude.Text
  set newValue ServerCertificateSummaryProperty {..}
    = ServerCertificateSummaryProperty
        {serverCertificateStatus = Prelude.pure newValue, ..}
instance Property "ServerCertificateStatusDetail" ServerCertificateSummaryProperty where
  type PropertyType "ServerCertificateStatusDetail" ServerCertificateSummaryProperty = Value Prelude.Text
  set newValue ServerCertificateSummaryProperty {..}
    = ServerCertificateSummaryProperty
        {serverCertificateStatusDetail = Prelude.pure newValue, ..}