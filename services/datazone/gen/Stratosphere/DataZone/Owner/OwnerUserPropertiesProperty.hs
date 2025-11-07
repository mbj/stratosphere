module Stratosphere.DataZone.Owner.OwnerUserPropertiesProperty (
        OwnerUserPropertiesProperty(..), mkOwnerUserPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OwnerUserPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-owneruserproperties.html>
    OwnerUserPropertiesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-owneruserproperties.html#cfn-datazone-owner-owneruserproperties-useridentifier>
                                 userIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOwnerUserPropertiesProperty :: OwnerUserPropertiesProperty
mkOwnerUserPropertiesProperty
  = OwnerUserPropertiesProperty
      {haddock_workaround_ = (), userIdentifier = Prelude.Nothing}
instance ToResourceProperties OwnerUserPropertiesProperty where
  toResourceProperties OwnerUserPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Owner.OwnerUserProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UserIdentifier" Prelude.<$> userIdentifier])}
instance JSON.ToJSON OwnerUserPropertiesProperty where
  toJSON OwnerUserPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UserIdentifier" Prelude.<$> userIdentifier]))
instance Property "UserIdentifier" OwnerUserPropertiesProperty where
  type PropertyType "UserIdentifier" OwnerUserPropertiesProperty = Value Prelude.Text
  set newValue OwnerUserPropertiesProperty {..}
    = OwnerUserPropertiesProperty
        {userIdentifier = Prelude.pure newValue, ..}