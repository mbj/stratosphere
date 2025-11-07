module Stratosphere.DataZone.Owner.OwnerPropertiesProperty (
        module Exports, OwnerPropertiesProperty(..),
        mkOwnerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Owner.OwnerGroupPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.DataZone.Owner.OwnerUserPropertiesProperty as Exports
import Stratosphere.ResourceProperties
data OwnerPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownerproperties.html>
    OwnerPropertiesProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownerproperties.html#cfn-datazone-owner-ownerproperties-group>
                             group :: (Prelude.Maybe OwnerGroupPropertiesProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownerproperties.html#cfn-datazone-owner-ownerproperties-user>
                             user :: (Prelude.Maybe OwnerUserPropertiesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOwnerPropertiesProperty :: OwnerPropertiesProperty
mkOwnerPropertiesProperty
  = OwnerPropertiesProperty
      {haddock_workaround_ = (), group = Prelude.Nothing,
       user = Prelude.Nothing}
instance ToResourceProperties OwnerPropertiesProperty where
  toResourceProperties OwnerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Owner.OwnerProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Group" Prelude.<$> group,
                            (JSON..=) "User" Prelude.<$> user])}
instance JSON.ToJSON OwnerPropertiesProperty where
  toJSON OwnerPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Group" Prelude.<$> group,
               (JSON..=) "User" Prelude.<$> user]))
instance Property "Group" OwnerPropertiesProperty where
  type PropertyType "Group" OwnerPropertiesProperty = OwnerGroupPropertiesProperty
  set newValue OwnerPropertiesProperty {..}
    = OwnerPropertiesProperty {group = Prelude.pure newValue, ..}
instance Property "User" OwnerPropertiesProperty where
  type PropertyType "User" OwnerPropertiesProperty = OwnerUserPropertiesProperty
  set newValue OwnerPropertiesProperty {..}
    = OwnerPropertiesProperty {user = Prelude.pure newValue, ..}