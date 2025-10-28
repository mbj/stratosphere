module Stratosphere.ApplicationInsights.Application.HANAPrometheusExporterProperty (
        HANAPrometheusExporterProperty(..),
        mkHANAPrometheusExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HANAPrometheusExporterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-hanaprometheusexporter.html>
    HANAPrometheusExporterProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-hanaprometheusexporter.html#cfn-applicationinsights-application-hanaprometheusexporter-agreetoinstallhanadbclient>
                                    agreeToInstallHANADBClient :: (Value Prelude.Bool),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-hanaprometheusexporter.html#cfn-applicationinsights-application-hanaprometheusexporter-hanaport>
                                    hANAPort :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-hanaprometheusexporter.html#cfn-applicationinsights-application-hanaprometheusexporter-hanasid>
                                    hANASID :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-hanaprometheusexporter.html#cfn-applicationinsights-application-hanaprometheusexporter-hanasecretname>
                                    hANASecretName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-hanaprometheusexporter.html#cfn-applicationinsights-application-hanaprometheusexporter-prometheusport>
                                    prometheusPort :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHANAPrometheusExporterProperty ::
  Value Prelude.Bool
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> HANAPrometheusExporterProperty
mkHANAPrometheusExporterProperty
  agreeToInstallHANADBClient
  hANAPort
  hANASID
  hANASecretName
  = HANAPrometheusExporterProperty
      {haddock_workaround_ = (),
       agreeToInstallHANADBClient = agreeToInstallHANADBClient,
       hANAPort = hANAPort, hANASID = hANASID,
       hANASecretName = hANASecretName, prometheusPort = Prelude.Nothing}
instance ToResourceProperties HANAPrometheusExporterProperty where
  toResourceProperties HANAPrometheusExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.HANAPrometheusExporter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgreeToInstallHANADBClient" JSON..= agreeToInstallHANADBClient,
                            "HANAPort" JSON..= hANAPort, "HANASID" JSON..= hANASID,
                            "HANASecretName" JSON..= hANASecretName]
                           (Prelude.catMaybes
                              [(JSON..=) "PrometheusPort" Prelude.<$> prometheusPort]))}
instance JSON.ToJSON HANAPrometheusExporterProperty where
  toJSON HANAPrometheusExporterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgreeToInstallHANADBClient" JSON..= agreeToInstallHANADBClient,
               "HANAPort" JSON..= hANAPort, "HANASID" JSON..= hANASID,
               "HANASecretName" JSON..= hANASecretName]
              (Prelude.catMaybes
                 [(JSON..=) "PrometheusPort" Prelude.<$> prometheusPort])))
instance Property "AgreeToInstallHANADBClient" HANAPrometheusExporterProperty where
  type PropertyType "AgreeToInstallHANADBClient" HANAPrometheusExporterProperty = Value Prelude.Bool
  set newValue HANAPrometheusExporterProperty {..}
    = HANAPrometheusExporterProperty
        {agreeToInstallHANADBClient = newValue, ..}
instance Property "HANAPort" HANAPrometheusExporterProperty where
  type PropertyType "HANAPort" HANAPrometheusExporterProperty = Value Prelude.Text
  set newValue HANAPrometheusExporterProperty {..}
    = HANAPrometheusExporterProperty {hANAPort = newValue, ..}
instance Property "HANASID" HANAPrometheusExporterProperty where
  type PropertyType "HANASID" HANAPrometheusExporterProperty = Value Prelude.Text
  set newValue HANAPrometheusExporterProperty {..}
    = HANAPrometheusExporterProperty {hANASID = newValue, ..}
instance Property "HANASecretName" HANAPrometheusExporterProperty where
  type PropertyType "HANASecretName" HANAPrometheusExporterProperty = Value Prelude.Text
  set newValue HANAPrometheusExporterProperty {..}
    = HANAPrometheusExporterProperty {hANASecretName = newValue, ..}
instance Property "PrometheusPort" HANAPrometheusExporterProperty where
  type PropertyType "PrometheusPort" HANAPrometheusExporterProperty = Value Prelude.Text
  set newValue HANAPrometheusExporterProperty {..}
    = HANAPrometheusExporterProperty
        {prometheusPort = Prelude.pure newValue, ..}