module Stratosphere.SSMIncidents.ResponsePlan.PagerDutyIncidentConfigurationProperty (
        PagerDutyIncidentConfigurationProperty(..),
        mkPagerDutyIncidentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PagerDutyIncidentConfigurationProperty
  = PagerDutyIncidentConfigurationProperty {serviceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPagerDutyIncidentConfigurationProperty ::
  Value Prelude.Text -> PagerDutyIncidentConfigurationProperty
mkPagerDutyIncidentConfigurationProperty serviceId
  = PagerDutyIncidentConfigurationProperty {serviceId = serviceId}
instance ToResourceProperties PagerDutyIncidentConfigurationProperty where
  toResourceProperties PagerDutyIncidentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.PagerDutyIncidentConfiguration",
         supportsTags = Prelude.False,
         properties = ["ServiceId" JSON..= serviceId]}
instance JSON.ToJSON PagerDutyIncidentConfigurationProperty where
  toJSON PagerDutyIncidentConfigurationProperty {..}
    = JSON.object ["ServiceId" JSON..= serviceId]
instance Property "ServiceId" PagerDutyIncidentConfigurationProperty where
  type PropertyType "ServiceId" PagerDutyIncidentConfigurationProperty = Value Prelude.Text
  set newValue PagerDutyIncidentConfigurationProperty {}
    = PagerDutyIncidentConfigurationProperty {serviceId = newValue, ..}