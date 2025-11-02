module Stratosphere.AppFlow.ConnectorProfile.ConnectorProfileCredentialsProperty (
        module Exports, ConnectorProfileCredentialsProperty(..),
        mkConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.AmplitudeConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.CustomConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.DatadogConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.DynatraceConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.GoogleAnalyticsConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.InforNexusConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.MarketoConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.PardotConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.RedshiftConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SAPODataConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SalesforceConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ServiceNowConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SingularConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SlackConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.SnowflakeConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.TrendmicroConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.VeevaConnectorProfileCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ZendeskConnectorProfileCredentialsProperty as Exports
import Stratosphere.ResourceProperties
data ConnectorProfileCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html>
    ConnectorProfileCredentialsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-amplitude>
                                         amplitude :: (Prelude.Maybe AmplitudeConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-customconnector>
                                         customConnector :: (Prelude.Maybe CustomConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-datadog>
                                         datadog :: (Prelude.Maybe DatadogConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-dynatrace>
                                         dynatrace :: (Prelude.Maybe DynatraceConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-googleanalytics>
                                         googleAnalytics :: (Prelude.Maybe GoogleAnalyticsConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-infornexus>
                                         inforNexus :: (Prelude.Maybe InforNexusConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-marketo>
                                         marketo :: (Prelude.Maybe MarketoConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-pardot>
                                         pardot :: (Prelude.Maybe PardotConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-redshift>
                                         redshift :: (Prelude.Maybe RedshiftConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-sapodata>
                                         sAPOData :: (Prelude.Maybe SAPODataConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-salesforce>
                                         salesforce :: (Prelude.Maybe SalesforceConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-servicenow>
                                         serviceNow :: (Prelude.Maybe ServiceNowConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-singular>
                                         singular :: (Prelude.Maybe SingularConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-slack>
                                         slack :: (Prelude.Maybe SlackConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-snowflake>
                                         snowflake :: (Prelude.Maybe SnowflakeConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-trendmicro>
                                         trendmicro :: (Prelude.Maybe TrendmicroConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-veeva>
                                         veeva :: (Prelude.Maybe VeevaConnectorProfileCredentialsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-connectorprofilecredentials.html#cfn-appflow-connectorprofile-connectorprofilecredentials-zendesk>
                                         zendesk :: (Prelude.Maybe ZendeskConnectorProfileCredentialsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorProfileCredentialsProperty ::
  ConnectorProfileCredentialsProperty
mkConnectorProfileCredentialsProperty
  = ConnectorProfileCredentialsProperty
      {haddock_workaround_ = (), amplitude = Prelude.Nothing,
       customConnector = Prelude.Nothing, datadog = Prelude.Nothing,
       dynatrace = Prelude.Nothing, googleAnalytics = Prelude.Nothing,
       inforNexus = Prelude.Nothing, marketo = Prelude.Nothing,
       pardot = Prelude.Nothing, redshift = Prelude.Nothing,
       sAPOData = Prelude.Nothing, salesforce = Prelude.Nothing,
       serviceNow = Prelude.Nothing, singular = Prelude.Nothing,
       slack = Prelude.Nothing, snowflake = Prelude.Nothing,
       trendmicro = Prelude.Nothing, veeva = Prelude.Nothing,
       zendesk = Prelude.Nothing}
instance ToResourceProperties ConnectorProfileCredentialsProperty where
  toResourceProperties ConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Amplitude" Prelude.<$> amplitude,
                            (JSON..=) "CustomConnector" Prelude.<$> customConnector,
                            (JSON..=) "Datadog" Prelude.<$> datadog,
                            (JSON..=) "Dynatrace" Prelude.<$> dynatrace,
                            (JSON..=) "GoogleAnalytics" Prelude.<$> googleAnalytics,
                            (JSON..=) "InforNexus" Prelude.<$> inforNexus,
                            (JSON..=) "Marketo" Prelude.<$> marketo,
                            (JSON..=) "Pardot" Prelude.<$> pardot,
                            (JSON..=) "Redshift" Prelude.<$> redshift,
                            (JSON..=) "SAPOData" Prelude.<$> sAPOData,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
                            (JSON..=) "Singular" Prelude.<$> singular,
                            (JSON..=) "Slack" Prelude.<$> slack,
                            (JSON..=) "Snowflake" Prelude.<$> snowflake,
                            (JSON..=) "Trendmicro" Prelude.<$> trendmicro,
                            (JSON..=) "Veeva" Prelude.<$> veeva,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON ConnectorProfileCredentialsProperty where
  toJSON ConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Amplitude" Prelude.<$> amplitude,
               (JSON..=) "CustomConnector" Prelude.<$> customConnector,
               (JSON..=) "Datadog" Prelude.<$> datadog,
               (JSON..=) "Dynatrace" Prelude.<$> dynatrace,
               (JSON..=) "GoogleAnalytics" Prelude.<$> googleAnalytics,
               (JSON..=) "InforNexus" Prelude.<$> inforNexus,
               (JSON..=) "Marketo" Prelude.<$> marketo,
               (JSON..=) "Pardot" Prelude.<$> pardot,
               (JSON..=) "Redshift" Prelude.<$> redshift,
               (JSON..=) "SAPOData" Prelude.<$> sAPOData,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
               (JSON..=) "Singular" Prelude.<$> singular,
               (JSON..=) "Slack" Prelude.<$> slack,
               (JSON..=) "Snowflake" Prelude.<$> snowflake,
               (JSON..=) "Trendmicro" Prelude.<$> trendmicro,
               (JSON..=) "Veeva" Prelude.<$> veeva,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "Amplitude" ConnectorProfileCredentialsProperty where
  type PropertyType "Amplitude" ConnectorProfileCredentialsProperty = AmplitudeConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {amplitude = Prelude.pure newValue, ..}
instance Property "CustomConnector" ConnectorProfileCredentialsProperty where
  type PropertyType "CustomConnector" ConnectorProfileCredentialsProperty = CustomConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {customConnector = Prelude.pure newValue, ..}
instance Property "Datadog" ConnectorProfileCredentialsProperty where
  type PropertyType "Datadog" ConnectorProfileCredentialsProperty = DatadogConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {datadog = Prelude.pure newValue, ..}
instance Property "Dynatrace" ConnectorProfileCredentialsProperty where
  type PropertyType "Dynatrace" ConnectorProfileCredentialsProperty = DynatraceConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {dynatrace = Prelude.pure newValue, ..}
instance Property "GoogleAnalytics" ConnectorProfileCredentialsProperty where
  type PropertyType "GoogleAnalytics" ConnectorProfileCredentialsProperty = GoogleAnalyticsConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {googleAnalytics = Prelude.pure newValue, ..}
instance Property "InforNexus" ConnectorProfileCredentialsProperty where
  type PropertyType "InforNexus" ConnectorProfileCredentialsProperty = InforNexusConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {inforNexus = Prelude.pure newValue, ..}
instance Property "Marketo" ConnectorProfileCredentialsProperty where
  type PropertyType "Marketo" ConnectorProfileCredentialsProperty = MarketoConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {marketo = Prelude.pure newValue, ..}
instance Property "Pardot" ConnectorProfileCredentialsProperty where
  type PropertyType "Pardot" ConnectorProfileCredentialsProperty = PardotConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {pardot = Prelude.pure newValue, ..}
instance Property "Redshift" ConnectorProfileCredentialsProperty where
  type PropertyType "Redshift" ConnectorProfileCredentialsProperty = RedshiftConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {redshift = Prelude.pure newValue, ..}
instance Property "SAPOData" ConnectorProfileCredentialsProperty where
  type PropertyType "SAPOData" ConnectorProfileCredentialsProperty = SAPODataConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {sAPOData = Prelude.pure newValue, ..}
instance Property "Salesforce" ConnectorProfileCredentialsProperty where
  type PropertyType "Salesforce" ConnectorProfileCredentialsProperty = SalesforceConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {salesforce = Prelude.pure newValue, ..}
instance Property "ServiceNow" ConnectorProfileCredentialsProperty where
  type PropertyType "ServiceNow" ConnectorProfileCredentialsProperty = ServiceNowConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {serviceNow = Prelude.pure newValue, ..}
instance Property "Singular" ConnectorProfileCredentialsProperty where
  type PropertyType "Singular" ConnectorProfileCredentialsProperty = SingularConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {singular = Prelude.pure newValue, ..}
instance Property "Slack" ConnectorProfileCredentialsProperty where
  type PropertyType "Slack" ConnectorProfileCredentialsProperty = SlackConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {slack = Prelude.pure newValue, ..}
instance Property "Snowflake" ConnectorProfileCredentialsProperty where
  type PropertyType "Snowflake" ConnectorProfileCredentialsProperty = SnowflakeConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {snowflake = Prelude.pure newValue, ..}
instance Property "Trendmicro" ConnectorProfileCredentialsProperty where
  type PropertyType "Trendmicro" ConnectorProfileCredentialsProperty = TrendmicroConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {trendmicro = Prelude.pure newValue, ..}
instance Property "Veeva" ConnectorProfileCredentialsProperty where
  type PropertyType "Veeva" ConnectorProfileCredentialsProperty = VeevaConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {veeva = Prelude.pure newValue, ..}
instance Property "Zendesk" ConnectorProfileCredentialsProperty where
  type PropertyType "Zendesk" ConnectorProfileCredentialsProperty = ZendeskConnectorProfileCredentialsProperty
  set newValue ConnectorProfileCredentialsProperty {..}
    = ConnectorProfileCredentialsProperty
        {zendesk = Prelude.pure newValue, ..}