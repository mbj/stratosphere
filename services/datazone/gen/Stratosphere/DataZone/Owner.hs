module Stratosphere.DataZone.Owner (
        module Exports, Owner(..), mkOwner
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataZone.Owner.OwnerPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Owner
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-owner.html>
    Owner {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-owner.html#cfn-datazone-owner-domainidentifier>
           domainIdentifier :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-owner.html#cfn-datazone-owner-entityidentifier>
           entityIdentifier :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-owner.html#cfn-datazone-owner-entitytype>
           entityType :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datazone-owner.html#cfn-datazone-owner-owner>
           owner :: OwnerPropertiesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOwner ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> OwnerPropertiesProperty -> Owner
mkOwner domainIdentifier entityIdentifier entityType owner
  = Owner
      {haddock_workaround_ = (), domainIdentifier = domainIdentifier,
       entityIdentifier = entityIdentifier, entityType = entityType,
       owner = owner}
instance ToResourceProperties Owner where
  toResourceProperties Owner {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Owner", supportsTags = Prelude.False,
         properties = ["DomainIdentifier" JSON..= domainIdentifier,
                       "EntityIdentifier" JSON..= entityIdentifier,
                       "EntityType" JSON..= entityType, "Owner" JSON..= owner]}
instance JSON.ToJSON Owner where
  toJSON Owner {..}
    = JSON.object
        ["DomainIdentifier" JSON..= domainIdentifier,
         "EntityIdentifier" JSON..= entityIdentifier,
         "EntityType" JSON..= entityType, "Owner" JSON..= owner]
instance Property "DomainIdentifier" Owner where
  type PropertyType "DomainIdentifier" Owner = Value Prelude.Text
  set newValue Owner {..} = Owner {domainIdentifier = newValue, ..}
instance Property "EntityIdentifier" Owner where
  type PropertyType "EntityIdentifier" Owner = Value Prelude.Text
  set newValue Owner {..} = Owner {entityIdentifier = newValue, ..}
instance Property "EntityType" Owner where
  type PropertyType "EntityType" Owner = Value Prelude.Text
  set newValue Owner {..} = Owner {entityType = newValue, ..}
instance Property "Owner" Owner where
  type PropertyType "Owner" Owner = OwnerPropertiesProperty
  set newValue Owner {..} = Owner {owner = newValue, ..}