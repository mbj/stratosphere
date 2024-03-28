module Stratosphere.Lightsail.Container.PrivateRegistryAccessProperty (
        module Exports, PrivateRegistryAccessProperty(..),
        mkPrivateRegistryAccessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Container.EcrImagePullerRoleProperty as Exports
import Stratosphere.ResourceProperties
data PrivateRegistryAccessProperty
  = PrivateRegistryAccessProperty {ecrImagePullerRole :: (Prelude.Maybe EcrImagePullerRoleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateRegistryAccessProperty :: PrivateRegistryAccessProperty
mkPrivateRegistryAccessProperty
  = PrivateRegistryAccessProperty
      {ecrImagePullerRole = Prelude.Nothing}
instance ToResourceProperties PrivateRegistryAccessProperty where
  toResourceProperties PrivateRegistryAccessProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.PrivateRegistryAccess",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EcrImagePullerRole" Prelude.<$> ecrImagePullerRole])}
instance JSON.ToJSON PrivateRegistryAccessProperty where
  toJSON PrivateRegistryAccessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EcrImagePullerRole" Prelude.<$> ecrImagePullerRole]))
instance Property "EcrImagePullerRole" PrivateRegistryAccessProperty where
  type PropertyType "EcrImagePullerRole" PrivateRegistryAccessProperty = EcrImagePullerRoleProperty
  set newValue PrivateRegistryAccessProperty {}
    = PrivateRegistryAccessProperty
        {ecrImagePullerRole = Prelude.pure newValue, ..}