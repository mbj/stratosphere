{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html

module Stratosphere.Resources.CodeCommitRepository where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeCommitRepositoryRepositoryTrigger

-- | Full data type definition for CodeCommitRepository. See
-- 'codeCommitRepository' for a more convenient constructor.
data CodeCommitRepository =
  CodeCommitRepository
  { _codeCommitRepositoryRepositoryDescription :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryName :: Val Text
  , _codeCommitRepositoryTriggers :: Maybe [CodeCommitRepositoryRepositoryTrigger]
  } deriving (Show, Eq)

instance ToJSON CodeCommitRepository where
  toJSON CodeCommitRepository{..} =
    object $
    catMaybes
    [ ("RepositoryDescription" .=) <$> _codeCommitRepositoryRepositoryDescription
    , Just ("RepositoryName" .= _codeCommitRepositoryRepositoryName)
    , ("Triggers" .=) <$> _codeCommitRepositoryTriggers
    ]

instance FromJSON CodeCommitRepository where
  parseJSON (Object obj) =
    CodeCommitRepository <$>
      obj .:? "RepositoryDescription" <*>
      obj .: "RepositoryName" <*>
      obj .:? "Triggers"
  parseJSON _ = mempty

-- | Constructor for 'CodeCommitRepository' containing required fields as
-- arguments.
codeCommitRepository
  :: Val Text -- ^ 'ccrRepositoryName'
  -> CodeCommitRepository
codeCommitRepository repositoryNamearg =
  CodeCommitRepository
  { _codeCommitRepositoryRepositoryDescription = Nothing
  , _codeCommitRepositoryRepositoryName = repositoryNamearg
  , _codeCommitRepositoryTriggers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositorydescription
ccrRepositoryDescription :: Lens' CodeCommitRepository (Maybe (Val Text))
ccrRepositoryDescription = lens _codeCommitRepositoryRepositoryDescription (\s a -> s { _codeCommitRepositoryRepositoryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-repositoryname
ccrRepositoryName :: Lens' CodeCommitRepository (Val Text)
ccrRepositoryName = lens _codeCommitRepositoryRepositoryName (\s a -> s { _codeCommitRepositoryRepositoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codecommit-repository.html#cfn-codecommit-repository-triggers
ccrTriggers :: Lens' CodeCommitRepository (Maybe [CodeCommitRepositoryRepositoryTrigger])
ccrTriggers = lens _codeCommitRepositoryTriggers (\s a -> s { _codeCommitRepositoryTriggers = a })
