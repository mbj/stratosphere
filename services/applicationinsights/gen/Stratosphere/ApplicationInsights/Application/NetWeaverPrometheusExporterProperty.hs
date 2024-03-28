module Stratosphere.ApplicationInsights.Application.NetWeaverPrometheusExporterProperty (
        NetWeaverPrometheusExporterProperty(..),
        mkNetWeaverPrometheusExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetWeaverPrometheusExporterProperty
  = NetWeaverPrometheusExporterProperty {instanceNumbers :: (ValueList Prelude.Text),
                                         prometheusPort :: (Prelude.Maybe (Value Prelude.Text)),
                                         sAPSID :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetWeaverPrometheusExporterProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> NetWeaverPrometheusExporterProperty
mkNetWeaverPrometheusExporterProperty instanceNumbers sAPSID
  = NetWeaverPrometheusExporterProperty
      {instanceNumbers = instanceNumbers, sAPSID = sAPSID,
       prometheusPort = Prelude.Nothing}
instance ToResourceProperties NetWeaverPrometheusExporterProperty where
  toResourceProperties NetWeaverPrometheusExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.NetWeaverPrometheusExporter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceNumbers" JSON..= instanceNumbers,
                            "SAPSID" JSON..= sAPSID]
                           (Prelude.catMaybes
                              [(JSON..=) "PrometheusPort" Prelude.<$> prometheusPort]))}
instance JSON.ToJSON NetWeaverPrometheusExporterProperty where
  toJSON NetWeaverPrometheusExporterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceNumbers" JSON..= instanceNumbers,
               "SAPSID" JSON..= sAPSID]
              (Prelude.catMaybes
                 [(JSON..=) "PrometheusPort" Prelude.<$> prometheusPort])))
instance Property "InstanceNumbers" NetWeaverPrometheusExporterProperty where
  type PropertyType "InstanceNumbers" NetWeaverPrometheusExporterProperty = ValueList Prelude.Text
  set newValue NetWeaverPrometheusExporterProperty {..}
    = NetWeaverPrometheusExporterProperty
        {instanceNumbers = newValue, ..}
instance Property "PrometheusPort" NetWeaverPrometheusExporterProperty where
  type PropertyType "PrometheusPort" NetWeaverPrometheusExporterProperty = Value Prelude.Text
  set newValue NetWeaverPrometheusExporterProperty {..}
    = NetWeaverPrometheusExporterProperty
        {prometheusPort = Prelude.pure newValue, ..}
instance Property "SAPSID" NetWeaverPrometheusExporterProperty where
  type PropertyType "SAPSID" NetWeaverPrometheusExporterProperty = Value Prelude.Text
  set newValue NetWeaverPrometheusExporterProperty {..}
    = NetWeaverPrometheusExporterProperty {sAPSID = newValue, ..}