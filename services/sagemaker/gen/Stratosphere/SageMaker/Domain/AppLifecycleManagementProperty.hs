module Stratosphere.SageMaker.Domain.AppLifecycleManagementProperty (
        module Exports, AppLifecycleManagementProperty(..),
        mkAppLifecycleManagementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Domain.IdleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data AppLifecycleManagementProperty
  = AppLifecycleManagementProperty {idleSettings :: (Prelude.Maybe IdleSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAppLifecycleManagementProperty :: AppLifecycleManagementProperty
mkAppLifecycleManagementProperty
  = AppLifecycleManagementProperty {idleSettings = Prelude.Nothing}
instance ToResourceProperties AppLifecycleManagementProperty where
  toResourceProperties AppLifecycleManagementProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.AppLifecycleManagement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleSettings" Prelude.<$> idleSettings])}
instance JSON.ToJSON AppLifecycleManagementProperty where
  toJSON AppLifecycleManagementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleSettings" Prelude.<$> idleSettings]))
instance Property "IdleSettings" AppLifecycleManagementProperty where
  type PropertyType "IdleSettings" AppLifecycleManagementProperty = IdleSettingsProperty
  set newValue AppLifecycleManagementProperty {}
    = AppLifecycleManagementProperty
        {idleSettings = Prelude.pure newValue, ..}