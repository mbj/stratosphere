module Stratosphere.CleanRooms.Collaboration.MLMemberAbilitiesProperty (
        MLMemberAbilitiesProperty(..), mkMLMemberAbilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MLMemberAbilitiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlmemberabilities.html>
    MLMemberAbilitiesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlmemberabilities.html#cfn-cleanrooms-collaboration-mlmemberabilities-custommlmemberabilities>
                               customMLMemberAbilities :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMLMemberAbilitiesProperty ::
  ValueList Prelude.Text -> MLMemberAbilitiesProperty
mkMLMemberAbilitiesProperty customMLMemberAbilities
  = MLMemberAbilitiesProperty
      {haddock_workaround_ = (),
       customMLMemberAbilities = customMLMemberAbilities}
instance ToResourceProperties MLMemberAbilitiesProperty where
  toResourceProperties MLMemberAbilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.MLMemberAbilities",
         supportsTags = Prelude.False,
         properties = ["CustomMLMemberAbilities"
                         JSON..= customMLMemberAbilities]}
instance JSON.ToJSON MLMemberAbilitiesProperty where
  toJSON MLMemberAbilitiesProperty {..}
    = JSON.object
        ["CustomMLMemberAbilities" JSON..= customMLMemberAbilities]
instance Property "CustomMLMemberAbilities" MLMemberAbilitiesProperty where
  type PropertyType "CustomMLMemberAbilities" MLMemberAbilitiesProperty = ValueList Prelude.Text
  set newValue MLMemberAbilitiesProperty {..}
    = MLMemberAbilitiesProperty
        {customMLMemberAbilities = newValue, ..}