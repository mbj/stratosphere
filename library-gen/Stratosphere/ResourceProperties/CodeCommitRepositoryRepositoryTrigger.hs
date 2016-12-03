{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html

module Stratosphere.ResourceProperties.CodeCommitRepositoryRepositoryTrigger where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeCommitRepositoryRepositoryTrigger. See
-- | 'codeCommitRepositoryRepositoryTrigger' for a more convenient
-- | constructor.
data CodeCommitRepositoryRepositoryTrigger =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches :: Maybe [Val Text]
  , _codeCommitRepositoryRepositoryTriggerCustomData :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerDestinationArn :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerEvents :: Maybe [Val Text]
  , _codeCommitRepositoryRepositoryTriggerName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodeCommitRepositoryRepositoryTrigger where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON CodeCommitRepositoryRepositoryTrigger where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'CodeCommitRepositoryRepositoryTrigger' containing
-- | required fields as arguments.
codeCommitRepositoryRepositoryTrigger
  :: CodeCommitRepositoryRepositoryTrigger
codeCommitRepositoryRepositoryTrigger  =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches = Nothing
  , _codeCommitRepositoryRepositoryTriggerCustomData = Nothing
  , _codeCommitRepositoryRepositoryTriggerDestinationArn = Nothing
  , _codeCommitRepositoryRepositoryTriggerEvents = Nothing
  , _codeCommitRepositoryRepositoryTriggerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-branches
ccrrtBranches :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe [Val Text])
ccrrtBranches = lens _codeCommitRepositoryRepositoryTriggerBranches (\s a -> s { _codeCommitRepositoryRepositoryTriggerBranches = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata
ccrrtCustomData :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtCustomData = lens _codeCommitRepositoryRepositoryTriggerCustomData (\s a -> s { _codeCommitRepositoryRepositoryTriggerCustomData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn
ccrrtDestinationArn :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtDestinationArn = lens _codeCommitRepositoryRepositoryTriggerDestinationArn (\s a -> s { _codeCommitRepositoryRepositoryTriggerDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events
ccrrtEvents :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe [Val Text])
ccrrtEvents = lens _codeCommitRepositoryRepositoryTriggerEvents (\s a -> s { _codeCommitRepositoryRepositoryTriggerEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name
ccrrtName :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtName = lens _codeCommitRepositoryRepositoryTriggerName (\s a -> s { _codeCommitRepositoryRepositoryTriggerName = a })
