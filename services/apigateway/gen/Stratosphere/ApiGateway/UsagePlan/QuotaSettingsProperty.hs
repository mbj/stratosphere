module Stratosphere.ApiGateway.UsagePlan.QuotaSettingsProperty (
        QuotaSettingsProperty(..), mkQuotaSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuotaSettingsProperty
  = QuotaSettingsProperty {limit :: (Prelude.Maybe (Value Prelude.Integer)),
                           offset :: (Prelude.Maybe (Value Prelude.Integer)),
                           period :: (Prelude.Maybe (Value Prelude.Text))}
mkQuotaSettingsProperty :: QuotaSettingsProperty
mkQuotaSettingsProperty
  = QuotaSettingsProperty
      {limit = Prelude.Nothing, offset = Prelude.Nothing,
       period = Prelude.Nothing}
instance ToResourceProperties QuotaSettingsProperty where
  toResourceProperties QuotaSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::UsagePlan.QuotaSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Limit" Prelude.<$> limit,
                            (JSON..=) "Offset" Prelude.<$> offset,
                            (JSON..=) "Period" Prelude.<$> period])}
instance JSON.ToJSON QuotaSettingsProperty where
  toJSON QuotaSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Limit" Prelude.<$> limit,
               (JSON..=) "Offset" Prelude.<$> offset,
               (JSON..=) "Period" Prelude.<$> period]))
instance Property "Limit" QuotaSettingsProperty where
  type PropertyType "Limit" QuotaSettingsProperty = Value Prelude.Integer
  set newValue QuotaSettingsProperty {..}
    = QuotaSettingsProperty {limit = Prelude.pure newValue, ..}
instance Property "Offset" QuotaSettingsProperty where
  type PropertyType "Offset" QuotaSettingsProperty = Value Prelude.Integer
  set newValue QuotaSettingsProperty {..}
    = QuotaSettingsProperty {offset = Prelude.pure newValue, ..}
instance Property "Period" QuotaSettingsProperty where
  type PropertyType "Period" QuotaSettingsProperty = Value Prelude.Text
  set newValue QuotaSettingsProperty {..}
    = QuotaSettingsProperty {period = Prelude.pure newValue, ..}