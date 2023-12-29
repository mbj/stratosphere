module Stratosphere.ApiGateway.Deployment.CanarySettingProperty (
        CanarySettingProperty(..), mkCanarySettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CanarySettingProperty
  = CanarySettingProperty {percentTraffic :: (Prelude.Maybe (Value Prelude.Double)),
                           stageVariableOverrides :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                           useStageCache :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCanarySettingProperty :: CanarySettingProperty
mkCanarySettingProperty
  = CanarySettingProperty
      {percentTraffic = Prelude.Nothing,
       stageVariableOverrides = Prelude.Nothing,
       useStageCache = Prelude.Nothing}
instance ToResourceProperties CanarySettingProperty where
  toResourceProperties CanarySettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Deployment.CanarySetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PercentTraffic" Prelude.<$> percentTraffic,
                            (JSON..=) "StageVariableOverrides"
                              Prelude.<$> stageVariableOverrides,
                            (JSON..=) "UseStageCache" Prelude.<$> useStageCache])}
instance JSON.ToJSON CanarySettingProperty where
  toJSON CanarySettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PercentTraffic" Prelude.<$> percentTraffic,
               (JSON..=) "StageVariableOverrides"
                 Prelude.<$> stageVariableOverrides,
               (JSON..=) "UseStageCache" Prelude.<$> useStageCache]))
instance Property "PercentTraffic" CanarySettingProperty where
  type PropertyType "PercentTraffic" CanarySettingProperty = Value Prelude.Double
  set newValue CanarySettingProperty {..}
    = CanarySettingProperty
        {percentTraffic = Prelude.pure newValue, ..}
instance Property "StageVariableOverrides" CanarySettingProperty where
  type PropertyType "StageVariableOverrides" CanarySettingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CanarySettingProperty {..}
    = CanarySettingProperty
        {stageVariableOverrides = Prelude.pure newValue, ..}
instance Property "UseStageCache" CanarySettingProperty where
  type PropertyType "UseStageCache" CanarySettingProperty = Value Prelude.Bool
  set newValue CanarySettingProperty {..}
    = CanarySettingProperty {useStageCache = Prelude.pure newValue, ..}