module Stratosphere.SageMaker.Space.OwnershipSettingsProperty (
        OwnershipSettingsProperty(..), mkOwnershipSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OwnershipSettingsProperty
  = OwnershipSettingsProperty {ownerUserProfileName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOwnershipSettingsProperty ::
  Value Prelude.Text -> OwnershipSettingsProperty
mkOwnershipSettingsProperty ownerUserProfileName
  = OwnershipSettingsProperty
      {ownerUserProfileName = ownerUserProfileName}
instance ToResourceProperties OwnershipSettingsProperty where
  toResourceProperties OwnershipSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Space.OwnershipSettings",
         supportsTags = Prelude.False,
         properties = ["OwnerUserProfileName" JSON..= ownerUserProfileName]}
instance JSON.ToJSON OwnershipSettingsProperty where
  toJSON OwnershipSettingsProperty {..}
    = JSON.object ["OwnerUserProfileName" JSON..= ownerUserProfileName]
instance Property "OwnerUserProfileName" OwnershipSettingsProperty where
  type PropertyType "OwnerUserProfileName" OwnershipSettingsProperty = Value Prelude.Text
  set newValue OwnershipSettingsProperty {}
    = OwnershipSettingsProperty {ownerUserProfileName = newValue, ..}