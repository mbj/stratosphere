module Stratosphere.SageMaker.Space.SpaceStorageSettingsProperty (
        module Exports, SpaceStorageSettingsProperty(..),
        mkSpaceStorageSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.EbsStorageSettingsProperty as Exports
import Stratosphere.ResourceProperties
data SpaceStorageSettingsProperty
  = SpaceStorageSettingsProperty {ebsStorageSettings :: (Prelude.Maybe EbsStorageSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceStorageSettingsProperty :: SpaceStorageSettingsProperty
mkSpaceStorageSettingsProperty
  = SpaceStorageSettingsProperty
      {ebsStorageSettings = Prelude.Nothing}
instance ToResourceProperties SpaceStorageSettingsProperty where
  toResourceProperties SpaceStorageSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceStorageSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EbsStorageSettings" Prelude.<$> ebsStorageSettings])}
instance JSON.ToJSON SpaceStorageSettingsProperty where
  toJSON SpaceStorageSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EbsStorageSettings" Prelude.<$> ebsStorageSettings]))
instance Property "EbsStorageSettings" SpaceStorageSettingsProperty where
  type PropertyType "EbsStorageSettings" SpaceStorageSettingsProperty = EbsStorageSettingsProperty
  set newValue SpaceStorageSettingsProperty {}
    = SpaceStorageSettingsProperty
        {ebsStorageSettings = Prelude.pure newValue, ..}