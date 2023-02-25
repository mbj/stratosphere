module Stratosphere.DLM.LifecyclePolicy.ParametersProperty (
        ParametersProperty(..), mkParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ParametersProperty
  = ParametersProperty {excludeBootVolume :: (Prelude.Maybe (Value Prelude.Bool)),
                        excludeDataVolumeTags :: (Prelude.Maybe [Tag]),
                        noReboot :: (Prelude.Maybe (Value Prelude.Bool))}
mkParametersProperty :: ParametersProperty
mkParametersProperty
  = ParametersProperty
      {excludeBootVolume = Prelude.Nothing,
       excludeDataVolumeTags = Prelude.Nothing,
       noReboot = Prelude.Nothing}
instance ToResourceProperties ParametersProperty where
  toResourceProperties ParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.Parameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludeBootVolume" Prelude.<$> excludeBootVolume,
                            (JSON..=) "ExcludeDataVolumeTags"
                              Prelude.<$> excludeDataVolumeTags,
                            (JSON..=) "NoReboot" Prelude.<$> noReboot])}
instance JSON.ToJSON ParametersProperty where
  toJSON ParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludeBootVolume" Prelude.<$> excludeBootVolume,
               (JSON..=) "ExcludeDataVolumeTags"
                 Prelude.<$> excludeDataVolumeTags,
               (JSON..=) "NoReboot" Prelude.<$> noReboot]))
instance Property "ExcludeBootVolume" ParametersProperty where
  type PropertyType "ExcludeBootVolume" ParametersProperty = Value Prelude.Bool
  set newValue ParametersProperty {..}
    = ParametersProperty
        {excludeBootVolume = Prelude.pure newValue, ..}
instance Property "ExcludeDataVolumeTags" ParametersProperty where
  type PropertyType "ExcludeDataVolumeTags" ParametersProperty = [Tag]
  set newValue ParametersProperty {..}
    = ParametersProperty
        {excludeDataVolumeTags = Prelude.pure newValue, ..}
instance Property "NoReboot" ParametersProperty where
  type PropertyType "NoReboot" ParametersProperty = Value Prelude.Bool
  set newValue ParametersProperty {..}
    = ParametersProperty {noReboot = Prelude.pure newValue, ..}