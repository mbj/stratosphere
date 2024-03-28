module Stratosphere.Lightsail.Container.EcrImagePullerRoleProperty (
        EcrImagePullerRoleProperty(..), mkEcrImagePullerRoleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcrImagePullerRoleProperty
  = EcrImagePullerRoleProperty {isActive :: (Prelude.Maybe (Value Prelude.Bool)),
                                principalArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcrImagePullerRoleProperty :: EcrImagePullerRoleProperty
mkEcrImagePullerRoleProperty
  = EcrImagePullerRoleProperty
      {isActive = Prelude.Nothing, principalArn = Prelude.Nothing}
instance ToResourceProperties EcrImagePullerRoleProperty where
  toResourceProperties EcrImagePullerRoleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.EcrImagePullerRole",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsActive" Prelude.<$> isActive,
                            (JSON..=) "PrincipalArn" Prelude.<$> principalArn])}
instance JSON.ToJSON EcrImagePullerRoleProperty where
  toJSON EcrImagePullerRoleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsActive" Prelude.<$> isActive,
               (JSON..=) "PrincipalArn" Prelude.<$> principalArn]))
instance Property "IsActive" EcrImagePullerRoleProperty where
  type PropertyType "IsActive" EcrImagePullerRoleProperty = Value Prelude.Bool
  set newValue EcrImagePullerRoleProperty {..}
    = EcrImagePullerRoleProperty {isActive = Prelude.pure newValue, ..}
instance Property "PrincipalArn" EcrImagePullerRoleProperty where
  type PropertyType "PrincipalArn" EcrImagePullerRoleProperty = Value Prelude.Text
  set newValue EcrImagePullerRoleProperty {..}
    = EcrImagePullerRoleProperty
        {principalArn = Prelude.pure newValue, ..}