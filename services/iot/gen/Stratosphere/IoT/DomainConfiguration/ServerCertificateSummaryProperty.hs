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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-domainconfiguration-servercertificatesummary.html>
    ServerCertificateSummaryProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-domainconfiguration-servercertificatesummary.html#cfn-iot-domainconfiguration-servercertificatesummary-servercertificatearn>
                                      serverCertificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-domainconfiguration-servercertificatesummary.html#cfn-iot-domainconfiguration-servercertificatesummary-servercertificatestatus>
                                      serverCertificateStatus :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-domainconfiguration-servercertificatesummary.html#cfn-iot-domainconfiguration-servercertificatesummary-servercertificatestatusdetail>
                                      serverCertificateStatusDetail :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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
         supportsTags = Prelude.False,
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