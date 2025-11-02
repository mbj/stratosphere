module Stratosphere.CleanRooms.IdMappingTable.IdMappingTableInputReferenceConfigProperty (
        IdMappingTableInputReferenceConfigProperty(..),
        mkIdMappingTableInputReferenceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingTableInputReferenceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputreferenceconfig.html>
    IdMappingTableInputReferenceConfigProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputreferenceconfig.html#cfn-cleanrooms-idmappingtable-idmappingtableinputreferenceconfig-inputreferencearn>
                                                inputReferenceArn :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-idmappingtable-idmappingtableinputreferenceconfig.html#cfn-cleanrooms-idmappingtable-idmappingtableinputreferenceconfig-manageresourcepolicies>
                                                manageResourcePolicies :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingTableInputReferenceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Bool -> IdMappingTableInputReferenceConfigProperty
mkIdMappingTableInputReferenceConfigProperty
  inputReferenceArn
  manageResourcePolicies
  = IdMappingTableInputReferenceConfigProperty
      {haddock_workaround_ = (), inputReferenceArn = inputReferenceArn,
       manageResourcePolicies = manageResourcePolicies}
instance ToResourceProperties IdMappingTableInputReferenceConfigProperty where
  toResourceProperties
    IdMappingTableInputReferenceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::IdMappingTable.IdMappingTableInputReferenceConfig",
         supportsTags = Prelude.False,
         properties = ["InputReferenceArn" JSON..= inputReferenceArn,
                       "ManageResourcePolicies" JSON..= manageResourcePolicies]}
instance JSON.ToJSON IdMappingTableInputReferenceConfigProperty where
  toJSON IdMappingTableInputReferenceConfigProperty {..}
    = JSON.object
        ["InputReferenceArn" JSON..= inputReferenceArn,
         "ManageResourcePolicies" JSON..= manageResourcePolicies]
instance Property "InputReferenceArn" IdMappingTableInputReferenceConfigProperty where
  type PropertyType "InputReferenceArn" IdMappingTableInputReferenceConfigProperty = Value Prelude.Text
  set newValue IdMappingTableInputReferenceConfigProperty {..}
    = IdMappingTableInputReferenceConfigProperty
        {inputReferenceArn = newValue, ..}
instance Property "ManageResourcePolicies" IdMappingTableInputReferenceConfigProperty where
  type PropertyType "ManageResourcePolicies" IdMappingTableInputReferenceConfigProperty = Value Prelude.Bool
  set newValue IdMappingTableInputReferenceConfigProperty {..}
    = IdMappingTableInputReferenceConfigProperty
        {manageResourcePolicies = newValue, ..}