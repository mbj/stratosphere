module Stratosphere.SageMaker.Domain.DefaultSpaceStorageSettingsProperty (
        module Exports, DefaultSpaceStorageSettingsProperty(..),
        mkDefaultSpaceStorageSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.DefaultEbsStorageSettingsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultSpaceStorageSettingsProperty
  = DefaultSpaceStorageSettingsProperty {defaultEbsStorageSettings :: (Prelude.Maybe DefaultEbsStorageSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultSpaceStorageSettingsProperty ::
  DefaultSpaceStorageSettingsProperty
mkDefaultSpaceStorageSettingsProperty
  = DefaultSpaceStorageSettingsProperty
      {defaultEbsStorageSettings = Prelude.Nothing}
instance ToResourceProperties DefaultSpaceStorageSettingsProperty where
  toResourceProperties DefaultSpaceStorageSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DefaultSpaceStorageSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultEbsStorageSettings"
                              Prelude.<$> defaultEbsStorageSettings])}
instance JSON.ToJSON DefaultSpaceStorageSettingsProperty where
  toJSON DefaultSpaceStorageSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultEbsStorageSettings"
                 Prelude.<$> defaultEbsStorageSettings]))
instance Property "DefaultEbsStorageSettings" DefaultSpaceStorageSettingsProperty where
  type PropertyType "DefaultEbsStorageSettings" DefaultSpaceStorageSettingsProperty = DefaultEbsStorageSettingsProperty
  set newValue DefaultSpaceStorageSettingsProperty {}
    = DefaultSpaceStorageSettingsProperty
        {defaultEbsStorageSettings = Prelude.pure newValue, ..}