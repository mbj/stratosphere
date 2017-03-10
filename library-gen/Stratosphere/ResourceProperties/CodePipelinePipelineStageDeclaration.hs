{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html

module Stratosphere.ResourceProperties.CodePipelinePipelineStageDeclaration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodePipelinePipelineActionDeclaration
import Stratosphere.ResourceProperties.CodePipelinePipelineBlockerDeclaration

-- | Full data type definition for CodePipelinePipelineStageDeclaration. See
-- 'codePipelinePipelineStageDeclaration' for a more convenient constructor.
data CodePipelinePipelineStageDeclaration =
  CodePipelinePipelineStageDeclaration
  { _codePipelinePipelineStageDeclarationActions :: [CodePipelinePipelineActionDeclaration]
  , _codePipelinePipelineStageDeclarationBlockers :: Maybe [CodePipelinePipelineBlockerDeclaration]
  , _codePipelinePipelineStageDeclarationName :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineStageDeclaration where
  toJSON CodePipelinePipelineStageDeclaration{..} =
    object $
    catMaybes
    [ Just ("Actions" .= _codePipelinePipelineStageDeclarationActions)
    , ("Blockers" .=) <$> _codePipelinePipelineStageDeclarationBlockers
    , Just ("Name" .= _codePipelinePipelineStageDeclarationName)
    ]

instance FromJSON CodePipelinePipelineStageDeclaration where
  parseJSON (Object obj) =
    CodePipelinePipelineStageDeclaration <$>
      obj .: "Actions" <*>
      obj .:? "Blockers" <*>
      obj .: "Name"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelinePipelineStageDeclaration' containing
-- required fields as arguments.
codePipelinePipelineStageDeclaration
  :: [CodePipelinePipelineActionDeclaration] -- ^ 'cppsdActions'
  -> Val Text -- ^ 'cppsdName'
  -> CodePipelinePipelineStageDeclaration
codePipelinePipelineStageDeclaration actionsarg namearg =
  CodePipelinePipelineStageDeclaration
  { _codePipelinePipelineStageDeclarationActions = actionsarg
  , _codePipelinePipelineStageDeclarationBlockers = Nothing
  , _codePipelinePipelineStageDeclarationName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-actions
cppsdActions :: Lens' CodePipelinePipelineStageDeclaration [CodePipelinePipelineActionDeclaration]
cppsdActions = lens _codePipelinePipelineStageDeclarationActions (\s a -> s { _codePipelinePipelineStageDeclarationActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-blockers
cppsdBlockers :: Lens' CodePipelinePipelineStageDeclaration (Maybe [CodePipelinePipelineBlockerDeclaration])
cppsdBlockers = lens _codePipelinePipelineStageDeclarationBlockers (\s a -> s { _codePipelinePipelineStageDeclarationBlockers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-name
cppsdName :: Lens' CodePipelinePipelineStageDeclaration (Val Text)
cppsdName = lens _codePipelinePipelineStageDeclarationName (\s a -> s { _codePipelinePipelineStageDeclarationName = a })
