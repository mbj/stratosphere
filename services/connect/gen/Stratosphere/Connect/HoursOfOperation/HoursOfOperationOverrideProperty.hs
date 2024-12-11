module Stratosphere.Connect.HoursOfOperation.HoursOfOperationOverrideProperty (
        module Exports, HoursOfOperationOverrideProperty(..),
        mkHoursOfOperationOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.HoursOfOperation.HoursOfOperationOverrideConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HoursOfOperationOverrideProperty
  = HoursOfOperationOverrideProperty {effectiveFrom :: (Value Prelude.Text),
                                      effectiveTill :: (Value Prelude.Text),
                                      hoursOfOperationOverrideId :: (Prelude.Maybe (Value Prelude.Text)),
                                      overrideConfig :: [HoursOfOperationOverrideConfigProperty],
                                      overrideDescription :: (Prelude.Maybe (Value Prelude.Text)),
                                      overrideName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHoursOfOperationOverrideProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [HoursOfOperationOverrideConfigProperty]
        -> Value Prelude.Text -> HoursOfOperationOverrideProperty
mkHoursOfOperationOverrideProperty
  effectiveFrom
  effectiveTill
  overrideConfig
  overrideName
  = HoursOfOperationOverrideProperty
      {effectiveFrom = effectiveFrom, effectiveTill = effectiveTill,
       overrideConfig = overrideConfig, overrideName = overrideName,
       hoursOfOperationOverrideId = Prelude.Nothing,
       overrideDescription = Prelude.Nothing}
instance ToResourceProperties HoursOfOperationOverrideProperty where
  toResourceProperties HoursOfOperationOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation.HoursOfOperationOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EffectiveFrom" JSON..= effectiveFrom,
                            "EffectiveTill" JSON..= effectiveTill,
                            "OverrideConfig" JSON..= overrideConfig,
                            "OverrideName" JSON..= overrideName]
                           (Prelude.catMaybes
                              [(JSON..=) "HoursOfOperationOverrideId"
                                 Prelude.<$> hoursOfOperationOverrideId,
                               (JSON..=) "OverrideDescription" Prelude.<$> overrideDescription]))}
instance JSON.ToJSON HoursOfOperationOverrideProperty where
  toJSON HoursOfOperationOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EffectiveFrom" JSON..= effectiveFrom,
               "EffectiveTill" JSON..= effectiveTill,
               "OverrideConfig" JSON..= overrideConfig,
               "OverrideName" JSON..= overrideName]
              (Prelude.catMaybes
                 [(JSON..=) "HoursOfOperationOverrideId"
                    Prelude.<$> hoursOfOperationOverrideId,
                  (JSON..=) "OverrideDescription" Prelude.<$> overrideDescription])))
instance Property "EffectiveFrom" HoursOfOperationOverrideProperty where
  type PropertyType "EffectiveFrom" HoursOfOperationOverrideProperty = Value Prelude.Text
  set newValue HoursOfOperationOverrideProperty {..}
    = HoursOfOperationOverrideProperty {effectiveFrom = newValue, ..}
instance Property "EffectiveTill" HoursOfOperationOverrideProperty where
  type PropertyType "EffectiveTill" HoursOfOperationOverrideProperty = Value Prelude.Text
  set newValue HoursOfOperationOverrideProperty {..}
    = HoursOfOperationOverrideProperty {effectiveTill = newValue, ..}
instance Property "HoursOfOperationOverrideId" HoursOfOperationOverrideProperty where
  type PropertyType "HoursOfOperationOverrideId" HoursOfOperationOverrideProperty = Value Prelude.Text
  set newValue HoursOfOperationOverrideProperty {..}
    = HoursOfOperationOverrideProperty
        {hoursOfOperationOverrideId = Prelude.pure newValue, ..}
instance Property "OverrideConfig" HoursOfOperationOverrideProperty where
  type PropertyType "OverrideConfig" HoursOfOperationOverrideProperty = [HoursOfOperationOverrideConfigProperty]
  set newValue HoursOfOperationOverrideProperty {..}
    = HoursOfOperationOverrideProperty {overrideConfig = newValue, ..}
instance Property "OverrideDescription" HoursOfOperationOverrideProperty where
  type PropertyType "OverrideDescription" HoursOfOperationOverrideProperty = Value Prelude.Text
  set newValue HoursOfOperationOverrideProperty {..}
    = HoursOfOperationOverrideProperty
        {overrideDescription = Prelude.pure newValue, ..}
instance Property "OverrideName" HoursOfOperationOverrideProperty where
  type PropertyType "OverrideName" HoursOfOperationOverrideProperty = Value Prelude.Text
  set newValue HoursOfOperationOverrideProperty {..}
    = HoursOfOperationOverrideProperty {overrideName = newValue, ..}