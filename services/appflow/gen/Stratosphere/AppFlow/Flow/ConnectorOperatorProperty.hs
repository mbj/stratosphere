module Stratosphere.AppFlow.Flow.ConnectorOperatorProperty (
        ConnectorOperatorProperty(..), mkConnectorOperatorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorOperatorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html>
    ConnectorOperatorProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-amplitude>
                               amplitude :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-customconnector>
                               customConnector :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-datadog>
                               datadog :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-dynatrace>
                               dynatrace :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-googleanalytics>
                               googleAnalytics :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-infornexus>
                               inforNexus :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-marketo>
                               marketo :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-pardot>
                               pardot :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-s3>
                               s3 :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-sapodata>
                               sAPOData :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-salesforce>
                               salesforce :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-servicenow>
                               serviceNow :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-singular>
                               singular :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-slack>
                               slack :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-trendmicro>
                               trendmicro :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-veeva>
                               veeva :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-connectoroperator.html#cfn-appflow-flow-connectoroperator-zendesk>
                               zendesk :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectorOperatorProperty :: ConnectorOperatorProperty
mkConnectorOperatorProperty
  = ConnectorOperatorProperty
      {haddock_workaround_ = (), amplitude = Prelude.Nothing,
       customConnector = Prelude.Nothing, datadog = Prelude.Nothing,
       dynatrace = Prelude.Nothing, googleAnalytics = Prelude.Nothing,
       inforNexus = Prelude.Nothing, marketo = Prelude.Nothing,
       pardot = Prelude.Nothing, s3 = Prelude.Nothing,
       sAPOData = Prelude.Nothing, salesforce = Prelude.Nothing,
       serviceNow = Prelude.Nothing, singular = Prelude.Nothing,
       slack = Prelude.Nothing, trendmicro = Prelude.Nothing,
       veeva = Prelude.Nothing, zendesk = Prelude.Nothing}
instance ToResourceProperties ConnectorOperatorProperty where
  toResourceProperties ConnectorOperatorProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.ConnectorOperator",
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
                            (JSON..=) "S3" Prelude.<$> s3,
                            (JSON..=) "SAPOData" Prelude.<$> sAPOData,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
                            (JSON..=) "Singular" Prelude.<$> singular,
                            (JSON..=) "Slack" Prelude.<$> slack,
                            (JSON..=) "Trendmicro" Prelude.<$> trendmicro,
                            (JSON..=) "Veeva" Prelude.<$> veeva,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON ConnectorOperatorProperty where
  toJSON ConnectorOperatorProperty {..}
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
               (JSON..=) "S3" Prelude.<$> s3,
               (JSON..=) "SAPOData" Prelude.<$> sAPOData,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
               (JSON..=) "Singular" Prelude.<$> singular,
               (JSON..=) "Slack" Prelude.<$> slack,
               (JSON..=) "Trendmicro" Prelude.<$> trendmicro,
               (JSON..=) "Veeva" Prelude.<$> veeva,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "Amplitude" ConnectorOperatorProperty where
  type PropertyType "Amplitude" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {amplitude = Prelude.pure newValue, ..}
instance Property "CustomConnector" ConnectorOperatorProperty where
  type PropertyType "CustomConnector" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty
        {customConnector = Prelude.pure newValue, ..}
instance Property "Datadog" ConnectorOperatorProperty where
  type PropertyType "Datadog" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {datadog = Prelude.pure newValue, ..}
instance Property "Dynatrace" ConnectorOperatorProperty where
  type PropertyType "Dynatrace" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {dynatrace = Prelude.pure newValue, ..}
instance Property "GoogleAnalytics" ConnectorOperatorProperty where
  type PropertyType "GoogleAnalytics" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty
        {googleAnalytics = Prelude.pure newValue, ..}
instance Property "InforNexus" ConnectorOperatorProperty where
  type PropertyType "InforNexus" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty
        {inforNexus = Prelude.pure newValue, ..}
instance Property "Marketo" ConnectorOperatorProperty where
  type PropertyType "Marketo" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {marketo = Prelude.pure newValue, ..}
instance Property "Pardot" ConnectorOperatorProperty where
  type PropertyType "Pardot" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {pardot = Prelude.pure newValue, ..}
instance Property "S3" ConnectorOperatorProperty where
  type PropertyType "S3" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {s3 = Prelude.pure newValue, ..}
instance Property "SAPOData" ConnectorOperatorProperty where
  type PropertyType "SAPOData" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {sAPOData = Prelude.pure newValue, ..}
instance Property "Salesforce" ConnectorOperatorProperty where
  type PropertyType "Salesforce" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty
        {salesforce = Prelude.pure newValue, ..}
instance Property "ServiceNow" ConnectorOperatorProperty where
  type PropertyType "ServiceNow" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty
        {serviceNow = Prelude.pure newValue, ..}
instance Property "Singular" ConnectorOperatorProperty where
  type PropertyType "Singular" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {singular = Prelude.pure newValue, ..}
instance Property "Slack" ConnectorOperatorProperty where
  type PropertyType "Slack" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {slack = Prelude.pure newValue, ..}
instance Property "Trendmicro" ConnectorOperatorProperty where
  type PropertyType "Trendmicro" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty
        {trendmicro = Prelude.pure newValue, ..}
instance Property "Veeva" ConnectorOperatorProperty where
  type PropertyType "Veeva" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {veeva = Prelude.pure newValue, ..}
instance Property "Zendesk" ConnectorOperatorProperty where
  type PropertyType "Zendesk" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {zendesk = Prelude.pure newValue, ..}