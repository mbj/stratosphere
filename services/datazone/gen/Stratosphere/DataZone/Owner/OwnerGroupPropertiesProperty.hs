module Stratosphere.DataZone.Owner.OwnerGroupPropertiesProperty (
        OwnerGroupPropertiesProperty(..), mkOwnerGroupPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OwnerGroupPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownergroupproperties.html>
    OwnerGroupPropertiesProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownergroupproperties.html#cfn-datazone-owner-ownergroupproperties-groupidentifier>
                                  groupIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOwnerGroupPropertiesProperty :: OwnerGroupPropertiesProperty
mkOwnerGroupPropertiesProperty
  = OwnerGroupPropertiesProperty
      {haddock_workaround_ = (), groupIdentifier = Prelude.Nothing}
instance ToResourceProperties OwnerGroupPropertiesProperty where
  toResourceProperties OwnerGroupPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Owner.OwnerGroupProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupIdentifier" Prelude.<$> groupIdentifier])}
instance JSON.ToJSON OwnerGroupPropertiesProperty where
  toJSON OwnerGroupPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupIdentifier" Prelude.<$> groupIdentifier]))
instance Property "GroupIdentifier" OwnerGroupPropertiesProperty where
  type PropertyType "GroupIdentifier" OwnerGroupPropertiesProperty = Value Prelude.Text
  set newValue OwnerGroupPropertiesProperty {..}
    = OwnerGroupPropertiesProperty
        {groupIdentifier = Prelude.pure newValue, ..}