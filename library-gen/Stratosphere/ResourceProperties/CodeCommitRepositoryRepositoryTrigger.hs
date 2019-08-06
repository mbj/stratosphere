{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html

module Stratosphere.ResourceProperties.CodeCommitRepositoryRepositoryTrigger where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeCommitRepositoryRepositoryTrigger. See
-- 'codeCommitRepositoryRepositoryTrigger' for a more convenient
-- constructor.
data CodeCommitRepositoryRepositoryTrigger =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches :: Maybe (ValList Text)
  , _codeCommitRepositoryRepositoryTriggerCustomData :: Maybe (Val Text)
  , _codeCommitRepositoryRepositoryTriggerDestinationArn :: Val Text
  , _codeCommitRepositoryRepositoryTriggerEvents :: ValList Text
  , _codeCommitRepositoryRepositoryTriggerName :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeCommitRepositoryRepositoryTrigger where
  toJSON CodeCommitRepositoryRepositoryTrigger{..} =
    object $
    catMaybes
    [ fmap (("Branches",) . toJSON) _codeCommitRepositoryRepositoryTriggerBranches
    , fmap (("CustomData",) . toJSON) _codeCommitRepositoryRepositoryTriggerCustomData
    , (Just . ("DestinationArn",) . toJSON) _codeCommitRepositoryRepositoryTriggerDestinationArn
    , (Just . ("Events",) . toJSON) _codeCommitRepositoryRepositoryTriggerEvents
    , (Just . ("Name",) . toJSON) _codeCommitRepositoryRepositoryTriggerName
    ]

-- | Constructor for 'CodeCommitRepositoryRepositoryTrigger' containing
-- required fields as arguments.
codeCommitRepositoryRepositoryTrigger
  :: Val Text -- ^ 'ccrrtDestinationArn'
  -> ValList Text -- ^ 'ccrrtEvents'
  -> Val Text -- ^ 'ccrrtName'
  -> CodeCommitRepositoryRepositoryTrigger
codeCommitRepositoryRepositoryTrigger destinationArnarg eventsarg namearg =
  CodeCommitRepositoryRepositoryTrigger
  { _codeCommitRepositoryRepositoryTriggerBranches = Nothing
  , _codeCommitRepositoryRepositoryTriggerCustomData = Nothing
  , _codeCommitRepositoryRepositoryTriggerDestinationArn = destinationArnarg
  , _codeCommitRepositoryRepositoryTriggerEvents = eventsarg
  , _codeCommitRepositoryRepositoryTriggerName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-branches
ccrrtBranches :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (ValList Text))
ccrrtBranches = lens _codeCommitRepositoryRepositoryTriggerBranches (\s a -> s { _codeCommitRepositoryRepositoryTriggerBranches = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata
ccrrtCustomData :: Lens' CodeCommitRepositoryRepositoryTrigger (Maybe (Val Text))
ccrrtCustomData = lens _codeCommitRepositoryRepositoryTriggerCustomData (\s a -> s { _codeCommitRepositoryRepositoryTriggerCustomData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn
ccrrtDestinationArn :: Lens' CodeCommitRepositoryRepositoryTrigger (Val Text)
ccrrtDestinationArn = lens _codeCommitRepositoryRepositoryTriggerDestinationArn (\s a -> s { _codeCommitRepositoryRepositoryTriggerDestinationArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events
ccrrtEvents :: Lens' CodeCommitRepositoryRepositoryTrigger (ValList Text)
ccrrtEvents = lens _codeCommitRepositoryRepositoryTriggerEvents (\s a -> s { _codeCommitRepositoryRepositoryTriggerEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name
ccrrtName :: Lens' CodeCommitRepositoryRepositoryTrigger (Val Text)
ccrrtName = lens _codeCommitRepositoryRepositoryTriggerName (\s a -> s { _codeCommitRepositoryRepositoryTriggerName = a })
