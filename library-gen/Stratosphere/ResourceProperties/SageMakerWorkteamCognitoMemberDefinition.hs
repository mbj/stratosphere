
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html

module Stratosphere.ResourceProperties.SageMakerWorkteamCognitoMemberDefinition where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerWorkteamCognitoMemberDefinition.
-- See 'sageMakerWorkteamCognitoMemberDefinition' for a more convenient
-- constructor.
data SageMakerWorkteamCognitoMemberDefinition =
  SageMakerWorkteamCognitoMemberDefinition
  { _sageMakerWorkteamCognitoMemberDefinitionCognitoClientId :: Val Text
  , _sageMakerWorkteamCognitoMemberDefinitionCognitoUserGroup :: Val Text
  , _sageMakerWorkteamCognitoMemberDefinitionCognitoUserPool :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerWorkteamCognitoMemberDefinition where
  toJSON SageMakerWorkteamCognitoMemberDefinition{..} =
    object $
    catMaybes
    [ (Just . ("CognitoClientId",) . toJSON) _sageMakerWorkteamCognitoMemberDefinitionCognitoClientId
    , (Just . ("CognitoUserGroup",) . toJSON) _sageMakerWorkteamCognitoMemberDefinitionCognitoUserGroup
    , (Just . ("CognitoUserPool",) . toJSON) _sageMakerWorkteamCognitoMemberDefinitionCognitoUserPool
    ]

-- | Constructor for 'SageMakerWorkteamCognitoMemberDefinition' containing
-- required fields as arguments.
sageMakerWorkteamCognitoMemberDefinition
  :: Val Text -- ^ 'smwcmdCognitoClientId'
  -> Val Text -- ^ 'smwcmdCognitoUserGroup'
  -> Val Text -- ^ 'smwcmdCognitoUserPool'
  -> SageMakerWorkteamCognitoMemberDefinition
sageMakerWorkteamCognitoMemberDefinition cognitoClientIdarg cognitoUserGrouparg cognitoUserPoolarg =
  SageMakerWorkteamCognitoMemberDefinition
  { _sageMakerWorkteamCognitoMemberDefinitionCognitoClientId = cognitoClientIdarg
  , _sageMakerWorkteamCognitoMemberDefinitionCognitoUserGroup = cognitoUserGrouparg
  , _sageMakerWorkteamCognitoMemberDefinitionCognitoUserPool = cognitoUserPoolarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html#cfn-sagemaker-workteam-cognitomemberdefinition-cognitoclientid
smwcmdCognitoClientId :: Lens' SageMakerWorkteamCognitoMemberDefinition (Val Text)
smwcmdCognitoClientId = lens _sageMakerWorkteamCognitoMemberDefinitionCognitoClientId (\s a -> s { _sageMakerWorkteamCognitoMemberDefinitionCognitoClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html#cfn-sagemaker-workteam-cognitomemberdefinition-cognitousergroup
smwcmdCognitoUserGroup :: Lens' SageMakerWorkteamCognitoMemberDefinition (Val Text)
smwcmdCognitoUserGroup = lens _sageMakerWorkteamCognitoMemberDefinitionCognitoUserGroup (\s a -> s { _sageMakerWorkteamCognitoMemberDefinitionCognitoUserGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-cognitomemberdefinition.html#cfn-sagemaker-workteam-cognitomemberdefinition-cognitouserpool
smwcmdCognitoUserPool :: Lens' SageMakerWorkteamCognitoMemberDefinition (Val Text)
smwcmdCognitoUserPool = lens _sageMakerWorkteamCognitoMemberDefinitionCognitoUserPool (\s a -> s { _sageMakerWorkteamCognitoMemberDefinitionCognitoUserPool = a })
