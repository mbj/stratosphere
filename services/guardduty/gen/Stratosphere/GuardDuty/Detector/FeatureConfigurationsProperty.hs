module Stratosphere.GuardDuty.Detector.FeatureConfigurationsProperty (
        module Exports, FeatureConfigurationsProperty(..),
        mkFeatureConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GuardDuty.Detector.FeatureAdditionalConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FeatureConfigurationsProperty
  = FeatureConfigurationsProperty {additionalConfiguration :: (Prelude.Maybe [FeatureAdditionalConfigurationProperty]),
                                   name :: (Prelude.Maybe (Value Prelude.Text)),
                                   status :: (Prelude.Maybe (Value Prelude.Text))}
mkFeatureConfigurationsProperty :: FeatureConfigurationsProperty
mkFeatureConfigurationsProperty
  = FeatureConfigurationsProperty
      {additionalConfiguration = Prelude.Nothing, name = Prelude.Nothing,
       status = Prelude.Nothing}
instance ToResourceProperties FeatureConfigurationsProperty where
  toResourceProperties FeatureConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.FeatureConfigurations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalConfiguration"
                              Prelude.<$> additionalConfiguration,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON FeatureConfigurationsProperty where
  toJSON FeatureConfigurationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalConfiguration"
                 Prelude.<$> additionalConfiguration,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "AdditionalConfiguration" FeatureConfigurationsProperty where
  type PropertyType "AdditionalConfiguration" FeatureConfigurationsProperty = [FeatureAdditionalConfigurationProperty]
  set newValue FeatureConfigurationsProperty {..}
    = FeatureConfigurationsProperty
        {additionalConfiguration = Prelude.pure newValue, ..}
instance Property "Name" FeatureConfigurationsProperty where
  type PropertyType "Name" FeatureConfigurationsProperty = Value Prelude.Text
  set newValue FeatureConfigurationsProperty {..}
    = FeatureConfigurationsProperty {name = Prelude.pure newValue, ..}
instance Property "Status" FeatureConfigurationsProperty where
  type PropertyType "Status" FeatureConfigurationsProperty = Value Prelude.Text
  set newValue FeatureConfigurationsProperty {..}
    = FeatureConfigurationsProperty
        {status = Prelude.pure newValue, ..}