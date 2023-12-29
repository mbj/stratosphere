module Stratosphere.SSMIncidents.ResponsePlan.PagerDutyConfigurationProperty (
        module Exports, PagerDutyConfigurationProperty(..),
        mkPagerDutyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMIncidents.ResponsePlan.PagerDutyIncidentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PagerDutyConfigurationProperty
  = PagerDutyConfigurationProperty {name :: (Value Prelude.Text),
                                    pagerDutyIncidentConfiguration :: PagerDutyIncidentConfigurationProperty,
                                    secretId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPagerDutyConfigurationProperty ::
  Value Prelude.Text
  -> PagerDutyIncidentConfigurationProperty
     -> Value Prelude.Text -> PagerDutyConfigurationProperty
mkPagerDutyConfigurationProperty
  name
  pagerDutyIncidentConfiguration
  secretId
  = PagerDutyConfigurationProperty
      {name = name,
       pagerDutyIncidentConfiguration = pagerDutyIncidentConfiguration,
       secretId = secretId}
instance ToResourceProperties PagerDutyConfigurationProperty where
  toResourceProperties PagerDutyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMIncidents::ResponsePlan.PagerDutyConfiguration",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "PagerDutyIncidentConfiguration"
                         JSON..= pagerDutyIncidentConfiguration,
                       "SecretId" JSON..= secretId]}
instance JSON.ToJSON PagerDutyConfigurationProperty where
  toJSON PagerDutyConfigurationProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "PagerDutyIncidentConfiguration"
           JSON..= pagerDutyIncidentConfiguration,
         "SecretId" JSON..= secretId]
instance Property "Name" PagerDutyConfigurationProperty where
  type PropertyType "Name" PagerDutyConfigurationProperty = Value Prelude.Text
  set newValue PagerDutyConfigurationProperty {..}
    = PagerDutyConfigurationProperty {name = newValue, ..}
instance Property "PagerDutyIncidentConfiguration" PagerDutyConfigurationProperty where
  type PropertyType "PagerDutyIncidentConfiguration" PagerDutyConfigurationProperty = PagerDutyIncidentConfigurationProperty
  set newValue PagerDutyConfigurationProperty {..}
    = PagerDutyConfigurationProperty
        {pagerDutyIncidentConfiguration = newValue, ..}
instance Property "SecretId" PagerDutyConfigurationProperty where
  type PropertyType "SecretId" PagerDutyConfigurationProperty = Value Prelude.Text
  set newValue PagerDutyConfigurationProperty {..}
    = PagerDutyConfigurationProperty {secretId = newValue, ..}