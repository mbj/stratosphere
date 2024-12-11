module Stratosphere.SageMaker.Domain.IdleSettingsProperty (
        IdleSettingsProperty(..), mkIdleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdleSettingsProperty
  = IdleSettingsProperty {idleTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                          lifecycleManagement :: (Prelude.Maybe (Value Prelude.Text)),
                          maxIdleTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                          minIdleTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdleSettingsProperty :: IdleSettingsProperty
mkIdleSettingsProperty
  = IdleSettingsProperty
      {idleTimeoutInMinutes = Prelude.Nothing,
       lifecycleManagement = Prelude.Nothing,
       maxIdleTimeoutInMinutes = Prelude.Nothing,
       minIdleTimeoutInMinutes = Prelude.Nothing}
instance ToResourceProperties IdleSettingsProperty where
  toResourceProperties IdleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.IdleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleTimeoutInMinutes" Prelude.<$> idleTimeoutInMinutes,
                            (JSON..=) "LifecycleManagement" Prelude.<$> lifecycleManagement,
                            (JSON..=) "MaxIdleTimeoutInMinutes"
                              Prelude.<$> maxIdleTimeoutInMinutes,
                            (JSON..=) "MinIdleTimeoutInMinutes"
                              Prelude.<$> minIdleTimeoutInMinutes])}
instance JSON.ToJSON IdleSettingsProperty where
  toJSON IdleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleTimeoutInMinutes" Prelude.<$> idleTimeoutInMinutes,
               (JSON..=) "LifecycleManagement" Prelude.<$> lifecycleManagement,
               (JSON..=) "MaxIdleTimeoutInMinutes"
                 Prelude.<$> maxIdleTimeoutInMinutes,
               (JSON..=) "MinIdleTimeoutInMinutes"
                 Prelude.<$> minIdleTimeoutInMinutes]))
instance Property "IdleTimeoutInMinutes" IdleSettingsProperty where
  type PropertyType "IdleTimeoutInMinutes" IdleSettingsProperty = Value Prelude.Integer
  set newValue IdleSettingsProperty {..}
    = IdleSettingsProperty
        {idleTimeoutInMinutes = Prelude.pure newValue, ..}
instance Property "LifecycleManagement" IdleSettingsProperty where
  type PropertyType "LifecycleManagement" IdleSettingsProperty = Value Prelude.Text
  set newValue IdleSettingsProperty {..}
    = IdleSettingsProperty
        {lifecycleManagement = Prelude.pure newValue, ..}
instance Property "MaxIdleTimeoutInMinutes" IdleSettingsProperty where
  type PropertyType "MaxIdleTimeoutInMinutes" IdleSettingsProperty = Value Prelude.Integer
  set newValue IdleSettingsProperty {..}
    = IdleSettingsProperty
        {maxIdleTimeoutInMinutes = Prelude.pure newValue, ..}
instance Property "MinIdleTimeoutInMinutes" IdleSettingsProperty where
  type PropertyType "MinIdleTimeoutInMinutes" IdleSettingsProperty = Value Prelude.Integer
  set newValue IdleSettingsProperty {..}
    = IdleSettingsProperty
        {minIdleTimeoutInMinutes = Prelude.pure newValue, ..}