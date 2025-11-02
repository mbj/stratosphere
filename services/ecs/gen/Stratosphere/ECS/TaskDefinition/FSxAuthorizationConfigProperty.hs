module Stratosphere.ECS.TaskDefinition.FSxAuthorizationConfigProperty (
        FSxAuthorizationConfigProperty(..),
        mkFSxAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FSxAuthorizationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-fsxauthorizationconfig.html>
    FSxAuthorizationConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-fsxauthorizationconfig.html#cfn-ecs-taskdefinition-fsxauthorizationconfig-credentialsparameter>
                                    credentialsParameter :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-fsxauthorizationconfig.html#cfn-ecs-taskdefinition-fsxauthorizationconfig-domain>
                                    domain :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFSxAuthorizationConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FSxAuthorizationConfigProperty
mkFSxAuthorizationConfigProperty credentialsParameter domain
  = FSxAuthorizationConfigProperty
      {haddock_workaround_ = (),
       credentialsParameter = credentialsParameter, domain = domain}
instance ToResourceProperties FSxAuthorizationConfigProperty where
  toResourceProperties FSxAuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.FSxAuthorizationConfig",
         supportsTags = Prelude.False,
         properties = ["CredentialsParameter" JSON..= credentialsParameter,
                       "Domain" JSON..= domain]}
instance JSON.ToJSON FSxAuthorizationConfigProperty where
  toJSON FSxAuthorizationConfigProperty {..}
    = JSON.object
        ["CredentialsParameter" JSON..= credentialsParameter,
         "Domain" JSON..= domain]
instance Property "CredentialsParameter" FSxAuthorizationConfigProperty where
  type PropertyType "CredentialsParameter" FSxAuthorizationConfigProperty = Value Prelude.Text
  set newValue FSxAuthorizationConfigProperty {..}
    = FSxAuthorizationConfigProperty
        {credentialsParameter = newValue, ..}
instance Property "Domain" FSxAuthorizationConfigProperty where
  type PropertyType "Domain" FSxAuthorizationConfigProperty = Value Prelude.Text
  set newValue FSxAuthorizationConfigProperty {..}
    = FSxAuthorizationConfigProperty {domain = newValue, ..}