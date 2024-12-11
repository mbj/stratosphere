module Stratosphere.CleanRooms.IdNamespaceAssociation.IdNamespaceAssociationInputReferenceConfigProperty (
        IdNamespaceAssociationInputReferenceConfigProperty(..),
        mkIdNamespaceAssociationInputReferenceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdNamespaceAssociationInputReferenceConfigProperty
  = IdNamespaceAssociationInputReferenceConfigProperty {inputReferenceArn :: (Value Prelude.Text),
                                                        manageResourcePolicies :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdNamespaceAssociationInputReferenceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool
     -> IdNamespaceAssociationInputReferenceConfigProperty
mkIdNamespaceAssociationInputReferenceConfigProperty
  inputReferenceArn
  manageResourcePolicies
  = IdNamespaceAssociationInputReferenceConfigProperty
      {inputReferenceArn = inputReferenceArn,
       manageResourcePolicies = manageResourcePolicies}
instance ToResourceProperties IdNamespaceAssociationInputReferenceConfigProperty where
  toResourceProperties
    IdNamespaceAssociationInputReferenceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdNamespaceAssociation.IdNamespaceAssociationInputReferenceConfig",
         supportsTags = Prelude.False,
         properties = ["InputReferenceArn" JSON..= inputReferenceArn,
                       "ManageResourcePolicies" JSON..= manageResourcePolicies]}
instance JSON.ToJSON IdNamespaceAssociationInputReferenceConfigProperty where
  toJSON IdNamespaceAssociationInputReferenceConfigProperty {..}
    = JSON.object
        ["InputReferenceArn" JSON..= inputReferenceArn,
         "ManageResourcePolicies" JSON..= manageResourcePolicies]
instance Property "InputReferenceArn" IdNamespaceAssociationInputReferenceConfigProperty where
  type PropertyType "InputReferenceArn" IdNamespaceAssociationInputReferenceConfigProperty = Value Prelude.Text
  set
    newValue
    IdNamespaceAssociationInputReferenceConfigProperty {..}
    = IdNamespaceAssociationInputReferenceConfigProperty
        {inputReferenceArn = newValue, ..}
instance Property "ManageResourcePolicies" IdNamespaceAssociationInputReferenceConfigProperty where
  type PropertyType "ManageResourcePolicies" IdNamespaceAssociationInputReferenceConfigProperty = Value Prelude.Bool
  set
    newValue
    IdNamespaceAssociationInputReferenceConfigProperty {..}
    = IdNamespaceAssociationInputReferenceConfigProperty
        {manageResourcePolicies = newValue, ..}