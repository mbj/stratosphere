module Stratosphere.SageMaker.UserProfile.DefaultSpaceStorageSettingsProperty (
        module Exports, DefaultSpaceStorageSettingsProperty(..),
        mkDefaultSpaceStorageSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.UserProfile.DefaultEbsStorageSettingsProperty as Exports
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
        {awsType = "AWS::SageMaker::UserProfile.DefaultSpaceStorageSettings",
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