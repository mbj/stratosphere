module Stratosphere.KinesisAnalyticsV2.Application.FlinkRunConfigurationProperty (
        FlinkRunConfigurationProperty(..), mkFlinkRunConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlinkRunConfigurationProperty
  = FlinkRunConfigurationProperty {allowNonRestoredState :: (Prelude.Maybe (Value Prelude.Bool))}
mkFlinkRunConfigurationProperty :: FlinkRunConfigurationProperty
mkFlinkRunConfigurationProperty
  = FlinkRunConfigurationProperty
      {allowNonRestoredState = Prelude.Nothing}
instance ToResourceProperties FlinkRunConfigurationProperty where
  toResourceProperties FlinkRunConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.FlinkRunConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowNonRestoredState"
                              Prelude.<$> allowNonRestoredState])}
instance JSON.ToJSON FlinkRunConfigurationProperty where
  toJSON FlinkRunConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowNonRestoredState"
                 Prelude.<$> allowNonRestoredState]))
instance Property "AllowNonRestoredState" FlinkRunConfigurationProperty where
  type PropertyType "AllowNonRestoredState" FlinkRunConfigurationProperty = Value Prelude.Bool
  set newValue FlinkRunConfigurationProperty {}
    = FlinkRunConfigurationProperty
        {allowNonRestoredState = Prelude.pure newValue, ..}