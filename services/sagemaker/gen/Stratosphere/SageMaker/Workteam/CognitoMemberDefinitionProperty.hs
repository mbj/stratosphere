module Stratosphere.SageMaker.Workteam.CognitoMemberDefinitionProperty (
        CognitoMemberDefinitionProperty(..),
        mkCognitoMemberDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoMemberDefinitionProperty
  = CognitoMemberDefinitionProperty {cognitoClientId :: (Value Prelude.Text),
                                     cognitoUserGroup :: (Value Prelude.Text),
                                     cognitoUserPool :: (Value Prelude.Text)}
mkCognitoMemberDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CognitoMemberDefinitionProperty
mkCognitoMemberDefinitionProperty
  cognitoClientId
  cognitoUserGroup
  cognitoUserPool
  = CognitoMemberDefinitionProperty
      {cognitoClientId = cognitoClientId,
       cognitoUserGroup = cognitoUserGroup,
       cognitoUserPool = cognitoUserPool}
instance ToResourceProperties CognitoMemberDefinitionProperty where
  toResourceProperties CognitoMemberDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Workteam.CognitoMemberDefinition",
         supportsTags = Prelude.False,
         properties = ["CognitoClientId" JSON..= cognitoClientId,
                       "CognitoUserGroup" JSON..= cognitoUserGroup,
                       "CognitoUserPool" JSON..= cognitoUserPool]}
instance JSON.ToJSON CognitoMemberDefinitionProperty where
  toJSON CognitoMemberDefinitionProperty {..}
    = JSON.object
        ["CognitoClientId" JSON..= cognitoClientId,
         "CognitoUserGroup" JSON..= cognitoUserGroup,
         "CognitoUserPool" JSON..= cognitoUserPool]
instance Property "CognitoClientId" CognitoMemberDefinitionProperty where
  type PropertyType "CognitoClientId" CognitoMemberDefinitionProperty = Value Prelude.Text
  set newValue CognitoMemberDefinitionProperty {..}
    = CognitoMemberDefinitionProperty {cognitoClientId = newValue, ..}
instance Property "CognitoUserGroup" CognitoMemberDefinitionProperty where
  type PropertyType "CognitoUserGroup" CognitoMemberDefinitionProperty = Value Prelude.Text
  set newValue CognitoMemberDefinitionProperty {..}
    = CognitoMemberDefinitionProperty {cognitoUserGroup = newValue, ..}
instance Property "CognitoUserPool" CognitoMemberDefinitionProperty where
  type PropertyType "CognitoUserPool" CognitoMemberDefinitionProperty = Value Prelude.Text
  set newValue CognitoMemberDefinitionProperty {..}
    = CognitoMemberDefinitionProperty {cognitoUserPool = newValue, ..}