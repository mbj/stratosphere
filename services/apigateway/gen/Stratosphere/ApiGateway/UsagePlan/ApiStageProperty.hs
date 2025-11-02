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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html>
    ApiStageProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-apiid>
                      apiId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-stage>
                      stage :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-usageplan-apistage.html#cfn-apigateway-usageplan-apistage-throttle>
                      throttle :: (Prelude.Maybe (Prelude.Map Prelude.Text ThrottleSettingsProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiStageProperty :: ApiStageProperty
mkApiStageProperty
  = ApiStageProperty
      {haddock_workaround_ = (), apiId = Prelude.Nothing,
       stage = Prelude.Nothing, throttle = Prelude.Nothing}
instance ToResourceProperties ApiStageProperty where
  toResourceProperties ApiStageProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::UsagePlan.ApiStage",
         supportsTags = Prelude.False,
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