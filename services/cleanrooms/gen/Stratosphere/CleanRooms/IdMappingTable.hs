module Stratosphere.CleanRooms.IdMappingTable (
        module Exports, IdMappingTable(..), mkIdMappingTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.IdMappingTable.IdMappingTableInputReferenceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdMappingTable
  = IdMappingTable {description :: (Prelude.Maybe (Value Prelude.Text)),
                    inputReferenceConfig :: IdMappingTableInputReferenceConfigProperty,
                    kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                    membershipIdentifier :: (Value Prelude.Text),
                    name :: (Value Prelude.Text),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingTable ::
  IdMappingTableInputReferenceConfigProperty
  -> Value Prelude.Text -> Value Prelude.Text -> IdMappingTable
mkIdMappingTable inputReferenceConfig membershipIdentifier name
  = IdMappingTable
      {inputReferenceConfig = inputReferenceConfig,
       membershipIdentifier = membershipIdentifier, name = name,
       description = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IdMappingTable where
  toResourceProperties IdMappingTable {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdMappingTable",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputReferenceConfig" JSON..= inputReferenceConfig,
                            "MembershipIdentifier" JSON..= membershipIdentifier,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdMappingTable where
  toJSON IdMappingTable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputReferenceConfig" JSON..= inputReferenceConfig,
               "MembershipIdentifier" JSON..= membershipIdentifier,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IdMappingTable where
  type PropertyType "Description" IdMappingTable = Value Prelude.Text
  set newValue IdMappingTable {..}
    = IdMappingTable {description = Prelude.pure newValue, ..}
instance Property "InputReferenceConfig" IdMappingTable where
  type PropertyType "InputReferenceConfig" IdMappingTable = IdMappingTableInputReferenceConfigProperty
  set newValue IdMappingTable {..}
    = IdMappingTable {inputReferenceConfig = newValue, ..}
instance Property "KmsKeyArn" IdMappingTable where
  type PropertyType "KmsKeyArn" IdMappingTable = Value Prelude.Text
  set newValue IdMappingTable {..}
    = IdMappingTable {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "MembershipIdentifier" IdMappingTable where
  type PropertyType "MembershipIdentifier" IdMappingTable = Value Prelude.Text
  set newValue IdMappingTable {..}
    = IdMappingTable {membershipIdentifier = newValue, ..}
instance Property "Name" IdMappingTable where
  type PropertyType "Name" IdMappingTable = Value Prelude.Text
  set newValue IdMappingTable {..}
    = IdMappingTable {name = newValue, ..}
instance Property "Tags" IdMappingTable where
  type PropertyType "Tags" IdMappingTable = [Tag]
  set newValue IdMappingTable {..}
    = IdMappingTable {tags = Prelude.pure newValue, ..}