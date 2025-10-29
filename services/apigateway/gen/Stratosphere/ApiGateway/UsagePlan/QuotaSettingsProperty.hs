module Stratosphere.ApiGateway.UsagePlan.QuotaSettingsProperty (
        QuotaSettingsProperty(..), mkQuotaSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QuotaSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html>
    QuotaSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-limit>
                           limit :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-offset>
                           offset :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-quotasettings.html#cfn-apigateway-usageplan-quotasettings-period>
                           period :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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