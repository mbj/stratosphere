module Stratosphere.ApiGateway.UsagePlan.ApiStageProperty (
        module Exports, ApiStageProperty(..), mkApiStageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGateway.UsagePlan.ThrottleSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiStageProperty
  = ApiStageProperty {apiId :: (Prelude.Maybe (Value Prelude.Text)),
                      stage :: (Prelude.Maybe (Value Prelude.Text)),
                      throttle :: (Prelude.Maybe (Prelude.Map Prelude.Text ThrottleSettingsProperty))}
mkApiStageProperty :: ApiStageProperty
mkApiStageProperty
  = ApiStageProperty
      {apiId = Prelude.Nothing, stage = Prelude.Nothing,
       throttle = Prelude.Nothing}
instance ToResourceProperties ApiStageProperty where
  toResourceProperties ApiStageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::UsagePlan.ApiStage",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiId" Prelude.<$> apiId,
                            (JSON..=) "Stage" Prelude.<$> stage,
                            (JSON..=) "Throttle" Prelude.<$> throttle])}
instance JSON.ToJSON ApiStageProperty where
  toJSON ApiStageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiId" Prelude.<$> apiId,
               (JSON..=) "Stage" Prelude.<$> stage,
               (JSON..=) "Throttle" Prelude.<$> throttle]))
instance Property "ApiId" ApiStageProperty where
  type PropertyType "ApiId" ApiStageProperty = Value Prelude.Text
  set newValue ApiStageProperty {..}
    = ApiStageProperty {apiId = Prelude.pure newValue, ..}
instance Property "Stage" ApiStageProperty where
  type PropertyType "Stage" ApiStageProperty = Value Prelude.Text
  set newValue ApiStageProperty {..}
    = ApiStageProperty {stage = Prelude.pure newValue, ..}
instance Property "Throttle" ApiStageProperty where
  type PropertyType "Throttle" ApiStageProperty = Prelude.Map Prelude.Text ThrottleSettingsProperty
  set newValue ApiStageProperty {..}
    = ApiStageProperty {throttle = Prelude.pure newValue, ..}