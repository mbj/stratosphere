{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html

module Stratosphere.ResourceProperties.RepositoryTrigger where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for RepositoryTrigger. See 'repositoryTrigger'
-- | for a more convenient constructor.
data RepositoryTrigger =
  RepositoryTrigger
  { _repositoryTriggerBranches :: Maybe [Val Text]
  , _repositoryTriggerCustomData :: Maybe (Val Text)
  , _repositoryTriggerDestinationArn :: Maybe (Val Text)
  , _repositoryTriggerEvents :: Maybe [Val Text]
  , _repositoryTriggerName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON RepositoryTrigger where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON RepositoryTrigger where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'RepositoryTrigger' containing required fields as
-- | arguments.
repositoryTrigger
  :: RepositoryTrigger
repositoryTrigger  =
  RepositoryTrigger
  { _repositoryTriggerBranches = Nothing
  , _repositoryTriggerCustomData = Nothing
  , _repositoryTriggerDestinationArn = Nothing
  , _repositoryTriggerEvents = Nothing
  , _repositoryTriggerName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-branches
rtBranches :: Lens' RepositoryTrigger (Maybe [Val Text])
rtBranches = lens _repositoryTriggerBranches (\s a -> s { _repositoryTriggerBranches = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata
rtCustomData :: Lens' RepositoryTrigger (Maybe (Val Text))
rtCustomData = lens _repositoryTriggerCustomData (\s a -> s { _repositoryTriggerCustomData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn
rtDestinationArn :: Lens' RepositoryTrigger (Maybe (Val Text))
rtDestinationArn = lens _repositoryTriggerDestinationArn (\s a -> s { _repositoryTriggerDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events
rtEvents :: Lens' RepositoryTrigger (Maybe [Val Text])
rtEvents = lens _repositoryTriggerEvents (\s a -> s { _repositoryTriggerEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name
rtName :: Lens' RepositoryTrigger (Maybe (Val Text))
rtName = lens _repositoryTriggerName (\s a -> s { _repositoryTriggerName = a })
