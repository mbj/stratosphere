module Stratosphere.SageMaker.Workteam.OidcMemberDefinitionProperty (
        OidcMemberDefinitionProperty(..), mkOidcMemberDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OidcMemberDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-oidcmemberdefinition.html>
    OidcMemberDefinitionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-oidcmemberdefinition.html#cfn-sagemaker-workteam-oidcmemberdefinition-oidcgroups>
                                  oidcGroups :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOidcMemberDefinitionProperty ::
  ValueList Prelude.Text -> OidcMemberDefinitionProperty
mkOidcMemberDefinitionProperty oidcGroups
  = OidcMemberDefinitionProperty
      {haddock_workaround_ = (), oidcGroups = oidcGroups}
instance ToResourceProperties OidcMemberDefinitionProperty where
  toResourceProperties OidcMemberDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Workteam.OidcMemberDefinition",
         supportsTags = Prelude.False,
         properties = ["OidcGroups" JSON..= oidcGroups]}
instance JSON.ToJSON OidcMemberDefinitionProperty where
  toJSON OidcMemberDefinitionProperty {..}
    = JSON.object ["OidcGroups" JSON..= oidcGroups]
instance Property "OidcGroups" OidcMemberDefinitionProperty where
  type PropertyType "OidcGroups" OidcMemberDefinitionProperty = ValueList Prelude.Text
  set newValue OidcMemberDefinitionProperty {..}
    = OidcMemberDefinitionProperty {oidcGroups = newValue, ..}