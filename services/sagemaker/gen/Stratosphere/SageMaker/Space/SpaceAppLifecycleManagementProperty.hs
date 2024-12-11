module Stratosphere.SageMaker.Space.SpaceAppLifecycleManagementProperty (
        module Exports, SpaceAppLifecycleManagementProperty(..),
        mkSpaceAppLifecycleManagementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Space.SpaceIdleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data SpaceAppLifecycleManagementProperty
  = SpaceAppLifecycleManagementProperty {idleSettings :: (Prelude.Maybe SpaceIdleSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpaceAppLifecycleManagementProperty ::
  SpaceAppLifecycleManagementProperty
mkSpaceAppLifecycleManagementProperty
  = SpaceAppLifecycleManagementProperty
      {idleSettings = Prelude.Nothing}
instance ToResourceProperties SpaceAppLifecycleManagementProperty where
  toResourceProperties SpaceAppLifecycleManagementProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.SpaceAppLifecycleManagement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleSettings" Prelude.<$> idleSettings])}
instance JSON.ToJSON SpaceAppLifecycleManagementProperty where
  toJSON SpaceAppLifecycleManagementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleSettings" Prelude.<$> idleSettings]))
instance Property "IdleSettings" SpaceAppLifecycleManagementProperty where
  type PropertyType "IdleSettings" SpaceAppLifecycleManagementProperty = SpaceIdleSettingsProperty
  set newValue SpaceAppLifecycleManagementProperty {}
    = SpaceAppLifecycleManagementProperty
        {idleSettings = Prelude.pure newValue, ..}