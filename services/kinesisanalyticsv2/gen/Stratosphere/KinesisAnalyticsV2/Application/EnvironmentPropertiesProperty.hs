module Stratosphere.KinesisAnalyticsV2.Application.EnvironmentPropertiesProperty (
        module Exports, EnvironmentPropertiesProperty(..),
        mkEnvironmentPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.PropertyGroupProperty as Exports
import Stratosphere.ResourceProperties
data EnvironmentPropertiesProperty
  = EnvironmentPropertiesProperty {propertyGroups :: (Prelude.Maybe [PropertyGroupProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironmentPropertiesProperty :: EnvironmentPropertiesProperty
mkEnvironmentPropertiesProperty
  = EnvironmentPropertiesProperty {propertyGroups = Prelude.Nothing}
instance ToResourceProperties EnvironmentPropertiesProperty where
  toResourceProperties EnvironmentPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.EnvironmentProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PropertyGroups" Prelude.<$> propertyGroups])}
instance JSON.ToJSON EnvironmentPropertiesProperty where
  toJSON EnvironmentPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PropertyGroups" Prelude.<$> propertyGroups]))
instance Property "PropertyGroups" EnvironmentPropertiesProperty where
  type PropertyType "PropertyGroups" EnvironmentPropertiesProperty = [PropertyGroupProperty]
  set newValue EnvironmentPropertiesProperty {}
    = EnvironmentPropertiesProperty
        {propertyGroups = Prelude.pure newValue, ..}