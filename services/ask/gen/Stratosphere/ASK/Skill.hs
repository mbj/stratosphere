module Stratosphere.ASK.Skill (
        module Exports, Skill(..), mkSkill
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ASK.Skill.AuthenticationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ASK.Skill.SkillPackageProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Skill
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html>
    Skill {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-authenticationconfiguration>
           authenticationConfiguration :: AuthenticationConfigurationProperty,
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-skillpackage>
           skillPackage :: SkillPackageProperty,
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ask-skill.html#cfn-ask-skill-vendorid>
           vendorId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSkill ::
  AuthenticationConfigurationProperty
  -> SkillPackageProperty -> Value Prelude.Text -> Skill
mkSkill authenticationConfiguration skillPackage vendorId
  = Skill
      {haddock_workaround_ = (),
       authenticationConfiguration = authenticationConfiguration,
       skillPackage = skillPackage, vendorId = vendorId}
instance ToResourceProperties Skill where
  toResourceProperties Skill {..}
    = ResourceProperties
        {awsType = "Alexa::ASK::Skill", supportsTags = Prelude.False,
         properties = ["AuthenticationConfiguration"
                         JSON..= authenticationConfiguration,
                       "SkillPackage" JSON..= skillPackage, "VendorId" JSON..= vendorId]}
instance JSON.ToJSON Skill where
  toJSON Skill {..}
    = JSON.object
        ["AuthenticationConfiguration" JSON..= authenticationConfiguration,
         "SkillPackage" JSON..= skillPackage, "VendorId" JSON..= vendorId]
instance Property "AuthenticationConfiguration" Skill where
  type PropertyType "AuthenticationConfiguration" Skill = AuthenticationConfigurationProperty
  set newValue Skill {..}
    = Skill {authenticationConfiguration = newValue, ..}
instance Property "SkillPackage" Skill where
  type PropertyType "SkillPackage" Skill = SkillPackageProperty
  set newValue Skill {..} = Skill {skillPackage = newValue, ..}
instance Property "VendorId" Skill where
  type PropertyType "VendorId" Skill = Value Prelude.Text
  set newValue Skill {..} = Skill {vendorId = newValue, ..}