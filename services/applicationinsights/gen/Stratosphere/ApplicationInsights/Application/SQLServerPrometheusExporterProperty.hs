module Stratosphere.ApplicationInsights.Application.SQLServerPrometheusExporterProperty (
        SQLServerPrometheusExporterProperty(..),
        mkSQLServerPrometheusExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SQLServerPrometheusExporterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-sqlserverprometheusexporter.html>
    SQLServerPrometheusExporterProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-sqlserverprometheusexporter.html#cfn-applicationinsights-application-sqlserverprometheusexporter-prometheusport>
                                         prometheusPort :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-sqlserverprometheusexporter.html#cfn-applicationinsights-application-sqlserverprometheusexporter-sqlsecretname>
                                         sQLSecretName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSQLServerPrometheusExporterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SQLServerPrometheusExporterProperty
mkSQLServerPrometheusExporterProperty prometheusPort sQLSecretName
  = SQLServerPrometheusExporterProperty
      {haddock_workaround_ = (), prometheusPort = prometheusPort,
       sQLSecretName = sQLSecretName}
instance ToResourceProperties SQLServerPrometheusExporterProperty where
  toResourceProperties SQLServerPrometheusExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.SQLServerPrometheusExporter",
         supportsTags = Prelude.False,
         properties = ["PrometheusPort" JSON..= prometheusPort,
                       "SQLSecretName" JSON..= sQLSecretName]}
instance JSON.ToJSON SQLServerPrometheusExporterProperty where
  toJSON SQLServerPrometheusExporterProperty {..}
    = JSON.object
        ["PrometheusPort" JSON..= prometheusPort,
         "SQLSecretName" JSON..= sQLSecretName]
instance Property "PrometheusPort" SQLServerPrometheusExporterProperty where
  type PropertyType "PrometheusPort" SQLServerPrometheusExporterProperty = Value Prelude.Text
  set newValue SQLServerPrometheusExporterProperty {..}
    = SQLServerPrometheusExporterProperty
        {prometheusPort = newValue, ..}
instance Property "SQLSecretName" SQLServerPrometheusExporterProperty where
  type PropertyType "SQLSecretName" SQLServerPrometheusExporterProperty = Value Prelude.Text
  set newValue SQLServerPrometheusExporterProperty {..}
    = SQLServerPrometheusExporterProperty
        {sQLSecretName = newValue, ..}