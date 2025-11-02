module Stratosphere.CleanRooms.IdNamespaceAssociation (
        module Exports, IdNamespaceAssociation(..),
        mkIdNamespaceAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.IdNamespaceAssociation.IdMappingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.IdNamespaceAssociation.IdNamespaceAssociationInputReferenceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdNamespaceAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html>
    IdNamespaceAssociation {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html#cfn-cleanrooms-idnamespaceassociation-description>
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html#cfn-cleanrooms-idnamespaceassociation-idmappingconfig>
                            idMappingConfig :: (Prelude.Maybe IdMappingConfigProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html#cfn-cleanrooms-idnamespaceassociation-inputreferenceconfig>
                            inputReferenceConfig :: IdNamespaceAssociationInputReferenceConfigProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html#cfn-cleanrooms-idnamespaceassociation-membershipidentifier>
                            membershipIdentifier :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html#cfn-cleanrooms-idnamespaceassociation-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cleanrooms-idnamespaceassociation.html#cfn-cleanrooms-idnamespaceassociation-tags>
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdNamespaceAssociation ::
  IdNamespaceAssociationInputReferenceConfigProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> IdNamespaceAssociation
mkIdNamespaceAssociation
  inputReferenceConfig
  membershipIdentifier
  name
  = IdNamespaceAssociation
      {haddock_workaround_ = (),
       inputReferenceConfig = inputReferenceConfig,
       membershipIdentifier = membershipIdentifier, name = name,
       description = Prelude.Nothing, idMappingConfig = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IdNamespaceAssociation where
  toResourceProperties IdNamespaceAssociation {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdNamespaceAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputReferenceConfig" JSON..= inputReferenceConfig,
                            "MembershipIdentifier" JSON..= membershipIdentifier,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IdMappingConfig" Prelude.<$> idMappingConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdNamespaceAssociation where
  toJSON IdNamespaceAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputReferenceConfig" JSON..= inputReferenceConfig,
               "MembershipIdentifier" JSON..= membershipIdentifier,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IdMappingConfig" Prelude.<$> idMappingConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IdNamespaceAssociation where
  type PropertyType "Description" IdNamespaceAssociation = Value Prelude.Text
  set newValue IdNamespaceAssociation {..}
    = IdNamespaceAssociation {description = Prelude.pure newValue, ..}
instance Property "IdMappingConfig" IdNamespaceAssociation where
  type PropertyType "IdMappingConfig" IdNamespaceAssociation = IdMappingConfigProperty
  set newValue IdNamespaceAssociation {..}
    = IdNamespaceAssociation
        {idMappingConfig = Prelude.pure newValue, ..}
instance Property "InputReferenceConfig" IdNamespaceAssociation where
  type PropertyType "InputReferenceConfig" IdNamespaceAssociation = IdNamespaceAssociationInputReferenceConfigProperty
  set newValue IdNamespaceAssociation {..}
    = IdNamespaceAssociation {inputReferenceConfig = newValue, ..}
instance Property "MembershipIdentifier" IdNamespaceAssociation where
  type PropertyType "MembershipIdentifier" IdNamespaceAssociation = Value Prelude.Text
  set newValue IdNamespaceAssociation {..}
    = IdNamespaceAssociation {membershipIdentifier = newValue, ..}
instance Property "Name" IdNamespaceAssociation where
  type PropertyType "Name" IdNamespaceAssociation = Value Prelude.Text
  set newValue IdNamespaceAssociation {..}
    = IdNamespaceAssociation {name = newValue, ..}
instance Property "Tags" IdNamespaceAssociation where
  type PropertyType "Tags" IdNamespaceAssociation = [Tag]
  set newValue IdNamespaceAssociation {..}
    = IdNamespaceAssociation {tags = Prelude.pure newValue, ..}