module Stratosphere.CustomerProfiles.Integration.ConnectorOperatorProperty (
        ConnectorOperatorProperty(..), mkConnectorOperatorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectorOperatorProperty
  = ConnectorOperatorProperty {marketo :: (Prelude.Maybe (Value Prelude.Text)),
                               s3 :: (Prelude.Maybe (Value Prelude.Text)),
                               salesforce :: (Prelude.Maybe (Value Prelude.Text)),
                               serviceNow :: (Prelude.Maybe (Value Prelude.Text)),
                               zendesk :: (Prelude.Maybe (Value Prelude.Text))}
mkConnectorOperatorProperty :: ConnectorOperatorProperty
mkConnectorOperatorProperty
  = ConnectorOperatorProperty
      {marketo = Prelude.Nothing, s3 = Prelude.Nothing,
       salesforce = Prelude.Nothing, serviceNow = Prelude.Nothing,
       zendesk = Prelude.Nothing}
instance ToResourceProperties ConnectorOperatorProperty where
  toResourceProperties ConnectorOperatorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Integration.ConnectorOperator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Marketo" Prelude.<$> marketo,
                            (JSON..=) "S3" Prelude.<$> s3,
                            (JSON..=) "Salesforce" Prelude.<$> salesforce,
                            (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
                            (JSON..=) "Zendesk" Prelude.<$> zendesk])}
instance JSON.ToJSON ConnectorOperatorProperty where
  toJSON ConnectorOperatorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Marketo" Prelude.<$> marketo,
               (JSON..=) "S3" Prelude.<$> s3,
               (JSON..=) "Salesforce" Prelude.<$> salesforce,
               (JSON..=) "ServiceNow" Prelude.<$> serviceNow,
               (JSON..=) "Zendesk" Prelude.<$> zendesk]))
instance Property "Marketo" ConnectorOperatorProperty where
  type PropertyType "Marketo" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {marketo = Prelude.pure newValue, ..}
instance Property "S3" ConnectorOperatorProperty where
  type PropertyType "S3" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {s3 = Prelude.pure newValue, ..}
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
instance Property "Zendesk" ConnectorOperatorProperty where
  type PropertyType "Zendesk" ConnectorOperatorProperty = Value Prelude.Text
  set newValue ConnectorOperatorProperty {..}
    = ConnectorOperatorProperty {zendesk = Prelude.pure newValue, ..}