{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html

module Stratosphere.ResourceProperties.CodeCommitRepositoryRepositoryTrigger where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeCommitRepositoryRepositoryTrigger. See
-- 'codeCommitRepositoryRepositoryTrigger' for a more convenient
-- constructor.
data CodeCommitRepositoryRepositoryTrigger =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches :: Maybe (ValList Text)
  , _codeCommitRepositoryRepositoryTriggerCustomData :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerDestinationArn :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerEvents :: Maybe (ValList Text)
  , _codeCommitRepositoryRepositoryTriggerName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeCommitRepositoryRepositoryTrigger where
  toJSON CodeCommitRepositoryRepositoryTrigger{..} =
    object $
    catMaybes
    [ ("Branches" .=) <$> _codeCommitRepositoryRepositoryTriggerBranches
    , ("CustomData" .=) <$> _codeCommitRepositoryRepositoryTriggerCustomData
    , ("DestinationArn" .=) <$> _codeCommitRepositoryRepositoryTriggerDestinationArn
    , ("Events" .=) <$> _codeCommitRepositoryRepositoryTriggerEvents
    , ("Name" .=) <$> _codeCommitRepositoryRepositoryTriggerName
    ]

instance FromJSON CodeCommitRepositoryRepositoryTrigger where
  parseJSON (Object obj) =
    CodeCommitRepositoryRepositoryTrigger <$>
      obj .:? "Branches" <*>
      obj .:? "CustomData" <*>
      obj .:? "DestinationArn" <*>
      obj .:? "Events" <*>
      obj .:? "Name"
  parseJSON _ = mempty

-- | Constructor for 'CodeCommitRepositoryRepositoryTrigger' containing
-- required fields as arguments.
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
ccrrtBranches :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (ValList Text))
ccrrtBranches = lens _codeCommitRepositoryRepositoryTriggerBranches (\s a -> s { _codeCommitRepositoryRepositoryTriggerBranches = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata
ccrrtCustomData :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtCustomData = lens _codeCommitRepositoryRepositoryTriggerCustomData (\s a -> s { _codeCommitRepositoryRepositoryTriggerCustomData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn
ccrrtDestinationArn :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtDestinationArn = lens _codeCommitRepositoryRepositoryTriggerDestinationArn (\s a -> s { _codeCommitRepositoryRepositoryTriggerDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events
ccrrtEvents :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (ValList Text))
ccrrtEvents = lens _codeCommitRepositoryRepositoryTriggerEvents (\s a -> s { _codeCommitRepositoryRepositoryTriggerEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name
ccrrtName :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtName = lens _codeCommitRepositoryRepositoryTriggerName (\s a -> s { _codeCommitRepositoryRepositoryTriggerName = a })
