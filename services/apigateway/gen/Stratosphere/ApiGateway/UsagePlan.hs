module Stratosphere.ApiGateway.UsagePlan (
        module Exports, UsagePlan(..), mkUsagePlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.UsagePlan.ApiStageProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.UsagePlan.QuotaSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGateway.UsagePlan.ThrottleSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data UsagePlan
  = UsagePlan {apiStages :: (Prelude.Maybe [ApiStageProperty]),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               quota :: (Prelude.Maybe QuotaSettingsProperty),
               tags :: (Prelude.Maybe [Tag]),
               throttle :: (Prelude.Maybe ThrottleSettingsProperty),
               usagePlanName :: (Prelude.Maybe (Value Prelude.Text))}
mkUsagePlan :: UsagePlan
mkUsagePlan
  = UsagePlan
      {apiStages = Prelude.Nothing, description = Prelude.Nothing,
       quota = Prelude.Nothing, tags = Prelude.Nothing,
       throttle = Prelude.Nothing, usagePlanName = Prelude.Nothing}
instance ToResourceProperties UsagePlan where
  toResourceProperties UsagePlan {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::UsagePlan",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiStages" Prelude.<$> apiStages,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Quota" Prelude.<$> quota,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Throttle" Prelude.<$> throttle,
                            (JSON..=) "UsagePlanName" Prelude.<$> usagePlanName])}
instance JSON.ToJSON UsagePlan where
  toJSON UsagePlan {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiStages" Prelude.<$> apiStages,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Quota" Prelude.<$> quota,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Throttle" Prelude.<$> throttle,
               (JSON..=) "UsagePlanName" Prelude.<$> usagePlanName]))
instance Property "ApiStages" UsagePlan where
  type PropertyType "ApiStages" UsagePlan = [ApiStageProperty]
  set newValue UsagePlan {..}
    = UsagePlan {apiStages = Prelude.pure newValue, ..}
instance Property "Description" UsagePlan where
  type PropertyType "Description" UsagePlan = Value Prelude.Text
  set newValue UsagePlan {..}
    = UsagePlan {description = Prelude.pure newValue, ..}
instance Property "Quota" UsagePlan where
  type PropertyType "Quota" UsagePlan = QuotaSettingsProperty
  set newValue UsagePlan {..}
    = UsagePlan {quota = Prelude.pure newValue, ..}
instance Property "Tags" UsagePlan where
  type PropertyType "Tags" UsagePlan = [Tag]
  set newValue UsagePlan {..}
    = UsagePlan {tags = Prelude.pure newValue, ..}
instance Property "Throttle" UsagePlan where
  type PropertyType "Throttle" UsagePlan = ThrottleSettingsProperty
  set newValue UsagePlan {..}
    = UsagePlan {throttle = Prelude.pure newValue, ..}
instance Property "UsagePlanName" UsagePlan where
  type PropertyType "UsagePlanName" UsagePlan = Value Prelude.Text
  set newValue UsagePlan {..}
    = UsagePlan {usagePlanName = Prelude.pure newValue, ..}