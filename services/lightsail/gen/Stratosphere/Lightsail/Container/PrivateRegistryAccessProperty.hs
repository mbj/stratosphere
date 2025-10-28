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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-privateregistryaccess.html>
    PrivateRegistryAccessProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-privateregistryaccess.html#cfn-lightsail-container-privateregistryaccess-ecrimagepullerrole>
                                   ecrImagePullerRole :: (Prelude.Maybe EcrImagePullerRoleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateRegistryAccessProperty :: PrivateRegistryAccessProperty
mkPrivateRegistryAccessProperty
  = PrivateRegistryAccessProperty
      {haddock_workaround_ = (), ecrImagePullerRole = Prelude.Nothing}
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
  set newValue PrivateRegistryAccessProperty {..}
    = PrivateRegistryAccessProperty
        {ecrImagePullerRole = Prelude.pure newValue, ..}