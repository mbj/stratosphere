module Stratosphere.CleanRooms.Collaboration (
        module Exports, Collaboration(..), mkCollaboration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.DataEncryptionMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.MemberSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.PaymentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Collaboration
  = Collaboration {creatorDisplayName :: (Value Prelude.Text),
                   creatorMemberAbilities :: (ValueList Prelude.Text),
                   creatorPaymentConfiguration :: (Prelude.Maybe PaymentConfigurationProperty),
                   dataEncryptionMetadata :: (Prelude.Maybe DataEncryptionMetadataProperty),
                   description :: (Value Prelude.Text),
                   members :: [MemberSpecificationProperty],
                   name :: (Value Prelude.Text),
                   queryLogStatus :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCollaboration ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text
        -> [MemberSpecificationProperty]
           -> Value Prelude.Text -> Value Prelude.Text -> Collaboration
mkCollaboration
  creatorDisplayName
  creatorMemberAbilities
  description
  members
  name
  queryLogStatus
  = Collaboration
      {creatorDisplayName = creatorDisplayName,
       creatorMemberAbilities = creatorMemberAbilities,
       description = description, members = members, name = name,
       queryLogStatus = queryLogStatus,
       creatorPaymentConfiguration = Prelude.Nothing,
       dataEncryptionMetadata = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Collaboration where
  toResourceProperties Collaboration {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CreatorDisplayName" JSON..= creatorDisplayName,
                            "CreatorMemberAbilities" JSON..= creatorMemberAbilities,
                            "Description" JSON..= description, "Members" JSON..= members,
                            "Name" JSON..= name, "QueryLogStatus" JSON..= queryLogStatus]
                           (Prelude.catMaybes
                              [(JSON..=) "CreatorPaymentConfiguration"
                                 Prelude.<$> creatorPaymentConfiguration,
                               (JSON..=) "DataEncryptionMetadata"
                                 Prelude.<$> dataEncryptionMetadata,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Collaboration where
  toJSON Collaboration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CreatorDisplayName" JSON..= creatorDisplayName,
               "CreatorMemberAbilities" JSON..= creatorMemberAbilities,
               "Description" JSON..= description, "Members" JSON..= members,
               "Name" JSON..= name, "QueryLogStatus" JSON..= queryLogStatus]
              (Prelude.catMaybes
                 [(JSON..=) "CreatorPaymentConfiguration"
                    Prelude.<$> creatorPaymentConfiguration,
                  (JSON..=) "DataEncryptionMetadata"
                    Prelude.<$> dataEncryptionMetadata,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CreatorDisplayName" Collaboration where
  type PropertyType "CreatorDisplayName" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {creatorDisplayName = newValue, ..}
instance Property "CreatorMemberAbilities" Collaboration where
  type PropertyType "CreatorMemberAbilities" Collaboration = ValueList Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {creatorMemberAbilities = newValue, ..}
instance Property "CreatorPaymentConfiguration" Collaboration where
  type PropertyType "CreatorPaymentConfiguration" Collaboration = PaymentConfigurationProperty
  set newValue Collaboration {..}
    = Collaboration
        {creatorPaymentConfiguration = Prelude.pure newValue, ..}
instance Property "DataEncryptionMetadata" Collaboration where
  type PropertyType "DataEncryptionMetadata" Collaboration = DataEncryptionMetadataProperty
  set newValue Collaboration {..}
    = Collaboration
        {dataEncryptionMetadata = Prelude.pure newValue, ..}
instance Property "Description" Collaboration where
  type PropertyType "Description" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {description = newValue, ..}
instance Property "Members" Collaboration where
  type PropertyType "Members" Collaboration = [MemberSpecificationProperty]
  set newValue Collaboration {..}
    = Collaboration {members = newValue, ..}
instance Property "Name" Collaboration where
  type PropertyType "Name" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {name = newValue, ..}
instance Property "QueryLogStatus" Collaboration where
  type PropertyType "QueryLogStatus" Collaboration = Value Prelude.Text
  set newValue Collaboration {..}
    = Collaboration {queryLogStatus = newValue, ..}
instance Property "Tags" Collaboration where
  type PropertyType "Tags" Collaboration = [Tag]
  set newValue Collaboration {..}
    = Collaboration {tags = Prelude.pure newValue, ..}