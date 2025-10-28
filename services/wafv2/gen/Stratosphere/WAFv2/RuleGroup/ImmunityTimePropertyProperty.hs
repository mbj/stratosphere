module Stratosphere.WAFv2.RuleGroup.ImmunityTimePropertyProperty (
        ImmunityTimePropertyProperty(..), mkImmunityTimePropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ImmunityTimePropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-immunitytimeproperty.html>
    ImmunityTimePropertyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-immunitytimeproperty.html#cfn-wafv2-rulegroup-immunitytimeproperty-immunitytime>
                                  immunityTime :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImmunityTimePropertyProperty ::
  Value Prelude.Integer -> ImmunityTimePropertyProperty
mkImmunityTimePropertyProperty immunityTime
  = ImmunityTimePropertyProperty
      {haddock_workaround_ = (), immunityTime = immunityTime}
instance ToResourceProperties ImmunityTimePropertyProperty where
  toResourceProperties ImmunityTimePropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.ImmunityTimeProperty",
         supportsTags = Prelude.False,
         properties = ["ImmunityTime" JSON..= immunityTime]}
instance JSON.ToJSON ImmunityTimePropertyProperty where
  toJSON ImmunityTimePropertyProperty {..}
    = JSON.object ["ImmunityTime" JSON..= immunityTime]
instance Property "ImmunityTime" ImmunityTimePropertyProperty where
  type PropertyType "ImmunityTime" ImmunityTimePropertyProperty = Value Prelude.Integer
  set newValue ImmunityTimePropertyProperty {..}
    = ImmunityTimePropertyProperty {immunityTime = newValue, ..}