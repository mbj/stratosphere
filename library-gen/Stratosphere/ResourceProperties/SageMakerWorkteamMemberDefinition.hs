{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html

module Stratosphere.ResourceProperties.SageMakerWorkteamMemberDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerWorkteamCognitoMemberDefinition

-- | Full data type definition for SageMakerWorkteamMemberDefinition. See
-- 'sageMakerWorkteamMemberDefinition' for a more convenient constructor.
data SageMakerWorkteamMemberDefinition =
  SageMakerWorkteamMemberDefinition
  { _sageMakerWorkteamMemberDefinitionCognitoMemberDefinition :: SageMakerWorkteamCognitoMemberDefinition
  } deriving (Show, Eq)

instance ToJSON SageMakerWorkteamMemberDefinition where
  toJSON SageMakerWorkteamMemberDefinition{..} =
    object $
    catMaybes
    [ (Just . ("CognitoMemberDefinition",) . toJSON) _sageMakerWorkteamMemberDefinitionCognitoMemberDefinition
    ]

-- | Constructor for 'SageMakerWorkteamMemberDefinition' containing required
-- fields as arguments.
sageMakerWorkteamMemberDefinition
  :: SageMakerWorkteamCognitoMemberDefinition -- ^ 'smwmdCognitoMemberDefinition'
  -> SageMakerWorkteamMemberDefinition
sageMakerWorkteamMemberDefinition cognitoMemberDefinitionarg =
  SageMakerWorkteamMemberDefinition
  { _sageMakerWorkteamMemberDefinitionCognitoMemberDefinition = cognitoMemberDefinitionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-workteam-memberdefinition.html#cfn-sagemaker-workteam-memberdefinition-cognitomemberdefinition
smwmdCognitoMemberDefinition :: Lens' SageMakerWorkteamMemberDefinition SageMakerWorkteamCognitoMemberDefinition
smwmdCognitoMemberDefinition = lens _sageMakerWorkteamMemberDefinitionCognitoMemberDefinition (\s a -> s { _sageMakerWorkteamMemberDefinitionCognitoMemberDefinition = a })
