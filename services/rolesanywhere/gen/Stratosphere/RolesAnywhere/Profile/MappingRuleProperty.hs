module Stratosphere.RolesAnywhere.Profile.MappingRuleProperty (
        MappingRuleProperty(..), mkMappingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MappingRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-profile-mappingrule.html>
    MappingRuleProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-profile-mappingrule.html#cfn-rolesanywhere-profile-mappingrule-specifier>
                         specifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMappingRuleProperty :: Value Prelude.Text -> MappingRuleProperty
mkMappingRuleProperty specifier
  = MappingRuleProperty
      {haddock_workaround_ = (), specifier = specifier}
instance ToResourceProperties MappingRuleProperty where
  toResourceProperties MappingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::Profile.MappingRule",
         supportsTags = Prelude.False,
         properties = ["Specifier" JSON..= specifier]}
instance JSON.ToJSON MappingRuleProperty where
  toJSON MappingRuleProperty {..}
    = JSON.object ["Specifier" JSON..= specifier]
instance Property "Specifier" MappingRuleProperty where
  type PropertyType "Specifier" MappingRuleProperty = Value Prelude.Text
  set newValue MappingRuleProperty {..}
    = MappingRuleProperty {specifier = newValue, ..}