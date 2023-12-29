module Stratosphere.IoTFleetWise.Campaign.ConditionBasedCollectionSchemeProperty (
        ConditionBasedCollectionSchemeProperty(..),
        mkConditionBasedCollectionSchemeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionBasedCollectionSchemeProperty
  = ConditionBasedCollectionSchemeProperty {conditionLanguageVersion :: (Prelude.Maybe (Value Prelude.Integer)),
                                            expression :: (Value Prelude.Text),
                                            minimumTriggerIntervalMs :: (Prelude.Maybe (Value Prelude.Double)),
                                            triggerMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionBasedCollectionSchemeProperty ::
  Value Prelude.Text -> ConditionBasedCollectionSchemeProperty
mkConditionBasedCollectionSchemeProperty expression
  = ConditionBasedCollectionSchemeProperty
      {expression = expression,
       conditionLanguageVersion = Prelude.Nothing,
       minimumTriggerIntervalMs = Prelude.Nothing,
       triggerMode = Prelude.Nothing}
instance ToResourceProperties ConditionBasedCollectionSchemeProperty where
  toResourceProperties ConditionBasedCollectionSchemeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.ConditionBasedCollectionScheme",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "ConditionLanguageVersion"
                                 Prelude.<$> conditionLanguageVersion,
                               (JSON..=) "MinimumTriggerIntervalMs"
                                 Prelude.<$> minimumTriggerIntervalMs,
                               (JSON..=) "TriggerMode" Prelude.<$> triggerMode]))}
instance JSON.ToJSON ConditionBasedCollectionSchemeProperty where
  toJSON ConditionBasedCollectionSchemeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "ConditionLanguageVersion"
                    Prelude.<$> conditionLanguageVersion,
                  (JSON..=) "MinimumTriggerIntervalMs"
                    Prelude.<$> minimumTriggerIntervalMs,
                  (JSON..=) "TriggerMode" Prelude.<$> triggerMode])))
instance Property "ConditionLanguageVersion" ConditionBasedCollectionSchemeProperty where
  type PropertyType "ConditionLanguageVersion" ConditionBasedCollectionSchemeProperty = Value Prelude.Integer
  set newValue ConditionBasedCollectionSchemeProperty {..}
    = ConditionBasedCollectionSchemeProperty
        {conditionLanguageVersion = Prelude.pure newValue, ..}
instance Property "Expression" ConditionBasedCollectionSchemeProperty where
  type PropertyType "Expression" ConditionBasedCollectionSchemeProperty = Value Prelude.Text
  set newValue ConditionBasedCollectionSchemeProperty {..}
    = ConditionBasedCollectionSchemeProperty
        {expression = newValue, ..}
instance Property "MinimumTriggerIntervalMs" ConditionBasedCollectionSchemeProperty where
  type PropertyType "MinimumTriggerIntervalMs" ConditionBasedCollectionSchemeProperty = Value Prelude.Double
  set newValue ConditionBasedCollectionSchemeProperty {..}
    = ConditionBasedCollectionSchemeProperty
        {minimumTriggerIntervalMs = Prelude.pure newValue, ..}
instance Property "TriggerMode" ConditionBasedCollectionSchemeProperty where
  type PropertyType "TriggerMode" ConditionBasedCollectionSchemeProperty = Value Prelude.Text
  set newValue ConditionBasedCollectionSchemeProperty {..}
    = ConditionBasedCollectionSchemeProperty
        {triggerMode = Prelude.pure newValue, ..}